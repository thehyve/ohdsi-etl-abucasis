SELECT tb_prestaci.cod_prestacion, cod_ud_medida, tba_tip_prest.des_prestacion, COUNT(cod_ud_medida)
FROM public.tb_prestaci
  LEFT JOIN public.tba_tip_prest ON tb_prestaci.cod_prestacion=tba_tip_prest.cod_prestacion
GROUP BY tb_prestaci.cod_prestacion, cod_ud_medida, tba_tip_prest.des_prestacion
ORDER BY tb_prestaci.cod_prestacion
;
