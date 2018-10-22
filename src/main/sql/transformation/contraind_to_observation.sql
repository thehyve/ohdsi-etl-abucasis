/**
Number of contra-indications per person, per month.
Two levels of severity of the contra-indications are mapped as a qualifier; Relative (not severe) and Absolute (Very Severe)
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
  unit_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    'contraind'                                          AS observation_source_value,

    -- TODO: create custom 2B+ source concept
    0                                                    AS observation_source_concept_id,

    cast(tb_contraind.ano_mes || '01' AS DATE)           AS observation_date,

    cast(tb_contraind.ano_mes || '01' AS TIMESTAMP)      AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Number of adverse events
    tb_contraind.num_contraindicaciones                  AS value_as_number,

    -- Is the contra-indicaction severe?
    CASE tb_contraind.tipo_contraindicacion
    WHEN 'R'
      THEN 764184 -- Not Severe
    WHEN 'A'
      THEN 763690 -- Very Severe
    ELSE NULL
    END                                                  AS qualifier_concept_id,

    tb_contraind.tipo_contraindicacion                   AS qualifier_source_value,

    -- times
    8524                                                 AS unit_concept_id

  FROM public.tb_contraind
    JOIN cdm5.person
      ON person.person_source_value = tb_contraind.numsipcod
    LEFT JOIN cdm5.source_to_concept_map
      ON source_to_concept_map.source_code = 'contraind' AND
         source_to_concept_map.source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
;