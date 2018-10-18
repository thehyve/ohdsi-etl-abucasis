/*
Hospitalization table (Derived table from Hospitalization
Only with Procedures)
*/
INSERT INTO procedure_occurrence
(
	procedure_occurrence_id,
	person_id,
	procedure_concept_id,
	procedure_date,
	procedure_type_concept_id,
	modifier_concept_id,
	quantity,
	provider_id,
	visit_occurrence_id,
	procedure_source_value,
	procedure_source_concept_id,
	qualifier_source_value
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	procedure_occurrence_id,

	tb_proc_cmbd.numsipcod	AS	person_id,

	tb_proc_cmbd.cie9p	AS	procedure_concept_id,

	tb_proc_cmbd.fecha_ingreso	AS	procedure_date,

 -- [MAPPING   LOGIC] 1 - primary procedure other - EHR procedure 
	tb_proc_cmbd.orden	AS	procedure_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	modifier_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	quantity,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	procedure_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	procedure_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	qualifier_source_value

FROM tb_proc_cmbd
;