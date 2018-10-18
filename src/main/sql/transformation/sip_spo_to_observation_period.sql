/*
Sociodemographic data I
*/
INSERT INTO observation_period
(
	observation_period_id,
	person_id,
	observation_period_start_date, -- Date of entry into study 01-01-2012 Or date of birth (whichever is last); everyone is older than 18, should not happen.
	observation_period_end_date,
	observation_period_end_date, -- [!#WARNING!#] THIS TARGET FIELD WAS ALREADY USED
	period_type_concept_id
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	observation_period_id,

 -- [VALUE   COMMENT] Alphanumerical 
	tb_sip_spo.numsipcod	AS	person_id,

 -- [VALUE   COMMENT] If 01-01, it is a proxy for birth year. 
	tb_sip_spo.fecha_nac	AS	observation_period_start_date,

 -- [VALUE   COMMENT] Death not always captured. Sometimes in baja_sip with cause_baja death. 
 -- [MAPPING   LOGIC] Earliest of dates def and baja_sip 
	tb_sip_spo.fecha_def	AS	observation_period_end_date,

 -- [VALUE   COMMENT] Suspended date. Should be death or moved, but only death date captured. 
	tb_sip_spo.fecha_baja_sip	AS	observation_period_end_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	period_type_concept_id

FROM tb_sip_spo
;