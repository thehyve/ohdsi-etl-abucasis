/*

*/
INSERT INTO cdm5.observation (
  person_id,
  observation_concept_id,
  observation_source_concept_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  obs_event_field_concept_id
)
  SELECT
    person.person_id                           AS person_id,

    -- 4306655 Death
    4306655                                    AS observation_concept_id,

    0                                          AS observation_source_concept_id,

    intermediate_death.death_date              AS observation_date,

    intermediate_death.death_date :: TIMESTAMP AS observation_datetime,

    intermediate_death.death_type_concept_id   AS observation_type_concept_id,

    0                                          AS obs_event_field_concept_id

  FROM source_intermediate.intermediate_death
    JOIN cdm5.person
      ON person.person_source_value = intermediate_death.numsipcod
;