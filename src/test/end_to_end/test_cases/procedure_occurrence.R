# ========================
# Procedure occurrence
# ========================
declareTest(id=300, 'Procedure occurrence')
add_tb_proc_cmbd(id=300, numsipcod='A05', cie9p = '13.41', fecha_ingreso='2017-01-01', fecha_alta='2017-02-01')
expect_person(person_id=300, person_source_value='A05')
expect_procedure_occurrence(procedure_source_value = '13.41', procedure_date='2017-01-01')

declareTest(id=301, 'Procedure occurrence visit')
expect_person(person_id=301, person_source_value='A02')
add_tb_ante_cmbd(id=301, numsipcod = 'A02', fecha_ingreso = '2018-01-01')
expect_visit_occurrence(person_id = 301,visit_start_date = '2018-01-01')
add_tb_proc_cmbd(id=301, numsipcod = 'A02', fecha_ingreso = '2018-01-01',fecha_alta='2018-02-02',tipo_actividad = 'HOS', cie9p = '13.41')
expect_procedure_occurrence(person_id=301, procedure_source_value = '13.41')

declareTest(id=302, 'Procedure occurrence start and end date')
expect_person(person_id=302, person_source_value='A01')
add_tb_proc_cmbd(id=302, numsipcod='A01', fecha_ingreso = '2012-01-01')
expect_procedure_occurrence(person_id=302, procedure_date='2012-01-01')

declareTest(id=303, 'Procedure occurrence outside valid observation period')
add_tb_proc_cmbd(id=303, numsipcod='A01', fecha_ingreso = '2010-01-01')#, person_id=303)
expect_no_procedure_occurrence(person_id=303, procedure_date='2010-01-01')

declareTest(id=304, 'Procedure occurrence from procedure mapped to concept_id 0')
add_tb_proc_cmbd(id=304, numsipcod='A05', cie9p = 'DJSHFKJDSGKJD', fecha_ingreso='2017-01-01', fecha_alta='2017-02-01')
expect_procedure_occurrence(procedure_source_value = 'DJSHFKJDSGKJD', procedure_date='2017-01-01')
