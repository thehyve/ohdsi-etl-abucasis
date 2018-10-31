/*
Visit ocurrence table
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
       CASE tb_ante_cmbd.tipo_actividad
         WHEN 'HOS' THEN 8717 -- Inpatient hospital
         WHEN 'CMA' THEN 8756 -- Outpatient hospital
           END                                               AS visit_concept_id,
       tb_ante_cmbd.tipo_actividad                           AS visit_source_value,
    -- Visit derived from EHR encounter record
       32035                                                 AS visit_type_concept_id,
       0                                                     AS visit_source_concept_id,

       tb_ante_cmbd.fecha_ingreso   AS visit_start_date,
       (cast(tb_ante_cmbd.fecha_ingreso as text) || ' 00:00:00'):: timestamp   AS visit_start_datetime,

       CASE
         WHEN tb_ante_cmbd.fecha_alta IS NOT NULL
                 THEN fecha_alta
         WHEN tb_ante_cmbd.fecha_alta IS NULL
                 THEN TO_DATE('2016-12-31', 'YYYY-MM-DD')
           END                                               AS visit_end_date,
       CASE
         WHEN tb_ante_cmbd.fecha_alta IS NOT NULL
                 THEN (cast(fecha_alta as text) || ' 00:00:00'):: timestamp
         WHEN tb_ante_cmbd.fecha_alta IS NULL
                 THEN (cast(TO_DATE('2016-12-31', 'YYYY-MM-DD') as text) || ' 00:00:00'):: timestamp
           END                                               AS visit_end_datetime,

    -- Circumstance of admission
       CASE tb_ante_cmbd.cir_ingreso
           -- From emergency department
         WHEN '1' THEN 8870 --Emergency room - Hospital
           -- planned/programmed
         WHEN '2' THEN 8536 --Home
           -- surgery
         WHEN '3' THEN 8863 -- Ambulatory surgical center
         ELSE 0 -- Unknown
           END                                               AS admitted_from_concept_id,
       tb_ante_cmbd.cir_ingreso                              AS admitted_from_source_value,
    -- Circumstance of discharge
       CASE tb_ante_cmbd.cir_alta
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
         WHEN '99' THEN 8844 --Other place of service
         ELSE 0 -- Unknown
           END                                               AS discharge_to_concept_id,
       tb_ante_cmbd.cir_alta                                 AS discharge_source_value,

       person.care_site_id                                   AS care_site_id


FROM  @source_schema.tb_ante_cmbd
       LEFT JOIN source_intermediate.intermediate_table_visit_ocurrence
         ON (tb_ante_cmbd.numsipcod = intermediate_table_visit_ocurrence.numsipcod
               AND
             tb_ante_cmbd.fecha_ingreso = intermediate_table_visit_ocurrence.date) -- We only want visits from "valid" persons from person table
       INNER JOIN @cdm_schema.person ON intermediate_table_visit_ocurrence.numsipcod = person.person_source_value;