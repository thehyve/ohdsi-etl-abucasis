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

SELECT 'C' AS origin,
       tb_ante_cmbd.numsipcod AS numsipcod,
       to_date(cast(tb_ante_cmbd.fecha_ingreso as TEXT),'YYYY-MM-DD') AS date

FROM public.tb_ante_cmbd;

INSERT INTO source_intermediate.intermediate_table_visit_ocurrence (origin, numsipcod, date )
SELECT 'M' AS origin,
        tb_morbilid.numsipcod AS numsipcod,
        TO_DATE(cast(tb_morbilid.fecha_inicio AS TEXT), 'YYYY-MM-DD')  AS date
FROM public.tb_morbilid;

--TODO this table will need to be deleted after CDM population?