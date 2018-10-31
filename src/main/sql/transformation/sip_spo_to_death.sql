/*

 */
INSERT INTO cdm5.death
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
  observation_type_concept_id AS death_type_concept_id
FROM cdm5.observation
WHERE observation_concept_id = 4306655
--select from observation table only the death occurences
;

