# ========================
# Condition era
# ========================

declareTest(id=800, 'Condition era start and end date')
add_tb_sip_spo(id=800, numsipcod='A800', sexo = 'M', fecha_def=NULL, fecha_baja_sip = NULL)
add_tb_ante_cmbd(id=800,numsipcod='A800', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=800,numsipcod='A800', fecha_inicio='2013-01-01', fecha_fin='2013-02-01',
                   origen = 'C',peso_grd=NULL, orden=NULL)
expect_condition_era(person_id = lookup_person('person_id', person_source_value = 'A800'),
                            condition_era_start_datetime = '2013-01-01 00:00:00.000000',
                            condition_era_end_datetime = '2013-02-01 00:00:00.000000')
