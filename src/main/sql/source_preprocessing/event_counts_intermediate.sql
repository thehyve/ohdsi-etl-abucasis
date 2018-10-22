DROP TABLE source_intermediate.event_counts
;

WITH num_events_with_ano_mes (numsipcod, ano_mes, num_events, source_name) AS (
  SELECT
    numsipcod,
    ano_mes,
    num_ac_adversos,
    'aconadve'
  FROM public.tb_aconadve

  UNION ALL

  SELECT
    numsipcod,
    ano_mes,
    num_alergias,
    'alergias'
  FROM public.tb_alergias

  UNION ALL

  SELECT
    numsipcod,
    ano_mes,
    num_cieatc,
    'cie_atc'
  FROM public.tb_cie_atc

  UNION ALL

  SELECT
    numsipcod,
    ano_mes,
    num_duplicidades,
    'duplicid'
  FROM public.tb_duplicid

), num_event_records AS (
  SELECT
    numsipcod,
    CAST(ano_mes || '01' AS DATE) AS date,
    num_events,
    source_name
  FROM num_events_with_ano_mes

  UNION ALL

  SELECT
    numsipcod,
    fecha_consulta,
    num_consultas,
    'cex'
  FROM tb_cex

  UNION ALL

  SELECT
    numsipcod,
    fecha_registro,
    num_consultas,
    'consultas_atp'
  FROM public.tb_consultas_atp

  UNION ALL

  SELECT
    numsipcod,
    fecha_urgencia,
    num_urgencias,
    'urgencias'
  FROM public.tb_urgencias
)
SELECT *
INTO source_intermediate.event_counts
FROM num_event_records
;