/*
Hospitalization table with only procedures
Derived table from all hospitalizations (tb_ante_cmbd)
*/
INSERT INTO @cdm_schema.procedure_occurrence
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

    _concept_id                             AS procedure_concept_id,

    _source_concept_id                      AS procedure_source_concept_id,

    _source_value                           AS procedure_source_value,

    _date                                   AS procedure_date,

    _datetime                                AS procedure_datetime,

    _type_concept_id                        AS procedure_type_concept_id,

    -- Required field, no modifier in source data
    0                                       AS modifier_concept_id,

    intermediate_proc_cmbd.visit_occurrence_id        AS visit_occurrence_id

  FROM @temp_schema.intermediate_proc_cmbd
      JOIN @cdm_schema.person
        ON person.person_source_value = intermediate_proc_cmbd.person_source_value
      WHERE intermediate_proc_cmbd._date >= TO_DATE((@first_date)::text, 'YYYYMMDD')
            AND
            (intermediate_proc_cmbd.target_domain_id = 'Procedure'
            OR
            intermediate_proc_cmbd._concept_id = 0);