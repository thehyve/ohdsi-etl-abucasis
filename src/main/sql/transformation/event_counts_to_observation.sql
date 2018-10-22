/*
Number of events from the following tables:
 - tb_aconadve
 - tb_alergias
 - tb_cex
 - tb_consultas_atp
 - tb_cie_atc
 - tb_duplicid
 - tb_urgencias
 - tb_interacc
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
  unit_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    event_counts.source_name                             AS observation_source_value,

    -- TODO: create custom 2B+ source concept
    0                                                    AS observation_source_concept_id,

    event_counts.date                                    AS observation_date,

    event_counts.date :: TIMESTAMP                       AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Number of adverse events
    event_counts.num_events                              AS value_as_number,

    -- times
    8524                                                 AS unit_concept_id

  FROM source_intermediate.event_counts
    JOIN cdm5.person
      ON person.person_source_value = event_counts.numsipcod
    LEFT JOIN cdm5.source_to_concept_map
      ON source_to_concept_map.source_code = event_counts.source_name AND
         source_to_concept_map.source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
;