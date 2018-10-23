/*
Sociodemographic data I
*/
INSERT INTO cdm5.person
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
	tb_sip_spo.numsipcod                                          AS	person_id,


	tb_sip_spo.numsipcod                                          AS	person_source_value,

  CASE tb_sip_spo.sexo
  WHEN 'H'
    THEN 8507 --MALE
  WHEN 'M'
    THEN 8532 --FEMALE
  ELSE 0 -- Unknown
  END                                                           AS	gender_concept_id,

	tb_sip_spo.sexo                                               AS	gender_source_value,
	0                                                           	AS	gender_source_concept_id,

	YEAR(tb_sip_spo.fecha_nac)                                  	AS	year_of_birth,

	MONTH(tb_sip_spo.fecha_nac)                                 	AS	month_of_birth,

	DAY(tb_sip_spo.fecha_nac)                                   	AS	day_of_birth,

	0                                                           	AS	race_source_concept_id,
	0                                                           	AS	race_concept_id,

	0                                                           	AS	ethnicity_source_concept_id
	0                                                           	AS	ethnicity_concept_id,


  CASE
  WHEN tb_sip_spo_resto_2015.fechadef IS NULL AND tb_sip_spo_resto_2015.fecha_baja_sip IS NOT NULL THEN sipresto.fechadef
  WHEN tb_sip_spo_resto_2015.fechadef IS NOT NULL AND tb_sip_spo_resto_2015.fecha_baja_sip IS NULL THEN sipresto.fecha_baja_sip
  ELSE NULL
  END                                                            AS death_datetime,

	care_site.care_site_id	                                      AS	care_site_id,



FROM public.tb_sip_spo
  LEFT JOIN public.tb_sip_spo_resto_2015
  ON sip.numsipcod = sipresto.numsipcod
  LEFT JOIN cdm5.care_site
  ON care_site.care_site_source_value = tb_sip_spo_resto_2015.cod_centro_asignacion

;