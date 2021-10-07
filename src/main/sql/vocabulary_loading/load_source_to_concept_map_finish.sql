-- Insert vocabularies in vocabulary table
-- If vocabulary already exists, update with the new information/metadata

DROP TABLE IF EXISTS @temp_schema.tmp_vocabulary;
CREATE TABLE @temp_schema.tmp_vocabulary
  AS
    SELECT *
    FROM @vocabulary_schema.vocabulary
WITH NO DATA;

UPDATE @temp_schema.tmp_vocabulary
SET vocabulary_reference = 'no_reference'
WHERE vocabulary_reference IS NULL;

INSERT INTO @vocabulary_schema.vocabulary (
    vocabulary_id,
    vocabulary_name,
    vocabulary_reference,
    vocabulary_version,
    vocabulary_concept_id
)
SELECT DISTINCT ON (vocabulary_id) *
FROM @temp_schema.tmp_vocabulary
    ON CONFLICT (vocabulary_id)
DO UPDATE
SET vocabulary_id   = excluded.vocabulary_id,
                vocabulary_name    = excluded.vocabulary_name,
                vocabulary_reference     = excluded.vocabulary_reference,
                vocabulary_version = excluded.vocabulary_version,
                vocabulary_concept_id   = excluded.vocabulary_concept_id
;


-- Assign "ABUCASIS_UNKNOWN" as the target_vocabulary_id for all the mappings that are not assigned to any vocab
-- (solves a constraint conflict with codes mapped to 0)
DROP TABLE IF EXISTS @temp_schema.tmp_source_to_concept_map;
CREATE TABLE @temp_schema.tmp_source_to_concept_map
  AS
    SELECT *
    FROM @vocabulary_schema.source_to_concept_map
WITH NO DATA;

UPDATE @temp_schema.tmp_source_to_concept_map
SET target_vocabulary_id = 'ABUCASIS_UNKNOWN'
WHERE target_vocabulary_id IS NULL;
UPDATE @temp_schema.tmp_source_to_concept_map
SET target_concept_id = 0
WHERE target_concept_id IS NULL;


INSERT INTO @vocabulary_schema.source_to_concept_map
SELECT *
FROM @temp_schema.tmp_source_to_concept_map
    ON CONFLICT DO NOTHING;