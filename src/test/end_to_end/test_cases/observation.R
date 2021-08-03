# ========================
# Observation
# ========================
declareTest(id=700,'Observation death if patient died during hospitalization')
add_tb_sip_spo(id=700,numsipcod='A700', fecha_nac='1991-01-01', fecha_def='2012-02-05', fecha_baja_sip='2012-02-05') 
add_tb_ante_cmbd(id=700,numsipcod='A700', cir_alta='10', fecha_ingreso = '2012-01-01', fecha_alta = '2012-02-05')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A700'),
                   observation_date='2012-02-05', observation_type_concept_id = 44818516)

declareTest(id=701,'Observation death if patient died NOT during hospitalization')
add_tb_sip_spo(id=701,numsipcod='A701', fecha_nac='1994-01-01', fecha_def='2016-02-05', fecha_baja_sip='2016-02-05') 
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A701'),
                   observation_date='2016-02-05',observation_type_concept_id = 38000280)

declareTest(id=702,'Observation date from drug adverse effects')
add_tb_sip_spo(id=702,numsipcod='A702', fecha_nac='1991-01-01', fecha_def='2012-02-05', fecha_baja_sip='2012-02-05') 
add_tb_contraind(id=702,numsipcod='A702', ano_mes='201505')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A702'),
                   observation_date='2015-05-01')

declareTest(id=703,'Observation number and severity of drug adverse effects')
add_tb_sip_spo(id=703,numsipcod='A703', fecha_nac='1991-01-01', fecha_def='2012-02-05', , fecha_baja_sip='2012-02-05') 
add_tb_contraind(id=703,numsipcod='A703', num_contraindicaciones=5, tipo_contraindicacion='R')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A703'),
                   value_as_number=5,qualifier_concept_id=764184)
add_tb_contraind(id=703,numsipcod='A703', num_contraindicaciones=5, tipo_contraindicacion='A')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A703'),
                   value_as_number=5,qualifier_concept_id=4087703)

declareTest(id=704,'Observation date drug interaction')
add_tb_sip_spo(id=704, numsipcod='A704', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03')
add_tb_interacc(id=704,numsipcod='A704', ano_mes='201605')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A704'),
                   observation_date='2016-05-01')

declareTest(id=705,'Observation number and severity of drug interactions')
add_tb_sip_spo(id=705, numsipcod='A705', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') 
add_tb_interacc(id=705,numsipcod='A705', num_interacciones=5, gravedad_interaccion='LEVE')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A705'),
                   value_as_number=5,qualifier_concept_id=764184)
add_tb_interacc(id=705,numsipcod='A705', num_interacciones=5, gravedad_interaccion='MODERADA')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A705'),
                   value_as_number=5,qualifier_concept_id=4285732)
add_tb_interacc(id=705,numsipcod='A705', num_interacciones=5, gravedad_interaccion='GRAVE')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A705'),
                   value_as_number=5,qualifier_concept_id=4087703)

declareTest(id=706,'Observation date from Critical care unit stay')
add_tb_sip_spo(id=706, numsipcod='A706', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03')
add_tb_estancia_uci(id=706, numsipcod='A706', fecha='2013-01-05', num_estancia_uci=5)
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A706'),
                   observation_date='2013-01-05')

declareTest(id=707, 'Observation no days from Critical care unit stay')
add_tb_sip_spo(id=707, numsipcod='A707', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') 
add_tb_estancia_uci(id=707, numsipcod='A707', num_estancia_uci=5)
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A707'),
                   value_as_number=5, unit_concept_id=8512)

declareTest(id=708,'Observation date from sociodemographics')
add_tb_sip_spo(id=708, numsipcod='A708', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') 
add_tb_sip_spo_resto_2015(id=708,numsipcod='A708', fecha_corte='2013-02-05')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A708'),
                   observation_id=lookup_observation('observation_id', observation_concept_id=0, 
                                                     person_id = lookup_person('person_id', person_source_value = 'A708')),
                   observation_date='2013-02-05')

declareTest(id=709,'Observation modality and nationality from sociodemographics')
# Check if from 1 row of tb_sip_spo_resto_2015 2 rows in observation table are created
add_tb_sip_spo(id=709, numsipcod='A709', sexo = 'M', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') 
add_tb_sip_spo_resto_2015(id=709,numsipcod='A709', cod_modalidad='PUBLIC', nacionalidad_espanola ='S')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A709'),
                   observation_concept_id = 4135608)

declareTest(id=710,'Observation from prescribed but not dispensed drugs')
add_tb_sip_spo(id=710, numsipcod='A710', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') # before A01
add_tb_prescrip(id=710,numsipcod='A710', numreceta = 'RE9999', id_tratamiento = 'TR99999', fecha_prescripcion='2012-10-10')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A710'),
                   observation_concept_id=762823,observation_date = '2012-10-10')

declareTest(id=711,'Observation derived from procedure if procedure_concept_id is from Observation domain')
add_tb_sip_spo(id=711, numsipcod='A711', fecha_nac='1991-01-01', sexo='H', fecha_def='2012-03-03', fecha_baja_sip='2012-03-03') # before A01
add_tb_proc_cmbd(id=711,numsipcod='A711', fecha_ingreso='2015-09-09', cie9p='93.83')
expect_observation(person_id = lookup_person('person_id', person_source_value = 'A711'),
                   observation_date='2015-09-09')

