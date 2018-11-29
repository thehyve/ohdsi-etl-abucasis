-- Remove standardized tables
DROP TABLE IF EXISTS cdm5.attribute_definition CASCADE;
DROP TABLE IF EXISTS cdm5.cdm_source CASCADE;
DROP TABLE IF EXISTS cdm5.metadata CASCADE;
DROP TABLE IF EXISTS cdm5.person CASCADE;
DROP TABLE IF EXISTS cdm5.observation_period CASCADE;
DROP TABLE IF EXISTS cdm5.specimen CASCADE;
DROP TABLE IF EXISTS cdm5.visit_occurrence CASCADE;
DROP TABLE IF EXISTS cdm5.visit_detail CASCADE;
DROP TABLE IF EXISTS cdm5.procedure_occurrence CASCADE;
DROP TABLE IF EXISTS cdm5.drug_exposure CASCADE;
DROP TABLE IF EXISTS cdm5.device_exposure CASCADE;
DROP TABLE IF EXISTS cdm5.condition_occurrence CASCADE;
DROP TABLE IF EXISTS cdm5.measurement CASCADE;
DROP TABLE IF EXISTS cdm5.note CASCADE;
DROP TABLE IF EXISTS cdm5.note_nlp CASCADE;
DROP TABLE IF EXISTS cdm5.observation CASCADE;
DROP TABLE IF EXISTS cdm5.survey_conduct CASCADE;
DROP TABLE IF EXISTS cdm5.fact_relationship CASCADE;
DROP TABLE IF EXISTS cdm5.location CASCADE;
DROP TABLE IF EXISTS cdm5.location_history CASCADE;
DROP TABLE IF EXISTS cdm5.care_site CASCADE;
DROP TABLE IF EXISTS cdm5.provider CASCADE;
DROP TABLE IF EXISTS cdm5.payer_plan_period CASCADE;
DROP TABLE IF EXISTS cdm5.cost CASCADE;

-- Remove derived tables
DROP TABLE IF EXISTS cdm5.drug_era CASCADE;
DROP TABLE IF EXISTS cdm5.dose_era CASCADE;
DROP TABLE IF EXISTS cdm5.condition_era CASCADE;

-- To make CDMv6 backwards compatible with CDMv5 death table is also created in the wrapper
--    thus, we also need to remove it
DROP TABLE IF EXISTS cdm5.death CASCADE;