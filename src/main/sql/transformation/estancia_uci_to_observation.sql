/**
Number of days of stay in intensive care unit per patient.
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
  value_as_number,
  unit_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    'estancia_uci'                                       AS observation_source_value,

    coalesce(source_to_concept_map.source_concept_id, 0) AS observation_source_concept_id,

    tb_estancia_uci.fecha                                AS observation_date,

    cast(tb_estancia_uci.fecha AS TIMESTAMP)             AS observation_datetime,

    -- [Observation recorded from] EHR
    32817                                             AS observation_type_concept_id,

    -- Number of adverse events
    tb_estancia_uci.num_estancia_uci                     AS value_as_number,

    -- day
    8512                                                 AS unit_concept_id

  FROM  @source_schema.tb_estancia_uci
    JOIN @cdm_schema.person
      ON person.person_source_value = tb_estancia_uci.numsipcod
    LEFT JOIN @vocabulary_schema.source_to_concept_map
      ON source_to_concept_map.source_code = 'estancia_uci' AND
         source_to_concept_map.source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
    WHERE tb_estancia_uci.fecha >= TO_DATE((@first_date)::text, 'YYYYMMDD')

;