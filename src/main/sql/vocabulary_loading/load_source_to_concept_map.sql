/* Remove existing source codes */
TRUNCATE TABLE @vocabulary_schema.source_to_concept_map;

DROP TABLE @temp_schema.tmp_vocabulary;
CREATE TABLE @temp_schema.tmp_vocabulary
  AS
    SELECT *
    FROM @vocabulary_schema.vocabulary
WITH NO DATA;

-- Mapping of name of table with info on number of events
DROP TABLE @temp_schema.tmp_source_to_concept_map
;
CREATE TABLE @temp_schema.tmp_source_to_concept_map
AS
SELECT *
FROM @vocabulary_schema.source_to_concept_map
WITH NO DATA;