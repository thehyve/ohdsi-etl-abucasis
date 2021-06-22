/*
Patient variables (BMI, Abdominal perimeter, etc)
*/
INSERT INTO @cdm_schema.measurement
(
  person_id,
  measurement_concept_id,
  measurement_source_concept_id,
  measurement_source_value,
  measurement_date,
  measurement_datetime,
  value_as_number,
  value_as_concept_id,
  value_source_value,
  unit_concept_id,
  unit_source_value,
  measurement_type_concept_id
)
  SELECT
    person.person_id                    AS person_id,
    coalesce(var.target_concept_id, 0)  AS measurement_concept_id,
    coalesce(var.source_concept_id, 0)  AS measurement_source_concept_id,
    cod_variable_clinic                 AS measurement_source_value,
    fecha_registro                      AS measurement_date,
    fecha_registro :: TIMESTAMP         AS measurement_datetime,

    CASE
        WHEN cod_variable_clinic IN ('DIFITOMA','REQENR','CP','CAIULTAN','VALOCUMP','PACIREFA','DIREC','NOM_APE','INFOTRCV',
                              'CONSTABA','VALOADVE','REVIPIES','ENTR_TSO','CONSEJER','CONSDIET','PROB_1','PROB_2',
                              'PROB_3','PROB_4','PROB_5','PROB_6','NOM_APE')
        THEN NULL
        ELSE valor_registrado
    END                                 AS value_as_number,

    CASE
        WHEN cod_variable_clinic IN ('DIFITOMA','REQENR','CP','CAIULTAN','VALOCUMP','PACIREFA','DIREC','NOM_APE','INFOTRCV',
                              'CONSTABA','VALOADVE','REVIPIES','ENTR_TSO','CONSEJER','CONSDIET','PROB_1','PROB_2',
                              'PROB_3','PROB_4','PROB_5','PROB_6','NOM_APE')
        THEN 0
        ELSE NULL
    END                                 AS value_as_concept_id,

    valor_registrado                    AS value_source_value,
    coalesce(unit.target_concept_id, 0) AS unit_concept_id,
    coalesce(unit.source_concept_id, 0) AS unit_source_value,
    -- From physical examination
    44818701                            AS measurement_type_concept_id
  FROM @source_schema.tb_variables
    JOIN @cdm_schema.person
      ON numsipcod = person.person_source_value
    LEFT JOIN @vocabulary_schema.source_to_concept_map var
      ON cod_variable_clinic = var.source_code AND var.source_vocabulary_id = 'ABUCASIS_TIP_VARIABL'
    LEFT JOIN @vocabulary_schema.source_to_concept_map unit
      ON cod_ud_medida = unit.source_code AND unit.source_vocabulary_id = 'ABUCASIS_UD_MEDIDAS'
  WHERE
    cod_variable_clinic NOT LIKE '-1'
    -- exclude measurements whose variable is unknown
    AND tb_variables.cod_ud_medida != '.' AND tb_variables.cod_ud_medida != 'I'
;
