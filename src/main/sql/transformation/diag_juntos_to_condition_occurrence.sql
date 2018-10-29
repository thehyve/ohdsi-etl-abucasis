/*
Diagnoses (From hospitalization and ambulatory together
Derived from tb_antepers and tb_ante_cmbd)
*/
INSERT INTO cdm5.condition_occurrence
(
	person_id,
	condition_start_date,
	condition_end_date,
	condition_concept_id,
	condition_source_value,
	condition_type_concept_id,
	condition_source_concept_id
)
;
SELECT
 	person.person_id AS person_id,
	tb_diag_juntos.fecha_inicio	AS	condition_start_date,
	tb_diag_juntos.fecha_inicio :: TIMESTAMP AS condition_start_datetime,
	tb_diag_juntos.fecha_fin	AS	condition_end_date,
	tb_diag_juntos.fecha_fin :: TIMESTAMP AS condition_end_datetime,
 -- [VALUE   COMMENT] ICD9CM and ICD9PROC
	--icd9cm.concept_code AS condition_concept_id,
 -- [VALUE   COMMENT] ICD9CM and ICD9PROC
	tb_diag_juntos.cod_diagnostico	AS	condition_source_value,
	tb_diag_juntos.orden	AS	condition_type_concept_id,
	NULL	AS	visit_occurrence_id,
	NULL	AS	condition_source_concept_id
FROM tb_diag_juntos
JOIN cdm5.person
      ON numsipcod = person.person_source_value
--LEFT JOIN cdm5.concept AS icd9cm
--      ON icd9cm.concept_code = tb_diag_juntos.cod_diagnostico AND icd9cm.vocabulary_id = 'ICD9CM'
--    LEFT JOIN cdm5.concept_relationship AS code_map
--     ON code_map.concept_id_1 = icd9cm.concept_id
--         AND code_map.relationship_id = 'Maps to'
WHERE origen in ('C','M')
--TODO: link to ICD9 codes, correct and complete the select statement
;
