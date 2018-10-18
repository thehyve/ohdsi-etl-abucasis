/*
Sociodemographic data I
*/
INSERT INTO person
(
	person_id, -- Auto increment
	person_source_value,
	gender_concept_id,
	gender_source_value,
	year_of_birth,
	month_of_birth,
	day_of_birth,
	time_of_birth,
	race_concept_id, -- Unknown
	ethnicity_concept_id, -- Unknown
	location_id,
	provider_id,
	care_site_id,
	gender_source_concept_id,
	race_source_value,
	race_source_concept_id,
	ethnicity_source_value,
	ethnicity_source_concept_id
)
SELECT
 -- [VALUE   COMMENT] Alphanumerical 
	tb_sip_spo.numsipcod	AS	person_id,

 -- [VALUE   COMMENT] Alphanumerical 
	tb_sip_spo.numsipcod	AS	person_source_value,

	tb_sip_spo.sexo	AS	gender_concept_id,

	tb_sip_spo.sexo	AS	gender_source_value,

 -- [VALUE   COMMENT] If 01-01, it is a proxy for birth year. 
	tb_sip_spo.fecha_nac	AS	year_of_birth,

 -- [VALUE   COMMENT] If 01-01, it is a proxy for birth year. 
	tb_sip_spo.fecha_nac	AS	month_of_birth,

 -- [VALUE   COMMENT] If 01-01, it is a proxy for birth year. 
	tb_sip_spo.fecha_nac	AS	day_of_birth,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	time_of_birth,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	race_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	ethnicity_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	location_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	care_site_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	gender_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	race_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	race_source_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	ethnicity_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	ethnicity_source_concept_id

FROM tb_sip_spo
;