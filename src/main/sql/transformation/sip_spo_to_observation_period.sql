/*
Sociodemographic data I
*/
INSERT INTO @cdm_schema.observation_period (person_id,
                                     observation_period_start_date,
                                     -- Date of entry into study 01-01-2012 Or date of birth (whichever is last); everyone is older than 18, should not happen.
                                     observation_period_end_date,
                                     period_type_concept_id)
SELECT person.person_id AS person_id,
    -- Date of entry into study OR birthday (whichever is last)
       CASE
         WHEN tb_sip_spo.fecha_nac > TO_DATE('2012-01-01', 'YYYY-MM-DD')
                 THEN tb_sip_spo.fecha_nac -- Not Severe
         WHEN tb_sip_spo.fecha_nac < TO_DATE('2012-01-01', 'YYYY-MM-DD')
                 THEN TO_DATE('2012-01-01', 'YYYY-MM-DD')
           END          AS observation_period_start_date,
    -- Earliest of fecha_def and fecha_baja_sip
    -- If both dates are empty default value is 31-12-2016 (end date study)
       CASE
         WHEN tb_sip_spo.fecha_baja_sip IS NULL AND tb_sip_spo.fecha_def IS NOT NULL THEN tb_sip_spo.fecha_def
         WHEN tb_sip_spo.fecha_baja_sip IS NOT NULL AND tb_sip_spo.fecha_def IS NULL THEN tb_sip_spo.fecha_baja_sip
         WHEN tb_sip_spo.fecha_baja_sip IS NOT NULL AND tb_sip_spo.fecha_def IS NOT NULL AND
              tb_sip_spo.fecha_baja_sip < tb_sip_spo.fecha_def THEN tb_sip_spo.fecha_baja_sip
         WHEN tb_sip_spo.fecha_baja_sip IS NOT NULL AND tb_sip_spo.fecha_def IS NOT NULL AND
              tb_sip_spo.fecha_def < tb_sip_spo.fecha_baja_sip THEN tb_sip_spo.fecha_def
         ELSE TO_DATE('2016-12-31', 'YYYY-MM-DD')
           END          AS observation_period_end_date,
    -- Period covering healthcare encounters
       '44814724'       AS period_type_concept_id

FROM  @source_schema.tb_sip_spo
       INNER JOIN @cdm_schema.person ON tb_sip_spo.numsipcod = person.person_source_value;