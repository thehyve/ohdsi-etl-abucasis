-- Create columns

ALTER TABLE cdm5.drug_era
ADD COLUMMN drug_era_start_date date;
ALTER TABLE cdm5.drug_era
  ADD COLUMMN drug_era_end_date date;
ALTER TABLE cdm5.condition_era
    ADD COLUMMN condition_era_start_date date;
ALTER TABLE cdm5.condition_era
  ADD COLUMMN condition_era_end_date date;

UPDATE cdm5.drug_era
SET drug_era_start_date = drug_era_start_datetime;
UPDATE cdm5.drug_era
SET drug_era_end_date = drug_era_end_datetime;

UPDATE cdm5.condition_era
SET condition_era_start_date = condition_era_start_datetime;

UPDATE cdm5.condition_era
SET condition_era_end_date = condition_era_end_datetime;

