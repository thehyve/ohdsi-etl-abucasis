-- Generate new lookup table
DROP TABLE source_intermediate.intermediate_table_visit_ocurrence
;

CREATE TABLE source_intermediate.intermediate_table_visit_ocurrence
(
  visit_ocurrence_id BIGSERIAL NOT NULL,
  numsipcod          varchar(25),
  date               date,
  origin             varchar(1)
);

ALTER TABLE source_intermediate.intermediate_table_visit_ocurrence
  OWNER TO postgres
;

INSERT INTO source_intermediate.intermediate_table_visit_ocurrence (origin, numsipcod, date)
  SELECT *
  FROM (
         -- Retrieve unique combinations SIP - FECHA_INGRESO present in ABUCASIS
         SELECT DISTINCT
           'C'                                                AS origin,
           numsipcod                                          AS numsipcod,
           TO_DATE(cast(fecha_ingreso AS TEXT), 'YYYY-MM-DD') AS date
         FROM
           public.tb_ante_cmbd

         UNION

         -- Retrieve unique combinations SIP - FECHA_INICIO present in ABUCASIS
         SELECT DISTINCT
           'M'                                               AS origin,
           numsipcod                                         AS numsipcod,
           TO_DATE(cast(fecha_inicio AS TEXT), 'YYYY-MM-DD') AS date
         FROM
           public.tb_morbilid
   ) t
;