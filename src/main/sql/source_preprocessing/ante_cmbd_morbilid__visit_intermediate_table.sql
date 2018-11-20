-- Generate new lookup table
DROP TABLE IF EXISTS source_intermediate.intermediate_table_visit_ocurrence
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

-- Explicit unique index to ensure uniqueness and speed up joins
CREATE UNIQUE INDEX intermediate_table_visit_ocurrence_numsipcod_date_origin_uindex
  ON source_intermediate.intermediate_table_visit_ocurrence (numsipcod, date, origin)
;

INSERT INTO source_intermediate.intermediate_table_visit_ocurrence (origin, numsipcod, date)
  SELECT *
  FROM (
       WITH hospitalizations_info AS (
                                    SELECT numsipcod, fecha_ingreso FROM @source_schema.tb_ante_cmbd
                                    UNION
                                    SELECT numsipcod, fecha_inicio AS fecha_ingreso FROM @source_schema.tb_diag_juntos WHERE origen = 'C'
                                      ),
           morbidity_info AS  (
                                   SELECT numsipcod, fecha_inicio FROM @source_schema.tb_morbilid
                                   UNION
                                   SELECT numsipcod, fecha_inicio  FROM @source_schema.tb_diag_juntos WHERE origen = 'M'
                                 )

       -- Retrieve unique combinations SIP - FECHA_INGRESO present in ABUCASIS
        SELECT DISTINCT
           'C'                                                AS origin,
           numsipcod                                          AS numsipcod,
           TO_DATE(cast(fecha_ingreso AS TEXT), 'YYYY-MM-DD') AS date
         FROM
              hospitalizations_info

         UNION

       -- Retrieve unique combinations SIP - FECHA_INICIO present in ABUCASIS

         SELECT DISTINCT
           'M'                                               AS origin,
           numsipcod                                         AS numsipcod,
           TO_DATE(cast(fecha_inicio AS TEXT), 'YYYY-MM-DD') AS date
         FROM
              morbidity_info
   ) t
;