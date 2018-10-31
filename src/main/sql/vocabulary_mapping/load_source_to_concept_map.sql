/* Remove existing source codes */
TRUNCATE TABLE @cdm_schema.source_to_concept_map
;

DELETE FROM @cdm_schema.vocabulary
WHERE vocabulary_concept_id = 0
;

COPY @cdm_schema.vocabulary FROM '@absPath/resources/mapping_tables/vocabulary.csv' WITH CSV HEADER
;

-- Mapping of name of table with info on number of events
COPY @cdm_schema.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_num_events.csv' WITH CSV HEADER
;
COPY @cdm_schema.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_modalidad.csv' WITH CSV HEADER
;
COPY @cdm_schema.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_variabl.csv' WITH CSV HEADER
;
COPY @cdm_schema.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_ud_medidas.csv' WITH CSV HEADER
;
COPY @cdm_schema.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_prest.csv' WITH CSV HEADER
;

