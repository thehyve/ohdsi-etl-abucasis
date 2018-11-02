/**
Logic for determining death date.
The first of death date (fecha_def), exit date (fecha_baja_sip) or discharge with reason death (cir_alta = '10')
Note that theoretically there can be other reasons for exit (recorded in the cod_baja_sip field),
but the reason is in practice always death.
The death type depends on where the death date is recorded. If recorded at multiple sites, the death type will be 38000280
 */

DROP TABLE source_intermediate.intermediate_death
;

WITH death_at_discharge AS (
    SELECT
      numsipcod,
      max(fecha_alta) AS discharge_date
    FROM public.tb_ante_cmbd
    WHERE cir_alta = '10'
    GROUP BY numsipcod
), death_dates AS (
    SELECT
      tb_sip_spo.numsipcod,
      tb_sip_spo.fecha_def,
      tb_sip_spo.fecha_baja_sip,
      death_at_discharge.discharge_date,
      least(tb_sip_spo.fecha_def,
            tb_sip_spo.fecha_baja_sip,
            death_at_discharge.discharge_date) AS first_death_date
    FROM public.tb_sip_spo
      LEFT JOIN death_at_discharge
        ON tb_sip_spo.numsipcod = death_at_discharge.numsipcod
)
SELECT
  numsipcod,
  first_death_date AS death_date,
  CASE first_death_date
    WHEN fecha_def THEN 38000280 -- Observation recorded from EHR
    WHEN fecha_baja_sip THEN 38000280 -- Observation recorded from EHR
    WHEN discharge_date THEN 44818516 -- EHR discharge status ‘Expired’
    ELSE -1
  END              AS death_type_concept_id
INTO source_intermediate.intermediate_death
FROM death_dates
WHERE first_death_date IS NOT NULL
;