/*
tb_proc_cmbd: Hospitalization table with only procedures
Derived table from all hospitalizations (tb_ante_cmbd)

Proc_cmbd_intermediate_table stores the source data of tb_proc_cmbd as well as
the mapped concepts, and the target domain
Mapped concepts can be from Procedure, Observation and Measurement domain
*/

DROP TABLE IF EXISTS source_intermediate.intermediate_proc_cmbd
;

SELECT

      tb_proc_cmbd.numsipcod                  AS person_source_value,

      coalesce(code_map.concept_id_2, 0)      AS _concept_id,

      coalesce(icd9proc.concept_id, 0)        AS _source_concept_id,

      tb_proc_cmbd.cie9p                      AS _source_value,

      tb_proc_cmbd.fecha_ingreso              AS _date,

      tb_proc_cmbd.fecha_ingreso :: TIMESTAMP AS _datetime,

      CASE WHEN tb_proc_cmbd.orden = 1
        -- primary procedure
        THEN 44786630
        -- secondary procedure
        ELSE 44786631
      END                                     AS _type_concept_id,


      intermediate_table_visit_ocurrence.visit_ocurrence_id        AS visit_occurrence_id,

      icd9proc.domain_id                      AS target_domain_id

INTO source_intermediate.intermediate_proc_cmbd

FROM  @source_schema.tb_proc_cmbd
  --JOIN cdm5.person
  --  ON person.person_source_value = tb_proc_cmbd.numsipcod
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