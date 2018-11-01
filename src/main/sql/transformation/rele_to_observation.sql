/*
Prescribed, but not dispensed drugs. A prescription that is never taken will not appear in the drug_exposure table.
However, such a prescription can be indicative of a disease that is not captured elsewhere
(e.g. if someone is prescribed metformin for his/her diabetes).
*/
INSERT INTO cdm5.observation
(
  person_id,
  observation_concept_id,
  observation_source_concept_id,
  observation_date,
  observation_datetime,
  observation_type_concept_id,
  value_as_concept_id,
  value_as_string,
  obs_event_field_concept_id
)
  SELECT
    person.person_id                            AS person_id,

    -- Patient refuses to take medication
    762823                                      AS observation_concept_id,

    0                                           AS observation_source_concept_id,

    tb_prescrip.fecha_prescripcion              AS observation_date,

    tb_prescrip.fecha_prescripcion :: TIMESTAMP AS observation_datetime,

    -- Observation recorded from EHR
    38000280                                    AS observation_type_concept_id,

    ingredient_map.target_concept_id            AS value_as_concept_id,

    tb_prescrip.cod_prinactivo                  AS value_as_string,

    0                                           AS obs_event_field_concept_id

  FROM  @source_schema.tb_prescrip
    LEFT JOIN  @source_schema.tb_rele
      ON tb_rele.numreceta = tb_prescrip.numreceta
    JOIN cdm5.person
      ON person.person_source_value = tb_prescrip.numsipcod
    LEFT JOIN cdm5.source_to_concept_map AS ingredient_map
      ON ingredient_map.source_code = tb_prescrip.cod_prinactivo
         AND ingredient_map.source_vocabulary_id = 'ABUCASIS_PRINACTIVO'
  WHERE tb_rele.numreceta IS NULL
;