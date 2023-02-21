-- Editing of the elements that appeared with a wrong mapping in the "observation" table after dqd process.
-- Antonio Fernandez in database ABUCASIS for OMOP in ODHSI Project

-- Updating the values of the "observation" domain that had the concept_id set to zero.


update cdm5.observation set observation_concept_id = 
  case observation_source_value
    when 'F-SS-21' then 4059656  --> "Social security benefits (qualifier value) / Pension No Contributiva"
    when 'F-SS-10' then 4330024  --> "Social security benefits (qualifier value)"
  end 
  where observation_source_value in ('F-SS-21','F-SS-10');


--==================================================================================

-- Moving the records belonging to the domain "observation" to the domain "measurement / meas value".
insert into cdm5.measurement (person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_type_concept_id,value_as_concept_id, 
  provider_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id)
SELECT 
  person_id, 
  case observation_source_value
    when 'F-M01-2' then 45884465  --> Private health insurance
    when 'S-N-1'   then 45877986  --> Unknown
    when 'S-N-15'  then 36309847  --> Inmigrant
    when 'F-A05-6' then 45884465  --> Private health insurance
    when 'F-M01-1' then 45884465  --> Private health insurance
    when 'S-N-3'   then 46237351  --> Unable to pay (insurance benefits expired)
    when 'F-M06-2' then 45884465  --> Private health insurance
    when 'F-SS-5'  then 45884465  --> Private health insurance
    when 'F-A05-1' then 45884465  --> Private health insurance
    when 'F-SS-2'  then 45884465  --> Private health insurance
    when 'F-SS-8'  then 45884465  --> Private health insurance
    when 'F-SS-7'  then 45884465  --> Private health insurance
    when 'F-MP-1'  then 45884465  --> Private health insurance
    when 'F-M06-1' then 37079202  --> Other public insurance (not CHIP)
    when 'S-N-18'  then 45881114  --> Not Covered by Insurance
    when 'S-N-11'  then 1620667   --> Referral - Social Services
    when 'S-N-14'  then 45881114  --> Not Covered by Insurance
    when 'F-SS-22' then 45880539  --> Disabled
  end as measurement_concept_id,
  observation_date as measurement_date, 
  observation_datetime as measurement_datetime, 
  observation_type_concept_id as measurement_type_concept_id, 
  case observation_source_value
    when 'F-M01-2' then 40766241  --> Private health insurance
    when 'S-N-1'   then 0         --> Unknown
    when 'S-N-15'  then 36303558  --> Inmigrant
    when 'F-A05-6' then 40766241  --> Private health insurance
    when 'F-M01-1' then 40766241  --> Private health insurance
    when 'S-N-3'   then 0         --> Unable to pay (insurance benefits expired)
    when 'F-M06-2' then 40766241  --> Private health insurance
    when 'F-SS-5'  then 40766241  --> Private health insurance
    when 'F-A05-1' then 40766241  --> Private health insurance
    when 'F-SS-2'  then 40766241  --> Private health insurance
    when 'F-SS-8'  then 40766241  --> Private health insurance
    when 'F-SS-7'  then 40766241  --> Private health insurance
    when 'F-MP-1'  then 40766241  --> Private health insurance
    when 'F-M06-1' then 46235654  --> Other public insurance (not CHIP)
    when 'S-N-18'  then 40757236  --> Not Covered by Insurance
    when 'S-N-11'  then 1616986   --> Referral - Social Services
    when 'S-N-14'  then 40757236  --> Not Covered by Insurance
    when 'F-SS-22' then 1333197   --> Disabled
  end as value_as_concept_id,
  provider_id, 
  visit_occurrence_id, 
  visit_detail_id, 
  observation_source_value as measurement_source_value, 
  observation_source_concept_id as measurement_source_concept_id
  FROM cdm5.observation
  where observation_source_value in ('F-M01-2', 'S-N-1', 'S-N-15', 'F-A05-6', 'F-M01-1', 'S-N-3', 'F-M06-2', 'F-SS-5', 'F-A05-1', 'F-SS-2', 'F-SS-8', 'F-SS-7', 'F-MP-1', 'F-M06-1', 'S-N-18', 'S-N-11', 'S-N-14', 'F-SS-22');

-- Deleting records moved to the "measurement" domain 
-- Caution with the order of execution. Remove the "--" from the line below once the records have been created in the target table, because it cannot be undone.
-- delete from cdm5.observation where observation_source_value in ('F-M01-2', 'S-N-1', 'S-N-15', 'F-A05-6', 'F-M01-1', 'S-N-3', 'F-M06-2', 'F-SS-5', 'F-A05-1', 'F-SS-2', 'F-SS-8', 'F-SS-7', 'F-MP-1', 'F-M06-1', 'S-CS-30', 'S-N-18', 'S-N-11', 'S-N-14', 'F-SS-22');


