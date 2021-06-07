/*
Captures all drug dispensations from rele.
First, the medication specifics and quantity information is derived from tratamientos and prescrip.
This is combined with rele to get the individual exposures.
*/

-- Derive no. of prescriptions per treatment
WITH prescrip_per_trat AS (
		SELECT
			id_tratamiento,
			count(*)         AS number_of_prescriptions
		FROM  @source_schema.tb_tratamientos
			JOIN  @source_schema.tb_prescrip USING (id_tratamiento)
		-- Filter prescriptions that fall within a valid treatment date
		--   (solve conflict if treatment end date changed and prescriptions were already recorded in ABUCASIS)
 		WHERE tb_prescrip.fecha_prescripcion <= tb_tratamientos.fecha_fin_tratamiento
		-- Group prescriptions for each treatment
		GROUP BY id_tratamiento

-- Derive drug dispensations for each treatment via the drug dispensations and drug prescriptions table
), tratamiento_derived AS (
		SELECT
			id_tratamiento,

			cod_prinactivo,

			unidad_posologia,

			CASE
			-- cadencia = 0 is equivalent to 1 day rate
			WHEN cadencia = 0
				THEN unidades * (fecha_fin_tratamiento - fecha_inicio_tratamiento)
			WHEN tipo_posologia = 'Horaria'
				THEN unidades * (24 / cadencia) * (fecha_fin_tratamiento - fecha_inicio_tratamiento)
			WHEN tipo_posologia = 'Diaria'
				THEN unidades * (1 / cadencia) * (fecha_fin_tratamiento - fecha_inicio_tratamiento)
			ELSE unidades
			END                                                                          AS total_quantity,

			fecha_fin_tratamiento - fecha_inicio_tratamiento                             AS total_days_supply,

			CASE tipo_posologia
			WHEN 'Horaria'
				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' hours'
			WHEN 'Diaria'
				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' days'
			ELSE tipo_posologia
			END                                                                          AS treatment_instruction,

			number_of_prescriptions

		--   ,tipo_posologia, unidades, cadencia, dias_tratamiento,  fecha_inicio_tratamiento, fecha_fin_tratamiento,

		FROM  @source_schema.tb_tratamientos
			LEFT JOIN prescrip_per_trat USING (id_tratamiento)
			WHERE tb_tratamientos.fecha_fin_tratamiento IS NOT NULL
			      AND tb_tratamientos.fecha_fin_tratamiento >= tb_tratamientos.fecha_inicio_tratamiento
)
INSERT INTO cdm5.drug_exposure
(
	person_id,
  drug_concept_id,
  drug_source_value,
  drug_source_concept_id,
	quantity,
	days_supply,
	drug_exposure_start_date,
	drug_exposure_start_datetime,
	drug_exposure_end_date,
	drug_exposure_end_datetime,
	drug_type_concept_id,
	sig,
	refills,
	route_concept_id
)
	SELECT
		person.person_id                                                  AS person_id,

		-- for dose form use: tratamiento_derived.unidad_posologia
		coalesce(ingredient_map.target_concept_id, 0)                     AS drug_concept_id,

		tratamiento_derived.cod_prinactivo                                AS drug_source_value,

		coalesce(ingredient_map.source_concept_id, 0)                     AS drug_source_concept_id,

		total_quantity / number_of_prescriptions                          AS quantity,

		total_days_supply /
		number_of_prescriptions                                           AS days_supply,

    -- If fecha_dispensacion is null derive date from anomes_facturacion
		CASE
		WHEN tb_rele.fecha_dispensacion IS NOT NULL THEN tb_rele.fecha_dispensacion
		ELSE CONCAT(SUBSTRING(tb_rele.anomes_facturacion from 1 for 4),'-',SUBSTRING(tb_rele.anomes_facturacion from 5 for 6),'-01')::DATE
		END                                                               AS drug_exposure_start_date,

		CASE
		WHEN tb_rele.fecha_dispensacion IS NOT NULL THEN tb_rele.fecha_dispensacion::TIMESTAMP
		ELSE CONCAT(SUBSTRING(tb_rele.anomes_facturacion from 1 for 4),'-',SUBSTRING(tb_rele.anomes_facturacion from 5 for 6),'-01')::TIMESTAMP
		END                                                               AS drug_exposure_start_datetime,

		CASE
		WHEN tb_rele.fecha_dispensacion IS NOT NULL THEN tb_rele.fecha_dispensacion + (total_days_supply / number_of_prescriptions):: INTEGER
		ELSE CONCAT(SUBSTRING(tb_rele.anomes_facturacion from 1 for 4),'-',SUBSTRING(tb_rele.anomes_facturacion from 5 for 6),'-01')::DATE
		                    + (total_days_supply / number_of_prescriptions):: INTEGER
		END                                                               AS drug_exposure_end_date,

		CASE
		WHEN tb_rele.fecha_dispensacion IS NOT NULL THEN
		      cast(tb_rele.fecha_dispensacion + (total_days_supply / number_of_prescriptions):: INTEGER AS TIMESTAMP)
		ELSE
		    CAST(CONCAT(SUBSTRING(tb_rele.anomes_facturacion from 1 for 4),'-',SUBSTRING(tb_rele.anomes_facturacion from 5 for 6),'-01')::DATE
                + (5 / 10)::INTEGER AS TIMESTAMP)
		END                                                               AS drug_exposure_end_datetime,

		-- Dispensed in pharmacy
		38000175                                                          AS drug_type_concept_id,

		treatment_instruction                                             AS sig,

		-- If multiple dispensations for a treatment, give every next dispensation an incremental number
		-- The first dispensation has an empty refills value (NULL)
		nullif(row_number()
					 OVER (
						 PARTITION BY tratamiento_derived.id_tratamiento
						 ORDER BY tb_rele.fecha_dispensacion
						 ) - 1, 0)                                                AS refills,

		0                                                                 AS route_concept_id

	FROM  @source_schema.tb_rele
		JOIN  @source_schema.tb_prescrip
			ON tb_rele.numreceta = tb_prescrip.numreceta
		JOIN tratamiento_derived
			ON tb_prescrip.id_tratamiento = tratamiento_derived.id_tratamiento
		JOIN cdm5.person
			ON person.person_source_value = tb_prescrip.numsipcod
		LEFT JOIN @vocab_schema.source_to_concept_map AS ingredient_map
			ON ingredient_map.source_code = tratamiento_derived.cod_prinactivo
				 AND ingredient_map.source_vocabulary_id = 'ABUCASIS_PRINACTIVO'
     -- Filter criteria for treatments that did not have assigned any prescription (data quality filter)
     WHERE number_of_prescriptions != 0
            AND number_of_prescriptions IS NOT NULL
            AND total_days_supply != 0
            AND total_days_supply IS NOT NULL
            AND tb_rele.anomes_facturacion IS NOT NULL
	;
