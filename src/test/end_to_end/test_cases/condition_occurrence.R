# ========================
# Condition occurrence
# ========================
declareTest(id=200, 'Condition occurrence start and end date')
expect_person(person_id=200, person_source_value='A02')
add_tb_ante_cmbd(id=200,numsipcod='A02', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(id=200,numsipcod='A02', fecha_inicio='2013-01-01', fecha_fin='2013-02-01', origen = 'C')
expect_condition_occurrence(person_id = 200, condition_start_date = '2013-01-01', condition_end_date = '2013-02-01')


declareTest(id=201,'Condition occurrence from tb_diag_juntos and not tb_ante_cmbd linked to a valid visit_id')
add_tb_diag_juntos(id=201, numsipcod='A02', fecha_inicio = '2012-08-01', fecha_fin = '2013-03-01')
expect_condition_occurrence(person_id = 201, visit_occurrence_id = 7)


declareTest(id=202,'Condition occurrence outside valid observation period')
add_tb_diag_juntos(id=202,numsipcod='A02', fecha_inicio = '2010-08-01', fecha_fin = '2013-03-01')
expect_no_condition_occurrence(person_id = 202, condition_start_date = '2010-08-01')
