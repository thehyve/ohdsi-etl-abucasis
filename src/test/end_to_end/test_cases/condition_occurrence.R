# ========================
# Condition occurrence
# ========================
declareTest(id=200, 'Condition occurrence start and end date')
add_tb_sip_spo(id=11, numsipcod='A200', sexo = 'M')
add_tb_ante_cmbd(id=11,numsipcod='A200', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=11,numsipcod='A200', fecha_inicio='2013-01-01', fecha_fin='2013-02-01', origen = 'C')
expect_condition_occurrence(person_id = 11, condition_start_date = '2013-01-01', condition_end_date = '2013-02-01')


declareTest(id=201,'Condition occurrence from tb_diag_juntos and not tb_ante_cmbd linked to a valid visit_id')
add_tb_sip_spo(id=201, numsipcod='A201', sexo = 'M') 
add_tb_ante_cmbd(id=201, numsipcod='A201', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=201, numsipcod='A201', fecha_inicio = '2012-08-01', fecha_fin = '2013-03-01') 
expect_condition_occurrence(person_id = 12, visit_occurrence_id = 2)


declareTest(id=202,'Condition occurrence outside valid observation period')
add_tb_sip_spo(id=202, numsipcod='A202', sexo = 'M') 
add_tb_diag_juntos(id=13,numsipcod='A202', fecha_inicio = '2010-08-01', fecha_fin = '2013-03-01')
expect_no_condition_occurrence(person_id = 13, condition_start_date = '2010-08-01')
