/*
This file contains additional indices to be applied to abucasis in order to optimize the ETL
 */

CREATE INDEX rele_numreceta ON public.tb_rele USING btree (numreceta);
CREATE INDEX prescrip_numreceta ON public.tb_prescrip USING btree (numreceta);


CREATE INDEX prescrip_id_tratamiento ON public.tb_prescrip USING btree (id_tratamiento);
CREATE INDEX tratamientos_id_tratamiento ON public.tb_tratamientos USING btree (id_tratamiento);