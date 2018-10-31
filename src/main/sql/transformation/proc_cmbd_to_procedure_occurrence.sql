/*
Hospitalization table with only procedures
Derived table from all hospitalizations (tb_ante_cmbd)
*/
INSERT INTO cdm5.procedure_occurrence
(
  person_id,
  procedure_concept_id,
  procedure_source_concept_id,
  procedure_source_value,
  procedure_date,
  procedure_datetime,
  procedure_type_concept_id,
  modifier_concept_id,
  visit_occurrence_id
)
  SELECT
    person.person_id                        AS person_id,

    coalesce(code_map.concept_id_2, 0)      AS procedure_concept_id,

    coalesce(icd9proc.concept_id, 0)        AS procedure_source_concept_id,

    tb_proc_cmbd.cie9p                      AS procedure_source_value,

    tb_proc_cmbd.fecha_ingreso              AS procedure_date,

    tb_proc_cmbd.fecha_ingreso :: TIMESTAMP AS procedure_datetime,

    CASE WHEN tb_proc_cmbd.orden = 1
      -- primary procedure
      THEN 44786630
      -- secondary procedure
      ELSE 44786631
    END                                     AS procedure_type_concept_id,

    -- Required field, no modifier in source data
    0                                       AS modifier_concept_id,

    intermediate_table_visit_ocurrence.visit_ocurrence_id        AS visit_occurrence_id

  FROM public.tb_proc_cmbd
    JOIN cdm5.person
      ON person.person_source_value = tb_proc_cmbd.numsipcod
    LEFT JOIN cdm5.concept AS icd9proc
      ON icd9proc.concept_code = tb_proc_cmbd.cie9p AND icd9proc.vocabulary_id IN ('ICD9Proc', 'ICD10PCS')
    LEFT JOIN cdm5.concept_relationship AS code_map
      ON code_map.concept_id_1 = icd9proc.concept_id
         AND code_map.relationship_id = 'Maps to'
    LEFT JOIN source_intermediate.intermediate_table_visit_ocurrence
      ON tb_proc_cmbd.numsipcod = intermediate_table_visit_ocurrence.numsipcod
         AND tb_proc_cmbd.fecha_ingreso = intermediate_table_visit_ocurrence.date
         AND intermediate_table_visit_ocurrence.origin = 'C'
;