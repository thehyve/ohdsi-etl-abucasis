/* Remove existing source codes */
TRUNCATE TABLE cdm5.source_to_concept_map
;

CREATE TEMP TABLE tmp_vocabulary
  AS
    SELECT *
    FROM cdm5.vocabulary
WITH NO DATA;

COPY tmp_vocabulary FROM '@absPath/resources/mapping_tables/vocabulary.csv' WITH CSV HEADER;

INSERT INTO cdm5.vocabulary
  SELECT DISTINCT ON (vocabulary_id) *
  FROM tmp_vocabulary
ON CONFLICT DO NOTHING;


-- Mapping of name of table with info on number of events
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_num_events.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_modalidad.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_variabl.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_ud_medidas.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_tip_prest.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_prinactivo.csv' WITH CSV HEADER
;
COPY cdm5.source_to_concept_map FROM '@absPath/resources/mapping_tables/abucasis_cie9.csv' WITH CSV HEADER
;
