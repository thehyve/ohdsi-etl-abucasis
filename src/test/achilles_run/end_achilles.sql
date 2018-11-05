-- Remove temporal columns created for avoiding compatibility errors when running Achilles
ALTER TABLE cdm5.drug_era
  DROP COLUMN drug_era_start_date cascade;

ALTER TABLE cdm5.drug_era
  DROP COLUMN drug_era_end_date cascade;

ALTER TABLE cdm5.condition_era
  DROP COLUMN condition_era_start_date cascade;

ALTER TABLE cdm5.condition_era
  DROP COLUMN condition_era_end_date cascade;
