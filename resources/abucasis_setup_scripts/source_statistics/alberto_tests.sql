SELECT visit_occurrence_id, visit_start_date, visit_end_date, discharge_to_concept_id, COUNT(*)
 FROM cdm5.visit_occurrence
--  WHERE cdm5.visit_occurrence.discharge_to_concept_id = 8844

 GROUP BY
          visit_occurrence_id, visit_start_date, visit_end_date, discharge_to_concept_id
 HAVING
     COUNT(*) > 1
;