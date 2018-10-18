/*
Patient variables (BMI, Abdominal perimeter, etc)
*/
INSERT INTO measurement
(
	measurement_id,
	person_id,
	value_as_number,
	measurement_concept_id,
	measurement_source_value,
	measurement_date,
	unit_concept_id,
	unit_source_value,
	measurement_time,
	measurement_type_concept_id,
	operator_concept_id,
	value_as_concept_id,
	range_low,
	range_high,
	provider_id,
	visit_occurrence_id,
	measurement_source_concept_id,
	value_source_value
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	measurement_id,

	tb_variables.numsipcod	AS	person_id,

	tb_variables.valor_registrado	AS	value_as_number,

 -- [VALUE   COMMENT] Tba table 
	tb_variables.cod_variable_clinic	AS	measurement_concept_id,

 -- [VALUE   COMMENT] Tba table 
	tb_variables.cod_variable_clinic	AS	measurement_source_value,

	tb_variables.fecha_registro	AS	measurement_date,

	tb_variables.cod_ud_medida	AS	unit_concept_id,

	tb_variables.cod_ud_medida	AS	unit_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	measurement_time,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	measurement_type_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	operator_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	value_as_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	range_low,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	range_high,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	measurement_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	value_source_value

FROM tb_variables
;