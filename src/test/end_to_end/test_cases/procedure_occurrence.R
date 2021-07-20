# ========================
# Procedure occurrence
# ========================
declareTest(id=300, 'Procedure occurrence')
add_tb_sip_spo(id=300, numsipcod='A300', sexo = 'M') 
add_tb_proc_cmbd(id=300, numsipcod='A300', cie9p = '13.41', fecha_ingreso='2017-01-01', fecha_alta='2017-02-01')
expect_procedure_occurrence(person_id=14, procedure_source_value = '13.41', procedure_date='2017-01-01')

declareTest(id=301, 'Procedure occurrence visit')
add_tb_sip_spo(id=301, numsipcod='A301', sexo = 'M') 
add_tb_ante_cmbd(id=301, numsipcod = 'A301', fecha_ingreso = '2018-01-01')
add_tb_proc_cmbd(id=301, numsipcod = 'A301', fecha_ingreso = '2018-01-01',fecha_alta='2018-02-02',tipo_actividad = 'HOS', cie9p = '13.41')
expect_procedure_occurrence(person_id=15, procedure_source_value = '13.41')

declareTest(id=302, 'Procedure occurrence start and end date')
add_tb_sip_spo(id=302, numsipcod='A302', fecha_nac='1991-01-01', sexo='H') 
add_tb_proc_cmbd(id=302, numsipcod='A302', fecha_ingreso = '2012-01-02')
expect_procedure_occurrence(person_id=16, procedure_date='2012-01-02')

declareTest(id=303, 'Procedure occurrence outside valid observation period')
add_tb_sip_spo(id=303, numsipcod='A303', fecha_nac='1991-01-01', sexo='H')
add_tb_proc_cmbd(id=303, numsipcod='A303', fecha_ingreso = '2010-01-02') 
expect_no_procedure_occurrence(person_id=17, procedure_date='2010-01-02')

declareTest(id=304, 'Procedure occurrence from procedure mapped to concept_id 0')
add_tb_sip_spo(id=304, numsipcod='A304', sexo = 'M') 
add_tb_proc_cmbd(id=304, numsipcod='A304', cie9p = 'DJSHFKJDSGKJD', fecha_ingreso='2017-01-01', fecha_alta='2017-02-01')
expect_procedure_occurrence(person_id=18, procedure_source_value = 'DJSHFKJDSGKJD', procedure_date='2017-01-01')
