# ========================
# Measurement
# ========================
declareTest(id=600,'Measurement date for clinical and laboratory measurements')
expect_person(person_id=600, person_source_value='A01')
add_tb_prestaci(id=600,numsipcod='A01', fecha_registro='2012-05-05', cod_prestacion='123', cod_ud_medida='123')
expect_measurement(person_id=600,measurement_id=1, measurement_date='2012-05-05')

declareTest(id=601,'NO Measurement if cod_ud_medida has conflictive value')
expect_person(person_id=600, person_source_value='A05')
add_tb_prestaci(id=601,numsipcod='A05', cod_ud_medida = ".", cod_prestacion='123')
expect_no_measurement(person_id = 600)
add_tb_prestaci(id=601,numsipcod='A05', cod_ud_medida = "I", cod_prestacion='123')
expect_no_measurement(person_id = 601)
add_tb_variables(id=601,numsipcod='A05', cod_ud_medida = ".", cod_variable_clinic='123')
expect_no_measurement(person_id = 601)
add_tb_variables(id=601,numsipcod='A05', cod_ud_medida = "I", cod_variable_clinic='123')
expect_no_measurement(person_id = 601)

declareTest(id=602,'Exclude measurements with faulty cod_prestacion')
expect_person(person_id=602, person_source_value='A05')
add_tb_prestaci(id=602,numsipcod='A56', cod_prestacion = "-1", cod_ud_medida='123')
expect_no_measurement(person_id = 602)
add_tb_variables(id=602,numsipcod='A05', cod_variable_clinic="-1", cod_ud_medida='123')
expect_no_measurement(person_id = 602)

declareTest(id=603,'Measurement date for tb_variables')
expect_person(person_id=603, person_source_value='A01')
add_tb_variables(id=603,numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='123', cod_ud_medida='123')
expect_measurement(person_id=603, measurement_id=2,measurement_date='2012-05-05')

declareTest(id=604,'Measurement for categorical measurement as value_as_concept_id ')
expect_person(person_id=604, person_source_value='A01')
add_tb_variables(id=604,numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='CP', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=604, measurement_id=3,value_as_concept_id = 0)

declareTest(id=605,'Measurement for numerical measurement as value_as_number')
expect_person(person_id=605, person_source_value='A01')
add_tb_variables(id=605,numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='PESO', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=605, measurement_id=4,value_as_number = 6)

declareTest(id=606,'Measurement derived from procedure if procedure_concept_id is from Measurement domain')
add_tb_proc_cmbd(id=606,numsipcod='A01', fecha_ingreso='2015-09-09', cie9p='89.43')
expect_measurement(person_id=606, measurement_date='2015-09-09')
