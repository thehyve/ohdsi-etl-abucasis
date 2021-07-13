# ========================
# Visit Ocurrence
# ========================
declareTest(id=400, 'Visit end date')
expect_person(person_id=400, person_source_value='A01')
add_tb_ante_cmbd(id=400, numsipcod = 'A01', fecha_ingreso='2013-01-01',fecha_alta = '2016-12-31')
expect_visit_occurrence(person_id=400, visit_start_date = '2013-01-01',visit_end_date = '2016-12-31')


declareTest(id=401, 'Unique visit for patients that were discharged to another hospital')
expect_person(person_id=401, person_source_value='A03')
add_tb_ante_cmbd(id=401, numsipcod = 'A03', fecha_ingreso = '2013-01-01', fecha_alta = '2013-02-01', cir_ingreso = 2, cir_alta = 7)
add_tb_ante_cmbd(id=401, numsipcod = 'A03', fecha_ingreso = '2013-01-01', fecha_alta = '2013-05-01', cir_alta = 1)
expect_visit_occurrence(person_id = 401, visit_start_date='2013-01-01', visit_end_date = '2013-05-01')
expect_no_visit_occurrence(person_id = 401, visit_start_date='2013-01-01', visit_end_date = '2013-02-01')

declareTest(id=402, 'Visit start and end date for ambulatory visits')
expect_person(person_id=402, person_source_value='A02')
add_tb_morbilid(id=402,numsipcod='A02', fecha_inicio = '2014-01-01', fecha_fin = '2013-03-01')
expect_visit_occurrence(person_id = 402, visit_start_date = '2014-01-01', visit_end_date = '2014-01-01')

declareTest(id=403,'Visit outside valid observation period')
add_tb_morbilid(id=403, numsipcod='A02', fecha_inicio = '2009-01-01', fecha_fin = '2013-03-01')
expect_no_visit_occurrence(person_id = 403, visit_start_date = '2009-01-01')
add_tb_ante_cmbd(id=403,numsipcod = 'A02', fecha_ingreso = '2009-01-01', fecha_alta = '2013-03-01')
expect_no_visit_occurrence(person_id = 403, visit_start_date = '2009-01-01')

