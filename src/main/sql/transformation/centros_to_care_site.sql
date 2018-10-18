
INSERT INTO care_site
(
	care_site_id,
	care_site_name,
	place_of_service_concept_id,
	location_id,
	care_site_source_value,
	place_of_service_source_value
)
SELECT
	tba_centros.cod_centro	AS	care_site_id,

	tba_centros.des_centro	AS	care_site_name,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	place_of_service_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	location_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	care_site_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	place_of_service_source_value

FROM tba_centros
;