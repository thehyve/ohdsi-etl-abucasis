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
  condition_source_concept_id,
  condition_source_value,
  condition_type_concept_id,
  condition_status_concept_id,
  visit_occurrence_id
)
  SELECT
    person.person_id                                      AS person_id,
    tb_diag_juntos.fecha_inicio                           AS condition_start_date,
    tb_diag_juntos.fecha_inicio :: TIMESTAMP              AS condition_start_datetime,
    -- Capture the end date
    -- If end date is null or before starting date, set end date as starting date
    CASE WHEN tb_diag_juntos.fecha_inicio <= tb_diag_juntos.fecha_fin
        THEN tb_diag_juntos.fecha_fin
        ELSE tb_diag_juntos.fecha_inicio
    END                                                   AS condition_end_date,
    CASE WHEN tb_diag_juntos.fecha_inicio <= tb_diag_juntos.fecha_fin
        THEN tb_diag_juntos.fecha_fin :: TIMESTAMP
        ELSE tb_diag_juntos.fecha_inicio :: TIMESTAMP
    END                                                   AS condition_end_datetime,
    coalesce(icd_map.target_concept_id, 0)                AS condition_concept_id,
    coalesce(icd_map.source_concept_id, 0)                AS condition_source_concept_id,
    tb_diag_juntos.cod_diagnostico                        AS condition_source_value,
    CASE WHEN tb_diag_juntos.orden = 1
              OR tb_diag_juntos.orden IS NULL
      THEN 44786630 -- primary condition
      ELSE 44786631 -- secondary condition
    END                                                   AS condition_type_concept_id,
    -- Clinical diagnosis
    4309119                                               AS condition_status_concept_id,
    intermediate_table_visit_ocurrence.visit_ocurrence_id AS visit_occurrence_id

  FROM @source_schema.tb_diag_juntos
    --link to visit_occurence_id on patient id, start date and origin of data via intermediate table
    LEFT JOIN source_intermediate.intermediate_table_visit_ocurrence
      ON (tb_diag_juntos.numsipcod = intermediate_table_visit_ocurrence.numsipcod
          AND
          tb_diag_juntos.fecha_inicio = intermediate_table_visit_ocurrence.date
          AND
          tb_diag_juntos.origen = intermediate_table_visit_ocurrence.origin)
    INNER JOIN @cdm_schema.person
      ON tb_diag_juntos.numsipcod = person.person_source_value
    LEFT JOIN @vocabulary_schema.source_to_concept_map AS icd_map
      ON tb_diag_juntos.cod_diagnostico = icd_map.source_code AND icd_map.source_vocabulary_id = 'ABUCASIS_CIE9'
  WHERE origen IN ('C', 'M')
        AND tb_diag_juntos.fecha_inicio >= TO_DATE('2012-01-01', 'YYYY-MM-DD');
