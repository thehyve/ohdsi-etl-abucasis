WITH icd_source (concept_code, description, frequency, vocabulary_id) AS (
  SELECT
    cod_diagnostico,
    des_diagnostico,
    frequency,
    'CIE9'
  FROM source_vocab.cie9_with_frequency
  UNION
  SELECT
    cod_procedimiento,
    des_procedimiento,
    frequency,
    'CIE9p'
  FROM source_vocab.cie9p_with_frequency
), icd_target AS (
    -- If two concept_codes overlap, choose one concept in reversed alphabetical order: ICD9Proc, ICD9CM, ICD10PCS, ICD10CM
    -- The array_agg is a trick to select the concept_name and vocab_id belonging together (namely the first if sorting by vocab_id)
    SELECT
      concept_code,
      (array_agg(vocabulary_id order by vocabulary_id desc))[1] as vocabulary_id,
      (array_agg(concept_name order by vocabulary_id desc))[1] as concept_name,
      (array_agg(concept_id order by vocabulary_id desc))[1] as concept_id
    FROM cdm5.concept
    WHERE vocabulary_id IN ('ICD9CM', 'ICD9Proc', 'ICD10PCS', 'ICD10CM') AND invalid_reason IS NULL
    GROUP BY concept_code
), source_join_target AS (
    SELECT
      icd_source.vocabulary_id                                     AS vocabulary_id,
      icd_source.concept_code                                      AS source_code,
      icd_source.description                                       AS source_name,
      icd_target.concept_code                                      AS target_code,
      icd_target.concept_id                                        AS target_concept_id,
      icd_target.concept_name                                      AS target_name,
      icd_target.vocabulary_id                                     AS target_vocabulary_id,
      icd_source.frequency,
      CASE
      WHEN icd_source.concept_code IS NOT NULL AND icd_target.concept_code IS NULL
        THEN 'source_not_target'
      WHEN icd_target.concept_code IS NOT NULL AND icd_source.concept_code IS NULL
        THEN 'target_not_source'
      WHEN COALESCE(icd_source.concept_code, icd_target.concept_code) IS NOT NULL
        THEN 'intersection'
      END                                                          AS set_membership
    FROM icd_source
      FULL OUTER JOIN icd_target USING (concept_code) --, vocabulary_id)
)
/** The stat **/
-- SELECT
--   vocabulary_id,
--   set_membership,
--   count(*),
--   sum(frequency)
-- FROM source_join_target
-- GROUP BY vocabulary_id, set_membership
-- ORDER BY vocabulary_id, set_membership
-- ;
/** Per target vocabulary */
-- SELECT
--   vocabulary_id as source_vocabulary_id,
--   target_vocabulary_id,
--   set_membership,
--   count(*),
--   sum(frequency)
-- FROM source_join_target
-- GROUP BY vocabulary_id, target_vocabulary_id, set_membership
-- ORDER BY vocabulary_id, target_vocabulary_id, set_membership
-- ;
/** Source codes not in target **/
-- SELECT
--   source_code,
--   source_name,
--   frequency
-- FROM source_join_target
-- WHERE vocabulary_id = 'CIE9p' AND set_membership = 'source_not_target'
-- ORDER BY coalesce(frequency,0) DESC
-- ;
/** Target codes not in source **/
-- SELECT target_code, target_name
-- FROM source_join_target
-- WHERE vocabulary_id = 'CIE9' AND set_membership = 'target_not_source'
-- ;
/** No description (not in tba table) **/
-- SELECT
--   vocabulary_id,
--   count(*),
--   sum(frequency)
-- FROM source_join_target
-- WHERE source_code IS NOT NULL AND source_name IS NULL
-- GROUP BY vocabulary_id
-- -- ;
/** Sample to check cie9 with icd9 description **/
-- select source_code, frequency, source_name, target_code, target_name
-- from source_join_target
-- where frequency is not null
--       and source_name is not null
--       and set_membership = 'intersection'
--       and vocabulary_id = 'CIE9p'
-- order by frequency desc
-- limit 100
/** The codes that have no description and no mapping **/
-- SELECT
--   source_join_target.vocabulary_id,
--   source_code,
--   string_agg(concept.vocabulary_id, ', ') as potential_target_vocabs,
--   max(concept.concept_name) as potential_name,
--   CASE source_join_target.vocabulary_id
--   WHEN 'ICD9CM'
--     THEN round(frequency / 312000.0, 4)
--   WHEN 'ICD9Proc'
--     THEN round(frequency / 140000.0, 4)
--   END AS coverage
-- FROM source_join_target
--   left JOIN cdm5.concept ON source_code = concept_code
-- WHERE target_code IS NULL and source_name is null
-- GROUP BY source_code, source_join_target.vocabulary_id, source_name, frequency
-- ORDER BY vocabulary_id DESC, frequency DESC
-- ;
/** Mapping to other vocab than ICD9 **/
-- SELECT
--   source_join_target.vocabulary_id,
--   source_code,
--   source_name,
--   frequency,
--   string_agg(concept.vocabulary_id, ', ') as potential_target_vocabs
-- FROM source_join_target
--   left JOIN cdm5.concept ON source_code = concept_code
-- WHERE target_code IS NULL
-- GROUP BY source_code, source_join_target.vocabulary_id, source_name, frequency
-- ORDER BY coalesce(frequency, 0) DESC
-- ;
/** Codes with two or more mappings in ICD9/10 CM/P **/
-- SELECT
--   source_code,
--   vocabulary_id,
--   string_agg(target_vocabulary_id, ',' ORDER BY target_vocabulary_id DESC) AS target_vocabs,
--   count(*)
-- FROM source_join_target
-- WHERE source_code IS NOT NULL
-- GROUP BY source_code, vocabulary_id
-- HAVING count(*) > 1
-- ORDER BY count(*) DESC
-- ;
/** Usagi input **/
SELECT
  source_code,
  source_name,
  string_agg(concept_id_2::text, ';')           AS standard_concept_id,
  coalesce(frequency, 0) AS frequency
FROM source_join_target
  LEFT JOIN cdm5.concept_relationship
    ON concept_id_1 = target_concept_id AND relationship_id = 'Maps to'
WHERE vocabulary_id = 'CIE9'
  GROUP BY source_code, source_name, source_join_target.frequency
ORDER BY frequency DESC
;

select des_diagnostico is null as is_null, count(*), sum(frequency)
from source_vocab.cie9_with_frequency
group by des_diagnostico is null
;

select des_procedimiento is null as is_null, count(*), sum(frequency)
from source_vocab.cie9p_with_frequency
group by des_procedimiento is null
;