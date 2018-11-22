/*
Procedures that have been identified before the start of the study date
This information is stored as an observation with observation_start_date as the study start date
because the data before that date may be incomplete
*/
INSERT INTO cdm5.observation
(
  observation_concept_id,
  observation_source_value,
  observation_source_concept_id,
  person_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_concept_id,
  obs_event_field_concept_id
)

  SELECT

    coalesce(code_map.concept_id_2, 0)                AS observation_concept_id,
    tb_proc_cmbd.cie9p                        AS observation_source_value,
    coalesce(icd9proc.concept_id, 0)                AS observation_source_concept_id,

    person.person_id                        AS person_id,

    TO_DATE('2012-01-01', 'YYYY-MM-DD')                   AS observation_date,
    TO_DATE('2012-01-01', 'YYYY-MM-DD')::TIMESTAMP        AS observation_datetime,



    -- Documentation of past medical history
    763082                                         AS observation_type_concept_id,

    -- Yes
    4188539                                              AS value_as_concept_id,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM  @source_schema.tb_proc_cmbd
    INNER JOIN cdm5.person
      ON person.person_source_value = tb_proc_cmbd.numsipcod
    LEFT JOIN cdm5.concept AS icd9proc
      ON icd9proc.concept_code = tb_proc_cmbd.cie9p AND icd9proc.vocabulary_id IN ('ICD9Proc', 'ICD10PCS')
    LEFT JOIN cdm5.concept_relationship AS code_map
      ON code_map.concept_id_1 = icd9proc.concept_id
         AND code_map.relationship_id = 'Maps to'
    WHERE tb_proc_cmbd.fecha_ingreso < TO_DATE('2012-01-01', 'YYYY-MM-DD');