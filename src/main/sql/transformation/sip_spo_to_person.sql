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
	death_datetime,
	race_concept_id, -- Unknown
	ethnicity_concept_id, -- Unknown
	care_site_id,
	gender_source_concept_id,
	race_source_value,
	race_source_concept_id,
	ethnicity_source_value,
	ethnicity_source_concept_id
)
SELECT
 -- [VALUE   COMMENT] Alphanumerical
 -- TODO autoincrement
	sip.numsipcod                                          AS	person_id,


	sip.numsipcod                                          AS	person_source_value,

  CASE sip.sexo
  WHEN 'H'
    THEN 8507 --MALE
  WHEN 'M'
    THEN 8532 --FEMALE
  ELSE 0 -- Unknown
  END                                                           AS	gender_concept_id,

	sip.sexo                                               AS	gender_source_value,
	0                                                           	AS	gender_source_concept_id,

	YEAR(sip.fecha_nac)                                  	AS	year_of_birth,

	MONTH(sip.fecha_nac)                                 	AS	month_of_birth,

	DAY(sip.fecha_nac)                                   	AS	day_of_birth,

	0                                                           	AS	race_source_concept_id,
	0                                                           	AS	race_concept_id,

	0                                                           	AS	ethnicity_source_concept_id
	0                                                           	AS	ethnicity_concept_id,


  CASE
  WHEN sipresto.fechadef IS NULL AND sipresto.fecha_baja_sip IS NULL THEN NULL
  WHEN sipresto.fechadef IS NULL AND sipresto.fecha_baja_sip IS NOT NULL THEN sipresto.fechadef
  WHEN sipresto.fechadef IS NOT NULL AND sipresto.fecha_baja_sip IS NULL THEN sipresto.fecha_baja_sip
  END                                                            AS death_datetime,
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
 --TODO
	NULL	AS	care_site_id,



FROM public.tb_sip_spo sip
  LEFT JOIN public.tb_sip_spo_resto_2015 sipresto
  ON sip.numsipcod = sipresto.numsipcod
;