/*
Sociodemographic data I
*/
INSERT INTO observation_period
(
	person_id,
	observation_period_start_date, -- Date of entry into study 01-01-2012 Or date of birth (whichever is last); everyone is older than 18, should not happen.
	observation_period_end_date,
	period_type_concept_id
)
SELECT
  person.person_id                                  	      AS	person_id,

  -- Date of entry into study OR birthday (whichever is last)
  CASE
  WHEN tb_sip_spo.fecha_nac > CONVERT(DATE,('2012-01-01'))
    THEN tb_sip_spo.fecha_nac -- Not Severe
  WHEN tb_sip_spo.fecha_nac < CONVERT(DATE,('2012-01-01'))
    THEN CONVERT(DATE,('2012-01-01'))
  END                                                     AS observation_period_start_date,


 -- Earliest of fecha_def and fecha_baja_sip
 -- If both dates are empty default value is 31-12-2016 (end date study)
	CASE
	WHEN tb_sip_spo.fecha_baja_sip IS NULL AND tb_sip_spo.fecha_def IS NULL THEN CONVERT(DATE,('2016-12-31'))
	WHEN tb_sip_spo.fecha_baja_sip < tb_sip_spo.fecha_def THEN tb_sip_spo.fecha_baja_sip
	WHEN tb_sip_spo.fecha_baja_sip < tb_sip_spo.fecha_def THEN tb_sip_spo.fecha_def
  END                                                     AS	observation_period_end_date,

 -- Period covering healthcare encounters
	'44814724'	                                            AS	period_type_concept_id

FROM public.tb_sip_spo
  LEFT JOIN cdm5.person
    ON tb_sip_spo.numsipcod = person.person_source_value
;