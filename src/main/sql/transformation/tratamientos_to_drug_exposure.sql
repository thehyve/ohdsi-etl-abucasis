/*
Treatments
*/
INSERT INTO drug_exposure
(
	drug_exposure_id,
	person_id,
	drug_source_concept_id,
	drug_concept_id,
	drug_concept_id, -- [!#WARNING!#] THIS TARGET FIELD WAS ALREADY USED
	drug_source_value,
	quantity,
	days_supply,
	drug_exposure_start_date,
	drug_exposure_end_date,
	dose_unit_concept_id,
	dose_unit_source_value,
	effective_drug_dose,
	drug_type_concept_id,
	sig,
	sig, -- [!#WARNING!#] THIS TARGET FIELD WAS ALREADY USED
	stop_reason,
	refills,
	route_concept_id,
	lot_number,
	provider_id,
	visit_occurrence_id,
	route_source_value
)
SELECT
 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	drug_exposure_id,

	tb_tratamientos.numsipcod	AS	person_id,

	tb_tratamientos.cod_prinactivo	AS	drug_source_concept_id,

	tb_tratamientos.cod_prinactivo	AS	drug_concept_id,

 -- [VALUE   COMMENT] form taken 
	tb_tratamientos.unidad_posologia	AS	drug_concept_id,

	tb_tratamientos.cod_prinactivo	AS	drug_source_value,

 -- [VALUE   COMMENT] units 
	tb_tratamientos.unidades	AS	quantity,

	tb_tratamientos.dias_tratamiento	AS	days_supply,

	tb_tratamientos.fecha_inicio_tratamiento	AS	drug_exposure_start_date,

	tb_tratamientos.fecha_fin_tratamiento	AS	drug_exposure_end_date,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	dose_unit_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	dose_unit_source_value,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	effective_drug_dose,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	drug_type_concept_id,

 -- [VALUE   COMMENT] "per x " tipo_posologia 
	tb_tratamientos.cadencia	AS	sig,

	tb_tratamientos.tipo_posologia	AS	sig,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	stop_reason,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	refills,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	route_concept_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	lot_number,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	provider_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	visit_occurrence_id,

 -- [!WARNING!] no source column found. See possible comment at the INSERT INTO
	NULL	AS	route_source_value

FROM tb_tratamientos
;