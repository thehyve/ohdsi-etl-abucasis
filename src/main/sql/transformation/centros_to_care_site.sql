/**
Care site name and location (zona). The place of service is not known.
 */
INSERT INTO @cdm_schema.care_site
(
  care_site_id,
  care_site_name,
  location_id,
  care_site_source_value,
  place_of_service_concept_id
)
  SELECT
    tba_centros.cod_centro :: INTEGER AS care_site_id,

    tba_centros.des_centro            AS care_site_name,

    -- The zona that the centre is in
    location.location_id              AS location_id,

    tba_centros.cod_centro            AS care_site_source_value,

    0                                 AS place_of_service_concept_id

  FROM  @source_schema.tba_centros
    JOIN  @source_schema.tba_centros_asignacion USING (cod_centro)
    JOIN @cdm_schema.location ON cod_zona = location_source_value
;