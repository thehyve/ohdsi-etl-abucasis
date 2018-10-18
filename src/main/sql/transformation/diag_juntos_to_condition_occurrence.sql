/*
Diagnoses (From hospitalization and ambulatory together
Derived from tb_antepers and tb_ante_cmbd)
*/
INSERT INTO condition_occurrence
(
	condition_occurrence_id,
	person_id,
	condition_start_date,
	condition_end_date,
	condition_concept_id,
	condition_source_value,
	condition_type_concept_id,
	stop_reason,
	provider_id,
	visit_occurrence_id,
	condition_source_concept_id
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	condition_occurrence_id,

	tb_diag_juntos.numsipcod	AS	person_id,

	tb_diag_juntos.fecha_inicio	AS	condition_start_date,

	tb_diag_juntos.fecha_fin	AS	condition_end_date,

 -- [VALUE   COMMENT] ICD9CM and ICD9PROC  
	tb_diag_juntos.cod_diagnostico	AS	condition_concept_id,

 -- [VALUE   COMMENT] ICD9CM and ICD9PROC  
	tb_diag_juntos.cod_diagnostico	AS	condition_source_value,

 -- [VALUE   COMMENT] empty = ambulatory care 1 = primary diagnosis in hospital 
 -- [MAPPING   LOGIC] 1 or empty - 44786627 Primary condition others - 38000245 problem list entry 
	tb_diag_juntos.orden	AS	condition_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	condition_source_concept_id

FROM tb_diag_juntos
;