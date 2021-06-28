/*
Visit occurrence table
*/

/*
Derive hospitalizations visits from tb_diag_juntos that were not in tb_ante_cmbd
 */
INSERT INTO @cdm_schema.visit_occurrence (visit_occurrence_id,
                                   person_id,
                                   visit_concept_id,
                                   visit_source_value,
                                   visit_type_concept_id,
                                   visit_source_concept_id,
                                   visit_start_date,
                                   visit_start_datetime,
                                   visit_end_date,
                                   visit_end_datetime,
                                   admitted_from_concept_id,
                                   admitted_from_source_value,
                                   discharge_to_concept_id,
                                   discharge_to_source_value,
                                   care_site_id)

SELECT intermediate_table_visit_ocurrence.visit_ocurrence_id AS visit_ocurrence_id,
       person.person_id                                      AS person_id,
       CASE tb_diag_juntos.tipo_actividad
         WHEN 'HOS' THEN 8717 -- Inpatient hospital
         WHEN 'CMA' THEN 8756 -- Outpatient hospital
         ELSE 8717  END                                               AS visit_concept_id,
       tb_diag_juntos.tipo_actividad                           AS visit_source_value,
    -- Visit derived from EHR encounter record
       32035                                                 AS visit_type_concept_id,
       0                                                     AS visit_source_concept_id,

       tb_diag_juntos.fecha_inicio   AS visit_start_date,
       (cast(tb_diag_juntos.fecha_inicio as text) || ' 00:00:00'):: timestamp   AS visit_start_datetime,

       CASE
         WHEN tb_diag_juntos.fecha_fin IS NOT NULL
                 THEN fecha_fin
         WHEN tb_diag_juntos.fecha_fin IS NULL
                 THEN TO_DATE((@last_date)::text, 'YYYY-MM-DD')
           END                                               AS visit_end_date,
       CASE
         WHEN tb_diag_juntos.fecha_fin IS NOT NULL
                 THEN (cast(fecha_fin as text) || ' 00:00:00'):: timestamp
         WHEN tb_diag_juntos.fecha_fin IS NULL
                 THEN (cast(TO_DATE((@last_date)::text, 'YYYY-MM-DD') as text) || ' 00:00:00'):: timestamp
           END                                               AS visit_end_datetime,

    -- Circumstance of admission
       CASE tb_diag_juntos.cir_ingreso
           -- From emergency department
         WHEN '1' THEN 8870 --Emergency room - Hospital
           -- planned/programmed
         WHEN '2' THEN 8536 --Home
           -- surgery
         WHEN '3' THEN 8863 -- Ambulatory surgical center
         ELSE 0 -- Unknown
           END                                               AS admitted_from_concept_id,
       tb_diag_juntos.cir_ingreso                              AS admitted_from_source_value,
    -- Circumstance of discharge
       CASE tb_diag_juntos.cir_alta
           -- Home
         WHEN '1' THEN 8536 -- Home
           -- Primary care
         WHEN '2' THEN 8756 --Outpatient hospital
           -- Outpatient clinics
         WHEN '3' THEN 8756 --Outpatient hospital
           -- Day hospital
         WHEN '4' THEN 8536 --Home
           -- Home hospitalization
         WHEN '5' THEN 8536 --Home
           -- Voluntary leaving
         WHEN '6' THEN 8536 --Home
           -- Transfer to other hospital
         WHEN '7' THEN 8844 --Other place of service
           -- Transfer to midterm hospital
         WHEN '8' THEN 8892 --Other inpatient case
           -- Transfer to nursing home
         WHEN '9' THEN 8676 --Nursing Facility
           -- Exitus
         WHEN '10' THEN 4216643 -- Patient died
           -- Scape
         WHEN '11' THEN 8536 --Home
           -- Pre-exitus
         WHEN '12' THEN 8536 --Home
           -- Reasons other than medical
         WHEN '13' THEN 8536 --Home??
           -- Hospitalization
         WHEN '15' THEN 8892 --Other inpatient case
           -- Other
         WHEN '99' THEN 0 --Other place of service
         ELSE 0 -- Unknown
           END                                               AS discharge_to_concept_id,
       tb_diag_juntos.cir_alta                                 AS discharge_source_value,

       person.care_site_id                                   AS care_site_id



FROM  @temp_schema.intermediate_table_visit_ocurrence
        LEFT JOIN @source_schema.tb_diag_juntos
          ON (tb_diag_juntos.numsipcod = intermediate_table_visit_ocurrence.numsipcod
                AND
              tb_diag_juntos.fecha_inicio = intermediate_table_visit_ocurrence.date
                             AND
              tb_diag_juntos.origen = intermediate_table_visit_ocurrence.origin)
              -- We only want visits from "valid" persons from person table
        INNER JOIN @cdm_schema.person ON intermediate_table_visit_ocurrence.numsipcod = person.person_source_value
        LEFT JOIN @cdm_schema.visit_occurrence ON  intermediate_table_visit_ocurrence.visit_ocurrence_id = visit_occurrence.visit_occurrence_id
        -- Filter out visits occurring before the study entry date
        WHERE visit_occurrence.visit_occurrence_id IS NULL AND tb_diag_juntos.fecha_inicio >= TO_DATE((@first_date)::text, 'YYYY-MM-DD')
        AND tb_diag_juntos.origen != 'M'
;

/*
Derive ambulatory visits from tb_diag_juntos that were not in tb_morbilid
 */

INSERT INTO @cdm_schema.visit_occurrence (visit_occurrence_id,
                                   person_id,
                                   visit_concept_id,
                                   visit_type_concept_id,
                                   visit_source_concept_id,
                                   visit_source_value,
                                   visit_start_date,
                                   visit_start_datetime,
                                   visit_end_date,
                                   visit_end_datetime,
                                   admitted_from_concept_id,
                                   discharge_to_concept_id,
                                   care_site_id)

SELECT intermediate_table_visit_ocurrence.visit_ocurrence_id AS visit_ocurrence_id,
       person.person_id                                      AS person_id,

    -- Outpatient visit
       9202                                                  AS visit_concept_id,

    -- Visit derived from EHR encounter record
       44818518                                              AS visit_type_concept_id,
       0                                                     AS visit_source_concept_id,
       'tb_diag_juntos'                                         AS visit_source_value,

    -- Assumption: 1 day visits
       tb_diag_juntos.fecha_inicio                              AS visit_start_date,
       (cast(tb_diag_juntos.fecha_inicio as text) || ' 00:00:00'):: timestamp             AS visit_start_datetime,

       tb_diag_juntos.fecha_inicio                              AS visit_end_date,
       (cast(tb_diag_juntos.fecha_inicio as text) || ' 00:00:00'):: timestamp             AS visit_end_datetime,

      --Admitted and discharged from home
       8536                                                     AS admitted_from_concept_id,
       8536                                                     AS discharge_to_concept_id,

       person.care_site_id                                   AS care_site_id


FROM  @temp_schema.intermediate_table_visit_ocurrence
        LEFT JOIN @source_schema.tb_diag_juntos
          ON (tb_diag_juntos.numsipcod = intermediate_table_visit_ocurrence.numsipcod
                AND
              tb_diag_juntos.fecha_inicio = intermediate_table_visit_ocurrence.date
                            AND
              tb_diag_juntos.origen = intermediate_table_visit_ocurrence.origin)
              -- We only want visits from "valid" persons from person table
        INNER JOIN @cdm_schema.person ON intermediate_table_visit_ocurrence.numsipcod = person.person_source_value
        LEFT JOIN @cdm_schema.visit_occurrence ON  intermediate_table_visit_ocurrence.visit_ocurrence_id = visit_occurrence.visit_occurrence_id
        -- Filter out visits occurring before the study entry date
        WHERE visit_occurrence.visit_occurrence_id IS NULL AND tb_diag_juntos.fecha_inicio >= TO_DATE((@first_date)::text, 'YYYY-MM-DD')
        AND tb_diag_juntos.origen = 'M'
;