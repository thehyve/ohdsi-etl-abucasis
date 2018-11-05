-- Create columns
--Drug era
ALTER TABLE cdm5.drug_era
  ADD COLUMN drug_era_start_date date;
ALTER TABLE cdm5.drug_era
  ADD COLUMN drug_era_end_date date;
-- Condition era
ALTER TABLE cdm5.condition_era
    ADD COLUMN condition_era_start_date date;
ALTER TABLE cdm5.condition_era
  ADD COLUMN condition_era_end_date date;

-- Copy data from <>_start_datetime column to <>_start_date column (also for end_date)

-- Drug era
UPDATE cdm5.drug_era
SET drug_era_start_date = drug_era_start_datetime;
UPDATE cdm5.drug_era
SET drug_era_end_date = drug_era_end_datetime;
-- Condition era
UPDATE cdm5.condition_era
SET condition_era_start_date = condition_era_start_datetime;
UPDATE cdm5.condition_era
SET condition_era_end_date = condition_era_end_datetime;

