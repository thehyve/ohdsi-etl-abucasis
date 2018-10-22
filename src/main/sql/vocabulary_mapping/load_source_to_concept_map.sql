/* Add the vocabulary ids */
DELETE FROM cdm5.vocabulary
WHERE vocabulary_concept_id = 0
;

COPY cdm5.vocabulary FROM '@absPath/resources/mapping_tables/vocabulary.csv' WITH CSV HEADER
;

/* Load new source to concept maps */
TRUNCATE TABLE cdm5.source_to_concept_map
;

-- Mapping of name of table with info on number of events
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_num_events.csv' WITH CSV HEADER
;

