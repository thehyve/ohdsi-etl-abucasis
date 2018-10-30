-- Solves the conflict for hospitalizations that ended up with death but the person
-- did not have a recorded death date
-- NOTE: this solves a conflict in the SYNTHETIC data. This shouldn't happen in the real ABUCASIS data

UPDATE cdm5.person
SET death_datetime = VIS.visit_end_datetime

FROM cdm5.person PER
JOIN cdm5.visit_occurrence VIS
         ON PER.person_id = VIS.person_id

WHERE VIS.discharge_to_concept_id = 4216643;


