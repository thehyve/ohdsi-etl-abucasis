-- Rule_id 12 analysis_id 400
SELECT analysis_name, count_value, concept_id, concept_name, domain_id, vocabulary_id, concept_class_id, standard_concept, concept_code
FROM cdm5results.ACHILLES_results or1
INNER JOIN cdm5results.ACHILLES_analysis oa1
  ON or1.analysis_id = oa1.analysis_id
INNER JOIN cdm5.concept c1
  ON or1.stratum_1 = CAST(c1.concept_id AS VARCHAR(19))
WHERE or1.analysis_id IN (
    400,
    1000
    )
  AND or1.stratum_1 IS NOT NULL
  AND c1.concept_id <> 0
  AND lower(c1.domain_id) NOT IN ('condition','condition/drug', 'condition/meas', 'condition/obs', 'condition/procedure')


UNION

-- Rule_id 14 analysis_id 600
SELECT analysis_name, count_value, concept_id, concept_name, domain_id, vocabulary_id, concept_class_id, standard_concept, concept_code
  FROM cdm5results.ACHILLES_results or1
  INNER JOIN cdm5results.ACHILLES_analysis oa1
    ON or1.analysis_id = oa1.analysis_id
  INNER JOIN cdm5.concept c1
    ON or1.stratum_1 = CAST(c1.concept_id AS VARCHAR(19))
  WHERE or1.analysis_id IN (600)
    AND or1.stratum_1 IS NOT NULL
    AND c1.concept_id <> 0
    AND lower(c1.domain_id) NOT IN ('procedure','condition/procedure', 'device/procedure', 'drug/procedure', 'obs/procedure')


UNION

-- Rule_id 13 analysis_id 700
SELECT analysis_name, count_value, concept_id, concept_name, domain_id, vocabulary_id, concept_class_id, standard_concept, concept_code
  FROM cdm5results.ACHILLES_results or1
  INNER JOIN cdm5results.ACHILLES_analysis oa1
    ON or1.analysis_id = oa1.analysis_id
  INNER JOIN cdm5.concept c1
    ON or1.stratum_1 = CAST(c1.concept_id AS VARCHAR(19))
  WHERE or1.analysis_id IN (
      700,
      900
      )
    AND or1.stratum_1 IS NOT NULL
    AND c1.concept_id <> 0
    AND lower(c1.domain_id) NOT IN ('drug','condition/drug', 'device/drug', 'drug/measurement', 'drug/obs', 'drug/procedure');



-- Rule_id 2 analysis_id 715
SELECT *
FROM cdm5results.ACHILLES_results_dist ord1
INNER JOIN cdm5results.ACHILLES_analysis oa1
  ON ord1.analysis_id = oa1.analysis_id
WHERE ord1.analysis_id IN (715
    )
  AND ord1.min_value < 0
;