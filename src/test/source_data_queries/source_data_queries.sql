-- Queries to source data
--


-- Check:
-- 1) Observation period 2012
-- run independently
-- Rerun with EXPlain
-- Rerun with Explain analyse
-- do small modification at the begging

-- -- Count number of Rele --> prescrip --> tratamientos
-- SELECT COUNT(*)
--
--
-- WITH prescrip_per_trat AS (
-- 		SELECT
-- 			id_tratamiento,
-- 			count(*) AS number_of_prescriptions
-- 		FROM  @source_schema.tb_tratamientos
-- 			JOIN  @source_schema.tb_prescrip USING (id_tratamiento)
-- 		GROUP BY id_tratamiento
-- ), tratamiento_derived AS (
-- 		SELECT
-- 			id_tratamiento,
--
-- 			cod_prinactivo,
--
-- 			unidad_posologia,
--
-- 			CASE
-- 			-- cadencia = 0 is equivalent to 1 day rate
-- 			WHEN cadencia = 0
-- 				THEN unidades * 24 * coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento)
-- 			WHEN tipo_posologia = 'Horaria'
-- 				THEN unidades * (24 / cadencia) * coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento)
-- 			WHEN tipo_posologia = 'Diaria'
-- 				THEN unidades * (1 / cadencia) * coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento)
-- 			ELSE unidades
-- 			END                                                                          AS total_quantity,
--
-- 			coalesce(dias_tratamiento, fecha_fin_tratamiento - fecha_inicio_tratamiento) AS total_days_supply,
--
-- 			CASE tipo_posologia
-- 			WHEN 'Horaria'
-- 				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' hours'
-- 			WHEN 'Diaria'
-- 				THEN unidades :: TEXT || ' per ' || cadencia :: TEXT || ' days'
-- 			ELSE tipo_posologia
-- 			END                                                                          AS treatment_instruction,
--
-- 			number_of_prescriptions
--
-- 		--   ,tipo_posologia, unidades, cadencia, dias_tratamiento,  fecha_inicio_tratamiento, fecha_fin_tratamiento,
--
-- 		FROM  @source_schema.tb_tratamientos
-- 			LEFT JOIN prescrip_per_trat USING (id_tratamiento)
-- )
--
--

-- Number of linked drug prescriptions to tratamientos and rele
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Number of linked drug prescriptions to tratamientos and rele';
END
$$;

SELECT COUNT(*)
FROM public.tb_rele
		JOIN  public.tb_prescrip
			ON tb_rele.numreceta = tb_prescrip.numreceta
		JOIN public.tb_tratamientos
			ON tb_prescrip.id_tratamiento = tb_tratamientos.id_tratamiento
;

-- Number of linked drug prescriptions to tratamientos and rele with a valid numsipcod
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Number of linked drug prescriptions to tratamientos and rele with a valid numsipcod';
END
$$;

SELECT COUNT(*)
FROM public.tb_rele
			 JOIN  public.tb_prescrip
				 ON tb_rele.numreceta = tb_prescrip.numreceta
			 JOIN public.tb_tratamientos
				 ON tb_prescrip.id_tratamiento = tb_tratamientos.id_tratamiento
			 JOIN cdm5.person
				 ON person.person_source_value = tb_prescrip.numsipcod
;

-- Number of linked drug prescriptions to tratamientos and rele with a valid numsipcod and available semantic mapping
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Number of linked drug prescriptions to tratamientos and rele with a valid numsipcod and available semantic mapping';
END
$$;

SELECT COUNT(*)
FROM public.tb_rele
			 JOIN  public.tb_prescrip
				 ON tb_rele.numreceta = tb_prescrip.numreceta
			 JOIN public.tb_tratamientos
				 ON tb_prescrip.id_tratamiento = tb_tratamientos.id_tratamiento
			 JOIN cdm5.person
				 ON person.person_source_value = tb_prescrip.numsipcod
			 LEFT JOIN cdm5.source_to_concept_map AS ingredient_map
				 ON ingredient_map.source_code = tb_prescrip.cod_prinactivo
							AND ingredient_map.source_vocabulary_id = 'ABUCASIS_PRINACTIVO'
;

-- Count number of null drug prescriptions
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'number of null drug prescriptions';
END
$$;

SELECT COUNT(*)
FROM public.tb_rele
			WHERE tb_rele.numreceta IS NULL

;


-- Explain analyze original query rele_to_observation
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Explain analyze original query rele_to_observation';
END
$$;

EXPLAIN ANALYZE
SELECT
			 person.person_id                            AS person_id,

		-- Patient refuses to take medication
			 762823                                      AS observation_concept_id,

			 0                                           AS observation_source_concept_id,

			 tb_prescrip.fecha_prescripcion              AS observation_date,

			 tb_prescrip.fecha_prescripcion :: TIMESTAMP AS observation_datetime,

		-- Observation recorded from EHR
			 38000280                                    AS observation_type_concept_id,

			 ingredient_map.target_concept_id            AS value_as_concept_id,

			 tb_prescrip.cod_prinactivo                  AS value_as_string,

			 0                                           AS obs_event_field_concept_id

FROM  public.tb_prescrip
				LEFT JOIN  public.tb_rele
					ON tb_rele.numreceta = tb_prescrip.numreceta
				JOIN cdm5.person
					ON person.person_source_value = tb_prescrip.numsipcod
				LEFT JOIN cdm5.source_to_concept_map AS ingredient_map
					ON ingredient_map.source_code = tb_prescrip.cod_prinactivo
							 AND ingredient_map.source_vocabulary_id = 'ABUCASIS_PRINACTIVO'
WHERE tb_rele.numreceta IS NULL
;


-- Explain analyze modified query rele_to_observation
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Explain analyze modified query rele_to_observation';
END
$$;

EXPLAIN ANALYZE
WITH non_dispensed_drugs AS (
		SELECT *
		FROM public.tb_rele
		WHERE numreceta IS NULL
		)
SELECT
			 person.person_id                            AS person_id,

		-- Patient refuses to take medication
			 762823                                      AS observation_concept_id,

			 0                                           AS observation_source_concept_id,

			 tb_prescrip.fecha_prescripcion              AS observation_date,

			 tb_prescrip.fecha_prescripcion :: TIMESTAMP AS observation_datetime,

		-- Observation recorded from EHR
			 38000280                                    AS observation_type_concept_id,

			 ingredient_map.target_concept_id            AS value_as_concept_id,

			 tb_prescrip.cod_prinactivo                  AS value_as_string,

			 0                                           AS obs_event_field_concept_id

FROM  public.tb_prescrip
				LEFT JOIN  non_dispensed_drugs
					ON non_dispensed_drugs.numreceta = tb_prescrip.numreceta
				JOIN cdm5.person
					ON person.person_source_value = tb_prescrip.numsipcod
				LEFT JOIN cdm5.source_to_concept_map AS ingredient_map
					ON ingredient_map.source_code = tb_prescrip.cod_prinactivo
							 AND ingredient_map.source_vocabulary_id = 'ABUCASIS_PRINACTIVO'
;