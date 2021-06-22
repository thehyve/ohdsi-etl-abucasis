/*
Visit ocurrence table
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
       'tb_morbilid'                                         AS visit_source_value,

    -- Assumption: 1 day visits
       tb_morbilid.fecha_inicio                              AS visit_start_date,
       (cast(tb_morbilid.fecha_inicio as text) || ' 00:00:00'):: timestamp             AS visit_start_datetime,

       tb_morbilid.fecha_inicio                              AS visit_end_date,
       (cast(tb_morbilid.fecha_inicio as text) || ' 00:00:00'):: timestamp             AS visit_end_datetime,

      --Admitted and discharged from home
       8536                                                     AS admitted_from_concept_id,
       8536                                                     AS discharge_to_concept_id,

       person.care_site_id                                   AS care_site_id


FROM  @source_schema.tb_morbilid
       LEFT JOIN source_intermediate.intermediate_table_visit_ocurrence
         ON (tb_morbilid.numsipcod = intermediate_table_visit_ocurrence.numsipcod
               AND
             tb_morbilid.fecha_inicio = intermediate_table_visit_ocurrence.date)
         -- We only want visits from "valid" persons from person table
       INNER JOIN @cdm_schema.person ON intermediate_table_visit_ocurrence.numsipcod = person.person_source_value
      WHERE tb_morbilid.fecha_inicio >= TO_DATE(@first_date, 'YYYY-MM-DD')
;