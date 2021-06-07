/**
Zonas which the centros are linked to.
There is no link to departamentos in the source data, so these are not mapped here.
Zonas would better map to 'county', but the max of 20 characters is too limiting.
 */
INSERT INTO cdm5.location
(
  address_1,
  state,
  country,
  location_source_value
)
  SELECT
    tba_zonas.des_zona AS address_1,
    'CV'               AS state, -- Comunidad Valenciana, field is restricted to 2 characters
    'Spain'            AS country,
    tba_zonas.cod_zona AS location_source_value
  FROM @source_schema.tba_zonas
;
