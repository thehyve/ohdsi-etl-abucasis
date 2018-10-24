/*
Clinical measurements
*/
INSERT INTO cdm5.measurement
(
	measurement_id,
	person_id,
	value_as_number,
	measurement_concept_id,
	measurement_source_concept_id,
	measurement_source_value,
	measurement_date,
	unit_concept_id,
	unit_source_value,
	measurement_time,
	measurement_type_concept_id
)
;
SELECT
 	NULL	AS	measurement_id,
	person.person_id AS person_id,
	valor_registrado AS value_as_number,
 	cod_prestacion	AS measurement_concept_id,
 	cod_prestacion	AS measurement_source_concept_id,
 	cod_prestacion AS measurement_source_value,
	fecha_registro	AS	measurement_date, --TODO: check date type
	fecha_registro :: TIMESTAMP AS measurement_datetime,
 	cod_ud_medida AS unit_concept_id,
 	cod_ud_medida	AS	unit_source_value,
  44818702 AS measurement_type_concept_id
FROM public.tb_prestaci
  LEFT JOIN cdm5.person ON numsipcod = person.person_source_value
  --TODO: link to concept_id table on cod_prestacion
  --TODO: link to source_conept_mapping on cod_ud_medida
WHERE cod_prestacion NOT LIKE '-1'
;