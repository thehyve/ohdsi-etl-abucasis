/**
Number of drug-drug interactions per person, per month.
Three levels of severity of the interactions. These are mapped as a qualifier;
MODERADA (moderate), LEVE (not severe), GRAVE (very severe)
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
  value_as_number,
  qualifier_concept_id,
  qualifier_source_value,
  unit_concept_id
)
  SELECT
    person.person_id                                     AS person_id,

    coalesce(source_to_concept_map.target_concept_id, 0) AS observation_concept_id,

    'interacc'                                           AS observation_source_value,

    -- TODO: create custom 2B+ source concept
    0                                                    AS observation_source_concept_id,

    cast(tb_interacc.ano_mes || '01' AS DATE)            AS observation_date,

    cast(tb_interacc.ano_mes || '01' AS TIMESTAMP)       AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                             AS observation_type_concept_id,

    -- Number of adverse events
    tb_interacc.num_interacciones                        AS value_as_number,

    -- Severity of the interaction
    CASE tb_interacc.gravedad_interaccion
    WHEN 'LEVE'
      THEN 764184 -- Not Severe
    WHEN 'MODERADA'
      THEN 4285732 -- Moderate
    WHEN 'GRAVE'
      THEN 4087703 -- Severe
    ELSE NULL
    END                                                  AS qualifier_concept_id,

    tb_interacc.gravedad_interaccion                     AS qualifier_source_value,

    -- times
    8524                                                 AS unit_concept_id

  FROM public.tb_interacc
    JOIN cdm5.person
      ON person.person_source_value = tb_interacc.numsipcod
    LEFT JOIN cdm5.source_to_concept_map
      ON source_to_concept_map.source_code = 'interacc' AND
         source_to_concept_map.source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
;