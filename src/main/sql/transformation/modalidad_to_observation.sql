/*
Social-economic status (modalidad) as observation from the 2015 demographics.
*/
INSERT INTO @cdm_schema.observation
(
  person_id,
  observation_concept_id,
  observation_source_value,
  observation_source_concept_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    tb_sip_spo_resto_2015.cod_modalidad                  AS observation_source_value,

    coalesce(source_to_concept_map.source_concept_id, 0) AS observation_source_concept_id,

    tb_sip_spo_resto_2015.fecha_corte                    AS observation_date,

    tb_sip_spo_resto_2015.fecha_corte :: TIMESTAMP       AS observation_datetime,

    -- [Observation recorded from] EHR
    32817                                             AS observation_type_concept_id,

    -- Yes
    4188539                                              AS value_as_concept_id

  FROM  @source_schema.tb_sip_spo_resto_2015
    JOIN @cdm_schema.person
      ON person.person_source_value = tb_sip_spo_resto_2015.numsipcod
    LEFT JOIN @vocabulary_schema.source_to_concept_map
      ON source_code = cod_modalidad AND source_vocabulary_id = 'ABUCASIS_MODALIDAD'
    WHERE tb_sip_spo_resto_2015.fecha_corte >= TO_DATE((@first_date)::text, 'YYYYMMDD')

;