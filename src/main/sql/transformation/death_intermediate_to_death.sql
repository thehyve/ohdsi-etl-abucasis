/*
This table is NOT part of CDM v6 BUT it has been implemented to make the CDM backwards compatible with CDM v5.
 */
INSERT INTO cdm5.death
(
  person_id,
  death_date,
  death_datetime,
  death_type_concept_id
)
  SELECT
    person.person_id                           AS person_id,
    intermediate_death.death_date              AS death_date,
    intermediate_death.death_date :: TIMESTAMP AS death_datetime,
    intermediate_death.death_type_concept_id   AS death_type_concept_id
  FROM source_intermediate.intermediate_death
    JOIN cdm5.person
      ON person.person_source_value = intermediate_death.numsipcod
;
