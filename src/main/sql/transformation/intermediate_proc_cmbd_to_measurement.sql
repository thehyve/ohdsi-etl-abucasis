/*
Measurements derived from Procedures
(procedure concepts that are from the measurement domain)
 */

INSERT INTO @cdm_schema.measurement
(
  person_id,
  measurement_concept_id,
  measurement_source_concept_id,
  measurement_source_value,
  measurement_date,
  measurement_datetime,
  measurement_type_concept_id,
  visit_occurrence_id
)

  SELECT
    person.person_id                    AS person_id,
    _concept_id                         AS measurement_concept_id,
    _source_concept_id                  AS measurement_source_concept_id,
    _source_value                      AS measurement_source_value,
    _date                              AS measurement_date,
    _datetime                          AS measurement_datetime,
    -- From physical examination
    44818702                            AS measurement_type_concept_id,
    visit_occurrence_id                 AS visit_occurrence_id

  FROM source_intermediate.intermediate_proc_cmbd
      JOIN @cdm_schema.person
        ON person.person_source_value = intermediate_proc_cmbd.person_source_value
      WHERE intermediate_proc_cmbd._date >= TO_DATE('2012-01-01', 'YYYY-MM-DD')
            AND
            intermediate_proc_cmbd.target_domain_id = 'Measurement';