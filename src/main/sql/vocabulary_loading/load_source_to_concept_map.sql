/* Remove existing source codes */
TRUNCATE TABLE cdm5.source_to_concept_map
;

CREATE TEMP TABLE tmp_vocabulary
  AS
    SELECT *
    FROM cdm5.vocabulary
WITH NO DATA;

COPY tmp_vocabulary FROM '@absPath/resources/mapping_tables/vocabulary.csv' WITH CSV HEADER;

-- Insert vocabularies in vocabulary table
-- If vocabulary already exists, update with the new information/metadata
INSERT INTO cdm5.vocabulary (
    vocabulary_id,
    vocabulary_name,
    vocabulary_reference,
    vocabulary_version,
    vocabulary_concept_id
    )
SELECT DISTINCT ON (vocabulary_id) *
FROM tmp_vocabulary
ON CONFLICT (vocabulary_id)
            DO UPDATE
              SET vocabulary_id   = excluded.vocabulary_id,
                vocabulary_name    = excluded.vocabulary_name,
                vocabulary_reference     = excluded.vocabulary_reference,
                vocabulary_version = excluded.vocabulary_version,
                vocabulary_concept_id   = excluded.vocabulary_concept_id
;


-- Mapping of name of table with info on number of events

CREATE TEMP TABLE tmp_source_to_concept_map
  AS
    SELECT *
    FROM cdm5.source_to_concept_map
WITH NO DATA;


COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_num_events.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_modalidad.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_variabl.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_ud_medidas.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_prest.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_prinactivo.csv' WITH CSV HEADER
;
COPY tmp_source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_cie9.csv' WITH CSV HEADER
;

-- Assign "ABUCASIS_UNKNOWN" as the target_vocabulary_id for all the mappings that are not assigned to any vocab
-- (solves a constraint conflict with codes mapped to 0)
UPDATE tmp_source_to_concept_map
SET target_vocabulary_id = 'ABUCASIS_UNKNOWN'
WHERE target_vocabulary_id IS NULL;

INSERT INTO cdm5.source_to_concept_map
  SELECT *
  FROM tmp_source_to_concept_map
ON CONFLICT DO NOTHING;