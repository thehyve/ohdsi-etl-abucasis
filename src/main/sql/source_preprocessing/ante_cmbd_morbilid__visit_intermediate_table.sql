-- Generate lookup table
CREATE TABLE source_intermediate.intermediate_table_visit_ocurrence
(
  visit_ocurrence_id BIGSERIAL NOT NULL,
  numsipcod          varchar(25),
  date               date,
  origin             varchar(1)
);

ALTER TABLE source_intermediate.intermediate_table_visit_ocurrence
  owner to postgres;

INSERT INTO source_intermediate.intermediate_table_visit_ocurrence (origin, numsipcod, date)

SELECT 'C'                                                            AS origin,
       unique_table.numsipcod                                         AS numsipcod,
       TO_DATE(cast(unique_table.fecha_ingreso AS TEXT), 'YYYY-MM-DD')  AS date
FROM
     -- Retrieve unique combinations SIP - FECHA_INGRESO present in ABUCASIS
     (SELECT DISTINCT numsipcod, fecha_ingreso FROM public.tb_ante_cmbd) AS unique_table
;


INSERT INTO source_intermediate.intermediate_table_visit_ocurrence (origin, numsipcod, date )

SELECT 'M'                                                            AS origin,
       unique_table.numsipcod                                         AS numsipcod,
       TO_DATE(cast(unique_table.fecha_inicio AS TEXT), 'YYYY-MM-DD')  AS date
FROM
    -- Retrieve unique combinations SIP - FECHA_INICIO present in ABUCASIS
     (SELECT DISTINCT numsipcod, fecha_inicio FROM public.tb_morbilid) AS unique_table
;
