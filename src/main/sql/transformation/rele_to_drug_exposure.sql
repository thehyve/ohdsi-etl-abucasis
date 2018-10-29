/*
Captures all drug dispensations from rele.
First, the medication specifics and quantity information is derived from tratamientos and prescrip.
This is combined with rele to get the individual exposures.
*/
WITH prescrip_per_trat AS (
		SELECT
			id_tratamiento,
			count(*) AS number_of_prescriptions
		FROM public.tb_tratamientos
			JOIN public.tb_prescrip USING (id_tratamiento)
		GROUP BY id_tratamiento
), tratamiento_derived AS (
		SELECT
			id_tratamiento,

			cod_prinactivo,

			unidad_posologia,

			CASE
			WHEN cadencia = 0
				THEN unidades
			WHEN tipo_posologia = 'Horaria'
				THEN unidades * (24 / cadencia) * coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento)
			WHEN tipo_posologia = 'Diaria'
				THEN unidades * (1 / cadencia) * coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento)
			ELSE unidades
			END                                                                          AS total_quantity,

			coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento) AS total_days_supply,

			CASE tipo_posologia
			WHEN 'Horaria'
				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' hours'
			WHEN 'Diaria'
				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' days'
			ELSE tipo_posologia
			END                                                                          AS treatment_instruction,

			number_of_prescriptions

		--   ,tipo_posologia, unidades, cadencia, dias_tratamiento,  fecha_inicio_tratamiento, fecha_fin_tratamiento,

		FROM public.tb_tratamientos
			LEFT JOIN prescrip_per_trat USING (id_tratamiento)
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

		-- TODO: map to RxNorm
		-- for dose form use: tratamiento_derived.unidad_posologia
		0                                                                 AS drug_concept_id,

		tratamiento_derived.cod_prinactivo                                AS drug_source_value,

		-- TODO: map to 2B+ concept
		0                                                                 AS drug_source_concept_id,

		total_quantity / number_of_prescriptions                          AS quantity,

		total_days_supply /
		number_of_prescriptions                                           AS days_supply,

		tb_rele.fecha_dispensacion                                        AS drug_exposure_start_date,
		tb_rele.fecha_dispensacion :: TIMESTAMP                           AS drug_exposure_start_datetime,

		tb_rele.fecha_dispensacion + (total_days_supply /
																	number_of_prescriptions) :: INTEGER AS drug_exposure_end_date,
		cast(tb_rele.fecha_dispensacion +
				 (total_days_supply / number_of_prescriptions) :: INTEGER
				 AS
				 TIMESTAMP)                                                   AS drug_exposure_end_date,

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

	FROM public.tb_rele
		JOIN public.tb_prescrip
      ON tb_rele.numreceta = tb_prescrip.numreceta
		JOIN tratamiento_derived
      ON tb_prescrip.id_tratamiento = tratamiento_derived.id_tratamiento
		JOIN cdm5.person
			ON person.person_source_value = tb_prescrip.numsipcod
;
