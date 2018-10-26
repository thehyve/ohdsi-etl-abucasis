/**
Rationale: every treatment should have a unique id_tratamiento
About 4x more prescriptions than treatments, so here 2500 rows in tratamientos and 10,000 in prescrip/rele.
Every prescrip has a unique numreceta.
Every rele has a random numreceta (this does cause some prescriptions with multiple dispensions...)
 */

/** Unique id_tratamiento **/
UPDATE public.tb_tratamientos
SET id_tratamiento = to_char(t.row_num, 'fmT00000')
FROM (
       SELECT
         row_number()
         OVER () AS row_num,
         id
       FROM public.tb_tratamientos
     ) t
WHERE t.id = tb_tratamientos.id
;

DELETE FROM public.tb_tratamientos
WHERE id_tratamiento > 'T02500'
;

UPDATE public.tb_prescrip
SET id_tratamiento = to_char(cast(random() * 2500 + 1 AS INT), 'fmT00000')
;

/** Unique numreceta **/
UPDATE public.tb_prescrip
SET numreceta = to_char(t.row_num, 'fmR00000')
FROM (
       SELECT
         row_number()
         OVER () AS row_num,
         id
       FROM public.tb_prescrip
     ) t
WHERE t.id = tb_prescrip.id
;

UPDATE public.tb_rele
SET numreceta = to_char(cast(random() * 10000 + 1 AS INT), 'fmR00000')
;

-- select count(*)
-- from public.tb_rele
--   JOIN public.tb_prescrip USING (numreceta)
--   JOIN public.tb_tratamientos USING (id_tratamiento)
-- ;