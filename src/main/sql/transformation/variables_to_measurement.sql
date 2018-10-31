/*
Patient variables (BMI, Abdominal perimeter, etc)
*/
INSERT INTO @cdm_schema.measurement
(
  person_id,
  value_as_number,
  measurement_concept_id,
  measurement_source_concept_id,
  measurement_source_value,
  measurement_date,
  measurement_datetime,
  unit_concept_id,
  unit_source_value,
  measurement_type_concept_id
)

  SELECT
    person.person_id                    AS person_id,
    valor_registrado                    AS value_as_number,
    coalesce(var.target_concept_id, 0)  AS measurement_concept_id,
    coalesce(var.source_concept_id, 0)  AS measurement_source_concept_id,
    cod_variable_clinic                 AS measurement_source_value,
    fecha_registro                      AS measurement_date,
    fecha_registro :: TIMESTAMP         AS measurement_datetime,
    coalesce(unit.target_concept_id, 0) AS unit_concept_id,
    coalesce(unit.source_concept_id, 0) AS unit_source_value,
    44818701                            AS measurement_type_concept_id
  FROM  @source_schema.tb_variables
    JOIN @cdm_schema.person ON numsipcod = person.person_source_value
    --only patients also present in person table to be included
    LEFT JOIN @cdm_schema.source_to_concept_map var
      ON cod_variable_clinic = var.source_code AND var.source_vocabulary_id = 'ABUCASIS_TIP_VARIABL'
    LEFT JOIN @cdm_schema.source_to_concept_map unit
      ON cod_ud_medida = unit.source_code AND unit.source_vocabulary_id = 'ABUCASIS_UD_MEDIDAS'
  WHERE cod_variable_clinic NOT LIKE '-1'
;