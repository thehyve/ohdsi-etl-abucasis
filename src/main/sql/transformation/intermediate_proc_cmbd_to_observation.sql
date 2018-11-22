/*
Observations derived from the Procedure source table
(procedure concepts that are from the Observation domain)
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
  value_as_concept_id,
  obs_event_field_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    _concept_id                                          AS observation_concept_id,

    _source_value                                        AS observation_source_value,

    _source_concept_id                                   AS observation_source_concept_id,

    _date                                               AS observation_date,

    _datetime                                            AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Yes
    4188539                                              AS value_as_concept_id,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM source_intermediate.intermediate_proc_cmbd
      JOIN cdm5.person
        ON person.person_source_value = intermediate_proc_cmbd.person_source_value
      WHERE intermediate_proc_cmbd._date >= TO_DATE('2012-01-01', 'YYYY-MM-DD')
            AND
            intermediate_proc_cmbd.target_domain_id = 'Observation';