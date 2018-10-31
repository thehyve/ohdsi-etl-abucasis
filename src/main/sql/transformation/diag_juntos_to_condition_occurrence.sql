/*
Diagnoses (From hospitalization and ambulatory together
Derived from tb_antepers and tb_ante_cmbd)
*/
INSERT INTO @cdm_schema.condition_occurrence
(
	person_id,
	condition_start_date,
	condition_start_datetime,
	condition_end_date,
	condition_end_datetime,
	condition_concept_id,
	condition_source_value,
	condition_source_concept_id,
	condition_type_concept_id,
	condition_status_concept_id,
	visit_occurrence_id
)

SELECT
 	person.person_id AS person_id,
	tb_diag_juntos.fecha_inicio	AS condition_start_date,
	tb_diag_juntos.fecha_inicio :: TIMESTAMP AS condition_start_datetime,
	tb_diag_juntos.fecha_fin	AS condition_end_date,
	tb_diag_juntos.fecha_fin :: TIMESTAMP AS condition_end_datetime,
  coalesce(icd9cm.concept_id, 0) AS condition_concept_id,
 	tb_diag_juntos.cod_diagnostico AS condition_source_value,
 	coalesce(code_map.concept_id_1, 0) AS condition_source_concept_id,
	CASE WHEN tb_diag_juntos.orden= 1 OR tb_diag_juntos.orden IS NULL
	    -- primary condition
      THEN 44786630
      -- secondary condition
      ELSE 44786631 END AS condition_type_concept_id,
  4309119 AS condition_status_concept_id, -- Clinical diagnosis
	intermediate_table_visit_ocurrence.visit_ocurrence_id AS visit_occurrence_id

FROM tb_diag_juntos
--link to visit_occurence_id on patient id, start date and origin of data via intermediate table
LEFT JOIN source_intermediate.intermediate_table_visit_ocurrence
         ON (tb_diag_juntos.numsipcod = intermediate_table_visit_ocurrence.numsipcod
               AND
             tb_diag_juntos.fecha_inicio = intermediate_table_visit_ocurrence.date
              AND
              tb_diag_juntos.origen = intermediate_table_visit_ocurrence.origin)
INNER JOIN @cdm_schema.person
      ON tb_diag_juntos.numsipcod = person.person_source_value
LEFT JOIN @cdm_schema.concept AS icd9cm
      ON icd9cm.concept_code = tb_diag_juntos.cod_diagnostico AND icd9cm.vocabulary_id in ('ICD9CM', 'ICD10CM')
    LEFT JOIN @cdm_schema.concept_relationship AS code_map
     ON code_map.concept_id_1 = icd9cm.concept_id AND code_map.relationship_id = 'Maps to'
WHERE origen in ('C','M')
;
