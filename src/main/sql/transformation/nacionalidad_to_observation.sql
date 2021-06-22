/*
Spanish nationality status as observation from the 2015 demographics.
Value is either 'S', 'N' or 'D' (Yes, No, Unknown)
*/
INSERT INTO @cdm_schema.observation
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
    person.person_id                               AS person_id,

    CASE tb_sip_spo_resto_2015.nacionalidad_espanola
      -- Native
      WHEN 'S' THEN 4135608
      -- Migrant
      WHEN 'N' THEN 4074479
      -- Unknown
      WHEN 'D' THEN 4185231
      ELSE 0
    END                                            AS observation_concept_id,

    tb_sip_spo_resto_2015.nacionalidad_espanola    AS observation_source_value,

    -- TODO: create custom 2B+ source concepts
    0                                              AS observation_source_concept_id,

    tb_sip_spo_resto_2015.fecha_corte              AS observation_date,

    tb_sip_spo_resto_2015.fecha_corte :: TIMESTAMP AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                       AS observation_type_concept_id,

    -- Yes
    4188539                                        AS value_as_concept_id,

    -- No event
    0                                              AS obs_event_field_concept_id

  FROM  @source_schema.tb_sip_spo_resto_2015
    JOIN @cdm_schema.person
      ON person.person_source_value = tb_sip_spo_resto_2015.numsipcod
    WHERE tb_sip_spo_resto_2015.fecha_corte >= TO_DATE((@first_date)::text, 'YYYY-MM-DD')

;