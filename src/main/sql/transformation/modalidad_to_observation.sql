/*
Social-economic status (modalidad) as observation from the 2015 demographics.
*/
INSERT INTO cdm5.observation
(
  person_id,
  observation_concept_id,
  observation_source_value,
  observation_source_concept_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_concept_id,
  obs_event_field_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    tb_sip_spo_resto_2015.cod_modalidad                  AS observation_source_value,

    -- TODO: create custom 2B+ source concepts
    0                                                    AS observation_source_concept_id,

    tb_sip_spo_resto_2015.fecha_corte                    AS observation_date,

    tb_sip_spo_resto_2015.fecha_corte :: TIMESTAMP       AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Yes
    4188539                                              AS value_as_concept_id,

    -- No event
    0                                                    AS obs_event_field_concept_id

  FROM public.tb_sip_spo_resto_2015
    JOIN cdm5.person
      ON person.person_source_value = tb_sip_spo_resto_2015.numsipcod
    LEFT JOIN cdm5.source_to_concept_map
      ON source_code = cod_modalidad AND source_vocabulary_id = 'ABUCASIS_MODALIDAD'
;