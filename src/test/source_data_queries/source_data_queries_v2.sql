-- Queries to source data
--
DO language plpgsql $$
BEGIN
	RAISE NOTICE 'Explain  original query rele_to_observation';
END
$$;


EXPLAIN
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

EXPLAIN
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

