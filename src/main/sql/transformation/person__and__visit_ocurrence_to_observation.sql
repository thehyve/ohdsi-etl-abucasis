/*

*/
INSERT INTO cdm5.observation (person_id,
                              observation_concept_id,
                              observation_source_concept_id,
                              observation_date,
                              observation_datetime,
                              observation_type_concept_id,
                              obs_event_field_concept_id)

SELECT visit_occurrence.person_id          AS person_id,
    -- 4306655 Death
       4306655                             AS observation_concept_id,
       0                                   AS observation_source_concept_id,
       CAST(person.death_datetime AS DATE) AS observation_date,
       person.death_datetime               AS observation_datetime,
       CASE
         WHEN visit_occurrence.discharge_to_concept_id = 4216643
                 THEN 44818516 -- EHR discharge status ‘Expired’
         ELSE 38000280 -- Observation recorded from EHR

       END                             AS observation_type_concept_id,
        0                             AS obs_event_field_concept_id


FROM cdm5.visit_occurrence
    JOIN cdm5.person ON visit_occurrence.person_id = person.person_id
    -- Patient could die during hospitalization or not during hospitalization
    WHERE (visit_occurrence.discharge_to_concept_id = 4216643 OR person.death_datetime IS NOT NULL)
;