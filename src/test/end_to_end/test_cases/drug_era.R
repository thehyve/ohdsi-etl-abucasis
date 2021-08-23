# ========================
# Drug era
# ========================

declareTest(id=900,'Drug exposure start and end date')
add_tb_sip_spo(id=900, numsipcod='A900', sexo = 'M', fecha_def=NULL, fecha_baja_sip = NULL)
add_tb_tratamientos(id=900,numsipcod='A900', id_tratamiento = 'TR900', dias_tratamiento = 90, fecha_inicio_tratamiento = '2015-05-05', fecha_fin_tratamiento='2015-08-05')
add_tb_prescrip(id=900,numsipcod='A900', numreceta = 'RE900', id_tratamiento = 'TR900',fecha_prescripcion='2015-05-05')
add_tb_rele(id=900,numsipcod='A900', numreceta = 'RE900', fecha_dispensacion = '2015-05-05')
expect_drug_era(person_id = lookup_person('person_id', person_source_value = 'A900'))
                     # drug_exposure_id = 1, drug_exposure_start_date = '2015-05-05', drug_exposure_end_date = '2015-06-04')

