# ========================
# Measurement
# ========================
declareTest(id=600,'Measurement date for clinical and laboratory measurements')
add_tb_sip_spo(id=600, numsipcod='A600', fecha_nac='1991-01-01', sexo='H') # before A01
add_tb_prestaci(id=600,numsipcod='A600', fecha_registro='2012-05-05', cod_prestacion='123', cod_ud_medida='123')
expect_measurement(person_id=600,measurement_id=1, measurement_date='2012-05-05')

declareTest(id=601,'NO Measurement if cod_ud_medida has conflictive value')
add_tb_sip_spo(id=601, numsipcod='A601', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01') # before A05
add_tb_prestaci(id=601,numsipcod='A601', cod_ud_medida = ".", cod_prestacion='123')
expect_no_measurement(person_id = 601)
add_tb_prestaci(id=601,numsipcod='A601', cod_ud_medida = "I", cod_prestacion='123')
expect_no_measurement(person_id = 601)
add_tb_variables(id=601,numsipcod='A601', cod_ud_medida = ".", cod_variable_clinic='123')
expect_no_measurement(person_id = 601)
add_tb_variables(id=601,numsipcod='A601', cod_ud_medida = "I", cod_variable_clinic='123')
expect_no_measurement(person_id = 601)

declareTest(id=602,'Exclude measurements with faulty cod_prestacion')
add_tb_sip_spo(id=602, numsipcod='A602', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01') # before A05
add_tb_prestaci(id=602,numsipcod='A602', cod_prestacion = "-1", cod_ud_medida='123') # A56?
expect_no_measurement(person_id = 602)
add_tb_variables(id=602,numsipcod='A602', cod_variable_clinic="-1", cod_ud_medida='123')
expect_no_measurement(person_id = 602)

declareTest(id=603,'Measurement date for tb_variables')
add_tb_sip_spo(id=603, numsipcod='A603', fecha_nac='1991-01-01', sexo='H') # before A01
add_tb_variables(id=603,numsipcod='A603', fecha_registro='2012-05-05', cod_variable_clinic='123', cod_ud_medida='123')
expect_measurement(person_id=603, measurement_id=2,measurement_date='2012-05-05')

declareTest(id=604,'Measurement for categorical measurement as value_as_concept_id ')
add_tb_sip_spo(id=604, numsipcod='A604', fecha_nac='1991-01-01', sexo='H') # before A01
add_tb_variables(id=604,numsipcod='A604', fecha_registro='2012-05-05', cod_variable_clinic='CP', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=604, measurement_id=3,value_as_concept_id = 0)

declareTest(id=605,'Measurement for numerical measurement as value_as_number')
add_tb_sip_spo(id=605, numsipcod='A605', fecha_nac='1991-01-01', sexo='H') # before A01
add_tb_variables(id=605,numsipcod='A605', fecha_registro='2012-05-05', cod_variable_clinic='PESO', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=605, measurement_id=4,value_as_number = 6)

declareTest(id=606,'Measurement derived from procedure if procedure_concept_id is from Measurement domain')
add_tb_sip_spo(id=606, numsipcod='A606', fecha_nac='1991-01-01', sexo='H') # before A01
add_tb_proc_cmbd(id=606,numsipcod='A606', fecha_ingreso='2015-09-09', cie9p='89.43')
expect_measurement(person_id=606, measurement_id=5,measurement_date='2015-09-09')
