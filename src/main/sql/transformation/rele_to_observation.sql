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

    -- TODO: mapping of prinactivo to Rxnorm concept
    0                                           AS value_as_concept_id,

    tb_prescrip.cod_prinactivo                  AS value_as_string,

    0                                           AS obs_event_field_concept_id

  FROM public.tb_prescrip
    LEFT JOIN public.tb_rele ON tb_rele.numreceta = tb_prescrip.numreceta
    JOIN cdm5.person ON person.person_source_value = tb_prescrip.numsipcod
  WHERE tb_rele.numreceta IS NULL
;