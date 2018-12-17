/*
This file contains additional indices to be applied to the source database to optimize the ETL
 */

CREATE INDEX IF NOT EXISTS rele_numreceta ON public.tb_rele USING btree (numreceta);
CREATE INDEX IF NOT EXISTS prescrip_numreceta ON public.tb_prescrip USING btree (numreceta);


CREATE INDEX IF NOT EXISTS prescrip_id_tratamiento ON public.tb_prescrip USING btree (id_tratamiento);
CREATE INDEX IF NOT EXISTS tratamientos_id_tratamiento ON public.tb_tratamientos USING btree (id_tratamiento);