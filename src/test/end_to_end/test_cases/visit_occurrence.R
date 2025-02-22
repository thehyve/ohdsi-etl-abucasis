# ========================
# Visit Ocurrence
# ========================
declareTest(id=400, 'Visit end date')
add_tb_sip_spo(id=400, numsipcod='A400', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_ante_cmbd(id=400, numsipcod = 'A400', fecha_ingreso='2013-01-01',fecha_alta = '2016-12-31')
expect_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A400'),
                        visit_start_date = '2013-01-01',visit_end_date = '2016-12-31')

declareTest(id=401, 'Unique visit for patients that were discharged to another hospital')
add_tb_sip_spo(id=401, numsipcod='A401', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_ante_cmbd(id=401, numsipcod = 'A401', fecha_ingreso = '2013-01-01', fecha_alta = '2013-02-01', cir_ingreso = 2, cir_alta = 7)
add_tb_ante_cmbd(id=401, numsipcod = 'A401', fecha_ingreso = '2013-01-01', fecha_alta = '2013-05-01', cir_alta = 1)
expect_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A401'),
                        visit_start_date='2013-01-01', visit_end_date = '2013-05-01')
expect_no_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A401'),
                           visit_start_date='2013-01-01', visit_end_date = '2013-02-01')

declareTest(id=402, 'Visit start and end date for ambulatory visits')
add_tb_sip_spo(id=402, numsipcod='A402', sexo = 'M',fecha_def=NULL, fecha_baja_sip = NULL)
add_tb_morbilid(id=402, numsipcod='A402', fecha_inicio = '2014-01-01', fecha_fin = '2013-03-01')
expect_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A402'),
                        visit_start_date = '2014-01-01', visit_end_date = '2014-01-01')

declareTest(id=403,'Visit outside valid observation period')
add_tb_sip_spo(id=403, numsipcod='A403', sexo = 'M',fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_morbilid(id=403, numsipcod='A403', fecha_inicio = '2009-01-01', fecha_fin = '2013-03-01')
expect_no_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A403'),
                           visit_start_date = '2009-01-01')
add_tb_ante_cmbd(id=403,numsipcod = 'A403', fecha_ingreso = '2009-01-01', fecha_alta = '2013-03-01')
expect_no_visit_occurrence(person_id = lookup_person('person_id', person_source_value = 'A403'),
                           visit_start_date = '2009-01-01')

