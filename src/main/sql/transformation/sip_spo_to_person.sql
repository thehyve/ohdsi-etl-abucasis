/*
Sociodemographic data I
*/
INSERT INTO cdm5.person (
  person_source_value,
  gender_concept_id,
  gender_source_value,
  gender_source_concept_id,
  year_of_birth,
  month_of_birth,
  day_of_birth,
  race_source_concept_id,
  race_concept_id,
  ethnicity_source_concept_id,
  ethnicity_concept_id,
  death_datetime,
  care_site_id
)
  SELECT
    tb_sip_spo.numsipcod                            AS person_source_value,
    CASE tb_sip_spo.sexo
      WHEN 'H' THEN 8507 -- MALE
      WHEN 'M' THEN 8532 -- FEMALE
      ELSE 0 -- Unknown
    END                                             AS gender_concept_id,
    tb_sip_spo.sexo                                 AS gender_source_value,
    0                                               AS gender_source_concept_id,
    EXTRACT(YEAR FROM tb_sip_spo.fecha_nac)         AS year_of_birth,
    EXTRACT(MONTH FROM tb_sip_spo.fecha_nac)        AS month_of_birth,
    EXTRACT(DAY FROM tb_sip_spo.fecha_nac)          AS day_of_birth,
    0                                               AS race_source_concept_id,
    0                                               AS race_concept_id,
    0                                               AS ethnicity_source_concept_id,
    0                                               AS ethnicity_concept_id,
    intermediate_death.death_date::TIMESTAMP        AS death_datetime,
    care_site.care_site_id                          AS care_site_id
  FROM public.tb_sip_spo
    LEFT JOIN public.tb_sip_spo_resto_2015
      ON tb_sip_spo.numsipcod = tb_sip_spo_resto_2015.numsipcod
    LEFT JOIN cdm5.care_site
      ON tb_sip_spo_resto_2015.cod_centro_asignacion = care_site.care_site_source_value
    LEFT JOIN source_intermediate.intermediate_death
      ON tb_sip_spo.numsipcod = intermediate_death.numsipcod
  -- General rule: exclude patients with death or suspension date before 2012
  WHERE tb_sip_spo.fecha_def >= TO_DATE('2012-01-01', 'YYYY-MM-DD')
        OR tb_sip_spo.fecha_baja_sip >= TO_DATE('2012-01-01', 'YYYY-MM-DD')
        OR (tb_sip_spo.fecha_def IS NULL AND tb_sip_spo.fecha_baja_sip IS NULL)

;
