-- Create 2B+ concepts with Spanish description from tba tables.
-- Replaces any conflicting existing 2B concepts.
-- NOTE: the CIE9 concepts are not used (ICD9 instead)
CREATE TEMP TABLE tba_merged (
    code,
    description,
    table_name,
    domain_id,
    concept_class_id
) AS (
  SELECT
    cod_ud_medida,
    des_ud_medida,
    'ud_medidas',
    'Unit',
    'Unit'
  FROM  @source_schema.tba_ud_medidas
  UNION
  SELECT
    cod_variable_clinic,
    des_variable_clinic,
    'tip_variables',
    'Measurement',
    'Clinical Observation'
  FROM  @source_schema.tba_tip_variables
  UNION
  SELECT
    cod_prestacion,
    des_prestacion,
    'tip_prest',
    'Measurement',
    'Lab Test'
  FROM  @source_schema.tba_tip_prest
  UNION
  SELECT
    cod_modalidad,
    des_modalidad,
    'modalidad',
    'Observation',
    'Social Context'
  FROM  @source_schema.tba_modalidad
  UNION
    SELECT
      cod_diagnostico,
      des_diagnostico,
      'cie9',
      'Condition',
      'Clinical Finding'
    FROM  @source_schema.tba_cie9
    UNION
    SELECT
      cod_procedimiento,
      des_procedimiento,
      'cie9p',
      'Procedure',
      'Procedure'
    FROM  @source_schema.tba_cie9p
    UNION
  SELECT
    cod_prinactivo,
    des_prinactivo,
    'prinactivo',
    'Drug',
    'Substance'
  FROM  @source_schema.tba_prinactivo
  UNION
  SELECT
    source_code,
    source_code_description,
    'num_events',
    'Observation',
    'Admin Concept'
  FROM @cdm_schema.source_to_concept_map
  WHERE source_vocabulary_id = 'ABUCASIS_NUM_EVENTS'
)
;

-- If vocabulary already exists, do not update
INSERT INTO @cdm_schema.vocabulary (
  vocabulary_id,
  vocabulary_name,
  vocabulary_concept_id
)
  SELECT
    DISTINCT
    left(upper('abucasis_' || table_name), 20) AS vocabulary_id,
    ''                                         AS vocabulary_name,
    0                                          AS vocabulary_concept_id
  FROM tba_merged
ON CONFLICT (vocabulary_id)
  DO NOTHING
;

-- If concept exists, update
INSERT INTO @cdm_schema.concept (
  concept_id,
  concept_code,
  vocabulary_id,
  concept_name,
  valid_start_date,
  valid_end_date,
  domain_id,
  concept_class_id
)
  SELECT
    ROW_NUMBER()
    OVER (
      ORDER BY
        table_name,
        code
      ) + 2000000000                           AS concept_id,
    code                                       AS concept_code,
    left(upper('abucasis_' || table_name), 20) AS vocabulary_id,
    description                                AS concept_name,
    current_date                               AS valid_start_date,
    '2099-12-31'                               AS valid_end_date,
    coalesce(domain_id, 'Metadata')            AS domain_id,
    coalesce(concept_class_id, 'Undefined')    AS concept_class_id
  FROM tba_merged
ON CONFLICT (concept_id)
  DO UPDATE
    SET concept_code   = excluded.concept_code,
      vocabulary_id    = excluded.vocabulary_id,
      concept_name     = excluded.concept_name,
      valid_start_date = excluded.valid_start_date,
      valid_end_date   = excluded.valid_end_date,
      domain_id        = excluded.domain_id,
      concept_class_id = excluded.concept_class_id
;
