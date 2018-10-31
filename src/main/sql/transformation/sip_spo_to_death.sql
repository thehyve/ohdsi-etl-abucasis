/*
This table is NOT part of CDM v6 BUT it has been implemented to make the CDM backwards compatible with CDM v5.
 */
INSERT INTO @cdm_schema.death
(
  person_id,
  death_date,
  death_datetime,
  death_type_concept_id
)

SELECT
  person_id AS person_id,
  observation_date AS death_date,
  observation_datetime  AS death_datetime,
  -- EHR discharge status ‘Expired’ OR Observation recorded from EHR
  observation_type_concept_id AS death_type_concept_id

FROM @cdm_schema.observation
WHERE observation_concept_id = 4306655
--select from observation table only the death occurences
;

