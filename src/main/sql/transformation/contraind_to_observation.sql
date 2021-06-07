/**
Number of contra-indications per person, per month.
Two levels of severity of the contra-indications. These mapped as a qualifier;
Relative (not severe) and Absolute (Severe)
 */
INSERT INTO cdm5.observation
(
  person_id,
  observation_concept_id,
  observation_source_value,
  observation_source_concept_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_number,
  qualifier_concept_id,
  qualifier_source_value,
  unit_concept_id,
  obs_event_field_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    'contraind'                                          AS observation_source_value,

    coalesce(source_to_concept_map.source_concept_id, 0) AS observation_source_concept_id,

    cast(tb_contraind.ano_mes || '01' AS DATE)           AS observation_date,

    cast(tb_contraind.ano_mes || '01' AS TIMESTAMP)      AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Number of adverse events
    tb_contraind.num_contraindicaciones                  AS value_as_number,

    -- Severity of the contra-indication
    CASE tb_contraind.tipo_contraindicacion
    WHEN 'R'
      THEN 764184 -- Not Severe
    WHEN 'A'
      THEN 4087703 -- Severe
    ELSE NULL
    END                                                  AS qualifier_concept_id,

    tb_contraind.tipo_contraindicacion                   AS qualifier_source_value,

    -- times
    8524                                                 AS unit_concept_id,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM  @source_schema.tb_contraind
    JOIN cdm5.person
      ON person.person_source_value = tb_contraind.numsipcod
    LEFT JOIN @vocab_schema.source_to_concept_map
      ON source_to_concept_map.source_code = 'contraind' AND
         source_to_concept_map.source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
    WHERE cast(tb_contraind.ano_mes || '01' AS DATE) >= TO_DATE('2012-01-01', 'YYYY-MM-DD')
;