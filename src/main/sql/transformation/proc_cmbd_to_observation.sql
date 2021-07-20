/*
Procedures that have been identified before the start of the study date
This information is stored as an observation with observation_start_date as the study start date
because the data before that date may be incomplete
*/
INSERT INTO @cdm_schema.observation
(
  observation_concept_id,
  observation_source_concept_id,
  person_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_concept_id,
  value_as_string,
  obs_event_field_concept_id
)

  SELECT
    -- Past history of procedure
    4215685                                           AS observation_concept_id,
    0                                                 AS observation_source_concept_id,

    person.person_id                                       AS person_id,

    TO_DATE((@first_date)::text, 'YYYY-MM-DD')                   AS observation_date,
    TO_DATE((@first_date)::text, 'YYYY-MM-DD')::TIMESTAMP        AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                               AS observation_type_concept_id,

    coalesce(code_map.concept_id_2, 0)                    AS value_as_concept_id,
    tb_proc_cmbd.cie9p                                    AS value_as_string,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM  @source_schema.tb_proc_cmbd
    INNER JOIN @cdm_schema.person
      ON person.person_source_value = tb_proc_cmbd.numsipcod
    LEFT JOIN @vocabulary_schema.concept AS icd9proc
      ON icd9proc.concept_code = tb_proc_cmbd.cie9p AND icd9proc.vocabulary_id IN ('ICD9Proc', 'ICD10PCS')
    LEFT JOIN @vocabulary_schema.concept_relationship AS code_map
      ON code_map.concept_id_1 = icd9proc.concept_id
         AND code_map.relationship_id = 'Maps to'
    WHERE tb_proc_cmbd.fecha_ingreso < TO_DATE((@first_date)::text, 'YYYY-MM-DD');