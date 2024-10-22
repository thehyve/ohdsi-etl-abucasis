/**
Add source_concept_id to the source_to_concept_map mappings
*/
UPDATE @vocabulary_schema.source_to_concept_map
SET source_concept_id = concept_id
FROM (
       SELECT
         concept_id,
         concept_code,
         vocabulary_id
       FROM @vocabulary_schema.concept
       WHERE concept_id >= 2000000000
     ) concept
WHERE source_to_concept_map.source_code = concept.concept_code AND
      source_to_concept_map.source_vocabulary_id = concept.vocabulary_id
;