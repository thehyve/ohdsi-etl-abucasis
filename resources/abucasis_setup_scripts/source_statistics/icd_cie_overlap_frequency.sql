WITH icd_source (concept_code, description, frequency, vocabulary_id) AS (
  SELECT
    cod_diagnostico,
    des_diagnostico,
    frequency,
    'ICD9CM'
  FROM source_vocab.cie9_with_frequency
  UNION
  SELECT
    cod_procedimiento,
    des_procedimiento,
    frequency,
    'ICD9Proc'
  FROM source_vocab.cie9p_with_frequency
), icd_target AS (
    SELECT *
    FROM cdm5.concept
    WHERE vocabulary_id IN ('ICD9CM', 'ICD9Proc', 'ICD10PCS', 'ICD10CM')
), source_join_target AS (
    SELECT
      icd_source.vocabulary_id                                     AS vocabulary_id,
      icd_source.concept_code                                      AS source_code,
      icd_source.description                                       AS source_name,
      icd_target.concept_code                                      AS target_code,
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
SELECT
  vocabulary_id,
  set_membership,
  count(*),
  sum(frequency)
FROM source_join_target
GROUP BY vocabulary_id, set_membership
ORDER BY vocabulary_id, set_membership
;
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
-- WHERE vocabulary_id = 'ICD9Proc' AND set_membership = 'source_not_target'
-- ORDER BY coalesce(frequency,0) DESC
-- ;
/** Target codes not in source **/
-- SELECT target_code, target_name
-- FROM source_join_target
-- WHERE vocabulary_id = 'ICD9CM' AND set_membership = 'target_not_source'
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
--       and vocabulary_id = 'ICD9Proc' -- 'ICD9CM' --
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

select des_diagnostico is null as is_null, count(*), sum(frequency)
from source_vocab.cie9_with_frequency
group by des_diagnostico is null
;

select des_procedimiento is null as is_null, count(*), sum(frequency)
from source_vocab.cie9p_with_frequency
group by des_procedimiento is null
;