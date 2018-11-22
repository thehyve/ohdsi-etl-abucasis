/*
Conditions that have been identified before the start of the study date
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

    coalesce(icd_map.target_concept_id, 0)                AS observation_concept_id,
    tb_diag_juntos.cod_diagnostico                        AS observation_source_value,
    coalesce(icd_map.source_concept_id, 0)                AS observation_source_concept_id,

    person.person_id                                      AS person_id,

    TO_DATE('2012-01-01', 'YYYY-MM-DD')                   AS observation_date,
    TO_DATE('2012-01-01', 'YYYY-MM-DD')::TIMESTAMP        AS observation_datetime,

    -- Clinical history and observation findings
    4094294                                               AS observation_type_concept_id,


    -- Yes
    4188539                                              AS value_as_concept_id,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM @source_schema.tb_diag_juntos
    INNER JOIN cdm5.person
      ON tb_diag_juntos.numsipcod = person.person_source_value
    LEFT JOIN cdm5.source_to_concept_map AS icd_map
      ON tb_diag_juntos.cod_diagnostico = icd_map.source_code AND icd_map.source_vocabulary_id = 'ABUCASIS_CIE9'
  WHERE origen IN ('C', 'M')
        AND tb_diag_juntos.fecha_inicio < TO_DATE('2012-01-01', 'YYYY-MM-DD');
