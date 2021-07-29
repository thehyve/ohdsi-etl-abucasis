# ========================
# Condition occurrence
# ========================
declareTest(id=200, 'Condition occurrence start and end date')
add_tb_sip_spo(id=200, numsipcod='A200', sexo = 'M', fecha_def=NULL, fecha_baja_sip = NULL)
add_tb_ante_cmbd(id=200,numsipcod='A200', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=200,numsipcod='A200', fecha_inicio='2013-01-01', fecha_fin='2013-02-01',
                   origen = 'C',peso_grd=NULL, orden=NULL)
expect_condition_occurrence(person_id = lookup_person('person_id', person_source_value = 'A200'),
                            condition_start_date = '2013-01-01', condition_end_date = '2013-02-01')


declareTest(id=201,'Condition occurrence from tb_diag_juntos and not tb_ante_cmbd linked to a valid visit_id')
add_tb_sip_spo(id=201, numsipcod='A201', sexo = 'M', fecha_def=NULL, fecha_baja_sip=NULL) 
add_tb_ante_cmbd(id=201, numsipcod='A201', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=201, numsipcod='A201', fecha_inicio = '2012-08-01', fecha_fin = '2013-03-01',
                   peso_grd=NULL, orden=NULL) 
expect_condition_occurrence(person_id = lookup_person('person_id', person_source_value = 'A201'),
                            visit_occurrence_id = lookup_visit_occurrence('visit_occurrence_id', person_id=lookup_person('person_id', person_source_value = 'A201')),
                            condition_start_date = '2012-08-01')

declareTest(id=202,'Condition occurrence outside valid observation period')
add_tb_sip_spo(id=202, numsipcod='A202', sexo = 'M', fecha_def=NULL, fecha_baja_sip=NULL) 
add_tb_diag_juntos(id=202,numsipcod='A202', fecha_inicio = '2010-08-01', fecha_fin = '2013-03-01',
                   peso_grd=NULL, orden=NULL)
expect_no_condition_occurrence(person_id = lookup_person('person_id', person_source_value = 'A202'),
                               condition_start_date = '2010-08-01')
