-- Queries to source data
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


-- Evaluate how many rows are outside the observation period
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows ante_cmbd are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_ante_cmbd
WHERE tb_ante_cmbd.fecha_ingreso < TO_DATE('2012-01-01', 'YYYY-MM-DD');


SELECT COUNT(*)
FROM public.tb_ante_cmbd
WHERE tb_ante_cmbd.fecha_alta > TO_DATE('2016-12-31', 'YYYY-MM-DD');

DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows morbilid are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_morbilid
WHERE tb_morbilid.fecha_inicio < TO_DATE('2012-01-01', 'YYYY-MM-DD');


SELECT COUNT(*)
FROM public.tb_morbilid
WHERE tb_morbilid.fecha_inicio > TO_DATE('2016-12-31', 'YYYY-MM-DD');

DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows diag_juntos are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_diag_juntos
WHERE tb_diag_juntos.fecha_inicio < TO_DATE('2012-01-01', 'YYYY-MM-DD')
	AND origen IN ('C', 'M');

SELECT COUNT(*)
FROM public.tb_diag_juntos
WHERE tb_diag_juntos.fecha_fin > TO_DATE('2016-12-31', 'YYYY-MM-DD')
	AND origen IN ('C', 'M');

DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows proc_cmbd are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_proc_cmbd
WHERE tb_proc_cmbd.fecha_ingreso < TO_DATE('2012-01-01', 'YYYY-MM-DD');

SELECT COUNT(*)
FROM public.tb_proc_cmbd
WHERE tb_proc_cmbd.fecha_ingreso > TO_DATE('2016-12-31', 'YYYY-MM-DD');

DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows tb_sip_spo_resto_2015 are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_sip_spo_resto_2015
WHERE tb_sip_spo_resto_2015.fecha_corte < TO_DATE('2012-01-01', 'YYYY-MM-DD');

SELECT COUNT(*)
FROM public.tb_sip_spo_resto_2015
WHERE tb_sip_spo_resto_2015.fecha_corte > TO_DATE('2016-12-31', 'YYYY-MM-DD');


DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows tb_contraind are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_contraind
WHERE cast(tb_contraind.ano_mes || '01' AS DATE) < TO_DATE('2012-01-01', 'YYYY-MM-DD');

SELECT COUNT(*)
FROM public.tb_contraind
WHERE cast(tb_contraind.ano_mes || '01' AS DATE) > TO_DATE('2016-12-31', 'YYYY-MM-DD');


DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows tb_interacc are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_interacc
WHERE  cast(tb_interacc.ano_mes || '01' AS DATE) < TO_DATE('2012-01-01', 'YYYY-MM-DD');

SELECT COUNT(*)
FROM public.tb_interacc
WHERE  cast(tb_interacc.ano_mes || '01' AS DATE) > TO_DATE('2016-12-31', 'YYYY-MM-DD');


DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Evaluate how many rows tb_prescrip are before or after the observation period';
END
$$;

SELECT COUNT(*)
FROM public.tb_prescrip
WHERE  fecha_prescripcion < TO_DATE('2012-01-01', 'YYYY-MM-DD');

SELECT COUNT(*)
FROM public.tb_prescrip
WHERE  fecha_prescripcion > TO_DATE('2016-12-31', 'YYYY-MM-DD');


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

