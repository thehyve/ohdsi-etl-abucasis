/**
Unique person tables (sip_spo)
 - unique, sequential numsipcod identifiers
 - limit to 1000 persons.
 */
UPDATE public.tb_sip_spo
SET numsipcod = to_char(t.row_num, 'fmA00000')
FROM (
       SELECT
         row_number()
         OVER () AS row_num,
         numsipcod
       FROM public.tb_sip_spo
     ) t
WHERE t.numsipcod = tb_sip_spo.numsipcod
;

DELETE FROM public.tb_sip_spo
WHERE numsipcod > 'A01000'
;

UPDATE public.tb_sip_spo_resto_2015
SET numsipcod = to_char(t.row_num, 'fmA00000')
FROM (
       SELECT
         row_number()
         OVER () AS row_num,
         numsipcod
       FROM public.tb_sip_spo_resto_2015
     ) t
WHERE t.numsipcod = tb_sip_spo_resto_2015.numsipcod
;

DELETE FROM public.tb_sip_spo_resto_2015
WHERE numsipcod > 'A01000'
;

/**
Other tables (10,000 rows), only allow A00001 to A01000
 */
UPDATE public.tb_rele
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_prescrip
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_tratamientos
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_diag_juntos
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_proc_cmbd
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_prestaci
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_variables
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_ante_cmbd
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;

UPDATE public.tb_morbilid
SET numsipcod = to_char(cast(random() * 1000 + 1 AS INT), 'fmA00000')
;