library('yaml')
source('TestFrameworkAbucasis.R') # Note: this is the pre-factorization (Dec-2017) framework


# get_defaults_all_clinic()

# Define
initFramework()
# ========================
# Person (+ Death CDMv5)
# ========================
declareTest('Person birth date')
add_tb_sip_spo(numsipcod='A01', fecha_nac='1991-01-01', sexo = 'H')
expect_person(person_source_value='A01', year_of_birth=1991, month_of_birth=1, day_of_birth=1)

declareTest('Person female')
add_tb_sip_spo(numsipcod='A02', sexo = 'M')
expect_person(person_source_value='A02', gender_concept_id=8532)

declareTest('Person male')
expect_person(person_source_value='A01', gender_concept_id=8507)

# Testing on death date because Unit tests are not compatible with CDMv6
declareTest('Expect no death date for non-suspended and non-dead person')
expect_no_death(person_id=1)

declareTest('Filter death before study start (=2012-01-01)')
add_tb_sip_spo(numsipcod='Z01', fecha_def = '2011-01-01')
expect_no_person(person_source_value = 'Z01')

declareTest('Filter exit before study start')
add_tb_sip_spo(numsipcod='Z02', fecha_baja_sip = '2009-12-20')
expect_no_person(person_source_value = 'Z02')

declareTest('Filter exit before and death after study start')
add_tb_sip_spo(numsipcod='Z03', fecha_def = '2015-01-01', fecha_baja_sip = '2009-12-20')
expect_no_person(person_source_value = 'Z03')

declareTest('Include death or exit ON study start')
add_tb_sip_spo(numsipcod='A03', fecha_def = '2012-01-01')
expect_person(person_source_value = 'A03')
add_tb_sip_spo(numsipcod='A04', fecha_baja_sip = '2012-01-01')
expect_person(person_source_value = 'A04')

# Any records with a person identifier (numsipcod) that is not present in the tb_sip_spo table, will be filtered out.
declareTest('Exclude persons without numpsipcod in tb_sip_spo')
add_tb_proc_cmbd(numsipcod='INVALIDSIPCODE', cie9p = '10.10')
expect_no_person(person_source_value = 'INVALIDSIPCODE')

declareTest('Person capture earliest recorded death date')
add_tb_sip_spo(numsipcod='A05', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01')
expect_person(person_id=5, person_source_value='A05')
expect_death(person_id=5, death_date='2015-01-01')


# ========================
# Observation period
# ========================
declareTest('Observation period start and end for people with suspension date')
expect_person(person_id=5, person_source_value='A05')
expect_observation_period(person_id=5, observation_period_start_date='2012-01-01', observation_period_end_date='2015-01-01')

declareTest('Observation period start and end for people with death date')
expect_person(person_id=3, person_source_value='A03')
expect_observation_period(person_id=3, observation_period_start_date='2012-01-01', observation_period_end_date='2012-01-01')


declareTest('Observation period default values start date 01-01-2012 end date 31-12-2016')
expect_person(person_id=1, person_source_value='A01')
expect_observation_period(person_id=1, observation_period_start_date='2012-01-01', observation_period_end_date='2016-12-31')

# TODO Observation recorded for death

# ========================
# Procedure occurrence
# ========================
declareTest('Procedure occurrence')
add_tb_proc_cmbd(numsipcod='A01', cie9p = '10.10')
expect_procedure_occurrence(procedure_source_value = '10.10')

declareTest('Procedure occurrence visit')
expect_person(person_id=2, person_source_value='A02')
add_tb_ante_cmbd(numsipcod = 'A02', fecha_ingreso = '2018-01-01')
expect_visit_occurrence(person_id = 2,visit_start_date = '2018-01-01')
add_tb_proc_cmbd(numsipcod = 'A02', fecha_ingreso = '2018-01-01', tipo_actividad = 'HOS', cie9p = '20.20')
expect_procedure_occurrence(procedure_source_value = '20.20') # NOTE: this id can change

declareTest('Procedure occurrence start and end date')
expect_person(person_id=1, person_source_value='A01')
add_tb_proc_cmbd(numsipcod='A01', fecha_ingreso = '2012-01-01')
expect_procedure_occurrence(person_id=1, procedure_date='2012-01-01')

declareTest('Procedure occurrence outside valid observation period')
add_tb_proc_cmbd(numsipcod='A01', fecha_ingreso = '2010-01-01')
expect_no_procedure_occurrence(person_id=1, procedure_date='2010-01-01')

# ========================
# Visit Ocurrence
# ========================
declareTest('Visit end date')
expect_person(person_id=1, person_source_value='A01')
add_tb_ante_cmbd(numsipcod = 'A01', fecha_ingreso='2013-01-01',fecha_alta = '2016-12-31')
expect_visit_occurrence(person_id=1, visit_start_date = '2013-01-01',visit_end_date = '2016-12-31')


declareTest('Unique visit for patients that were discharged to another hospital')
expect_person(person_id=3, person_source_value='A03')
add_tb_ante_cmbd(numsipcod = 'A03', fecha_ingreso = '2013-01-01', fecha_alta = '2013-02-01', cir_ingreso = 2, cir_alta = 7)
add_tb_ante_cmbd(numsipcod = 'A03', fecha_ingreso = '2013-01-01', fecha_alta = '2013-05-01', cir_alta = 1)
expect_visit_occurrence(person_id = 3, visit_start_date='2013-01-01', visit_end_date = '2013-05-01')
expect_no_visit_occurrence(person_id = 3, visit_start_date='2013-01-01', visit_end_date = '2013-02-01')

#TODO Unique visit occurrence ID for a person/start date hospitalization

declareTest('Visit start and end date for ambulatory visits')
expect_person(person_id=2, person_source_value='A02')
add_tb_morbilid(numsipcod='A02', fecha_inicio = '2014-01-01', fecha_fin = '2013-03-01')
expect_visit_occurrence(person_id = 2, visit_start_date = '2014-01-01', visit_end_date = '2014-01-01')

declareTest('Visit outside valid observation period')
add_tb_morbilid(numsipcod='A02', fecha_inicio = '2009-01-01', fecha_fin = '2013-03-01')
expect_no_visit_occurrence(person_id = 2, visit_start_date = '2009-01-01')
add_tb_ante_cmbd(numsipcod = 'A02', fecha_ingreso = '2009-01-01', fecha_alta = '2013-03-01')
expect_no_visit_occurrence(person_id = 2, visit_start_date = '2009-01-01')


# ========================
# Condition occurrence
# ========================
declareTest('Condition occurrence start and end date')
expect_person(person_id=2, person_source_value='A02')
add_tb_ante_cmbd(numsipcod='A02', fecha_ingreso='2013-01-01', fecha_alta='2013-02-01')
add_tb_diag_juntos(numsipcod='A02', fecha_inicio='2013-01-01', fecha_fin='2013-02-01', origen = 'C')
expect_condition_occurrence(person_id = 2, condition_start_date = '2013-01-01', condition_end_date = '2013-02-01')


declareTest('Condition occurrence from tb_diag_juntos and not tb_ante_cmbd linked to a valid visit_id')
add_tb_diag_juntos(numsipcod='A02', fecha_inicio = '2012-08-01', fecha_fin = '2013-03-01')
expect_condition_occurrence(person_id = 2, visit_occurrence_id = 7)


declareTest('Condition occurrence outside valid observation period')
add_tb_diag_juntos(numsipcod='A02', fecha_inicio = '2010-08-01', fecha_fin = '2013-03-01')
expect_no_condition_occurrence(person_id = 2, condition_start_date = '2010-08-01')

# ========================
# Drug exposure and era
# ========================
declareTest('Drug exposure start and end date')
expect_person(person_id=2, person_source_value='A02')
add_tb_tratamientos(numsipcod='A02', id_tratamiento = 'TR001', dias_tratamiento = 90)
add_tb_prescrip(numsipcod='A02', numreceta = 'RE001', id_tratamiento = 'TR001')
add_tb_prescrip(numsipcod='A02', numreceta = 'RE002', id_tratamiento = 'TR001')
add_tb_prescrip(numsipcod='A02', numreceta = 'RE003', id_tratamiento = 'TR001')
add_tb_rele(numsipcod='A02', numreceta = 'RE001', fecha_dispensacion = '2015-05-05')
add_tb_rele(numsipcod='A02', numreceta = 'RE002', fecha_dispensacion = '2015-06-05')
add_tb_rele(numsipcod='A02', numreceta = 'RE003', fecha_dispensacion = '2015-07-05')
# '2015-05-05' + 90/3 days ='2015-06-04'
expect_drug_exposure(person_id=2, drug_exposure_id = 1, drug_exposure_start_date = '2015-05-05', drug_exposure_end_date = '2015-06-04')

declareTest('Drug exposure derivation of total days supply from treatment dates')
expect_person(person_id=1, person_source_value='A01')
add_tb_rele(numsipcod='A01', numreceta = 'RE101', fecha_dispensacion = '2015-05-06')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE101', id_tratamiento = 'TR101')
add_tb_tratamientos(numsipcod='A01', id_tratamiento ='TR101', dias_tratamiento=NULL, fecha_inicio_tratamiento='2015-05-05', fecha_fin_tratamiento = '2015-05-10')
# Patient bought the drug 1 day after the treatment was prescribed (see tb_rele)
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2015-05-06', drug_exposure_end_date = '2015-05-11')

declareTest('Drug exposure quantity calculation per hour')
expect_person(person_id=1, person_source_value='A01')
# 30 days, 1 per 24 hours over 1 precription = 30
add_tb_tratamientos(numsipcod='A01', id_tratamiento = 'TR011', dias_tratamiento = 30, unidades=1, cadencia=24, tipo_posologia='Horaria')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE021', id_tratamiento = 'TR011')
add_tb_rele(numsipcod='A01', numreceta = 'RE021', fecha_dispensacion = '2017-01-01')
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2017-01-01', quantity=30)

declareTest('Drug exposure quantity calculation per day')
# 180 days, 5 per 2 days over 1 precription = 450
add_tb_tratamientos(numsipcod='A01', id_tratamiento = 'TR012', dias_tratamiento = 180, unidades=5, cadencia=2, tipo_posologia='Diaria')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE022', id_tratamiento = 'TR012')
add_tb_rele(numsipcod='A01', numreceta = 'RE022', fecha_dispensacion = '2017-02-01')
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2017-02-01', quantity=450)

declareTest('Drug exposure quantity with other posologia')
add_tb_tratamientos(numsipcod='A01', id_tratamiento = 'TR013', unidades=50, tipo_posologia='Sin Cadencia')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE024', id_tratamiento = 'TR013')
add_tb_rele(numsipcod='A01', numreceta = 'RE024', fecha_dispensacion = '2017-04-01')
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2017-04-01', quantity=50)

declareTest('Drug exposure quantity with zero cadencia')
expect_person(person_id=3, person_source_value='A03')
add_tb_tratamientos(numsipcod='A03', id_tratamiento = 'TR014',dias_tratamiento=1, unidades=30, cadencia=0.0)
add_tb_prescrip(numsipcod='A03', numreceta = 'RE023', id_tratamiento = 'TR014')
add_tb_rele(numsipcod='A03', numreceta = 'RE023', fecha_dispensacion = '2017-03-01')
expect_drug_exposure(person_id=3, drug_exposure_start_date = '2017-03-01', quantity=30)

declareTest('Drug exposure quantity and days_supply over multiple prescriptions')
expect_person(person_id=1, person_source_value='A01')
# 90 days, 2 per 24 hours over 3 precriptions = 60 per exposure
add_tb_tratamientos(numsipcod='A01', id_tratamiento = 'TR002', dias_tratamiento = 90, unidades=2, tipo_posologia='Horaria', cadencia=24)
add_tb_prescrip(numsipcod='A01', numreceta = 'RE011', id_tratamiento = 'TR002')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE012', id_tratamiento = 'TR002')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE013', id_tratamiento = 'TR002')
add_tb_rele(numsipcod='A01', numreceta = 'RE011', fecha_dispensacion = '2016-05-01')
add_tb_rele(numsipcod='A01', numreceta = 'RE012', fecha_dispensacion = '2016-06-01')
add_tb_rele(numsipcod='A01', numreceta = 'RE013', fecha_dispensacion = '2016-07-01')

expect_drug_exposure(person_id=1, drug_exposure_start_date = '2016-05-01', quantity=60, days_supply=30)
declareTest('Drug exposure refill')
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2016-06-01', refills=1)
expect_drug_exposure(person_id=1, drug_exposure_start_date = '2016-07-01', refills=2)

# TODO: drug era test does not work
# note: this is because the unit test assumes CDMv5 and drug_era_start_date column does not exist anymore in CDMv6
# declareTest('Drug era')
# expect_drug_era(person_id=1, drug_era_start_date='2016-05-01 00:00:00.000', drug_era_end_date='2016-07-31 00:00:00.000', drug_exposure_count=3)

# ========================
# Measurement
# ========================
declareTest('Measurement date for clinical and laboratory measurements')
expect_person(person_id=1, person_source_value='A01')
add_tb_prestaci(numsipcod='A01', fecha_registro='2012-05-05', cod_prestacion='123', cod_ud_medida='123')
expect_measurement(person_id=1,measurement_id=1, measurement_date='2012-05-05')

declareTest('NO Measurement if cod_ud_medida has conflictive value')
expect_person(person_id=5, person_source_value='A05')
add_tb_prestaci(numsipcod='A05', cod_ud_medida = ".", cod_prestacion='123')
expect_no_measurement(person_id = 5)
add_tb_prestaci(numsipcod='A05', cod_ud_medida = "I", cod_prestacion='123')
expect_no_measurement(person_id = 5)
add_tb_variables(numsipcod='A05', cod_ud_medida = ".", cod_variable_clinic='123')
expect_no_measurement(person_id = 5)
add_tb_variables(numsipcod='A05', cod_ud_medida = "I", cod_variable_clinic='123')
expect_no_measurement(person_id = 5)

declareTest('Exclude measurements with faulty cod_prestacion')
expect_person(person_id=5, person_source_value='A05')
add_tb_prestaci(numsipcod='A56', cod_prestacion = "-1", cod_ud_medida='123')
expect_no_measurement(person_id = 5)
add_tb_variables(numsipcod='A05', cod_variable_clinic="-1", cod_ud_medida='123')
expect_no_measurement(person_id = 5)

declareTest('Measurement date for tb_variables')
expect_person(person_id=1, person_source_value='A01')
add_tb_variables(numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='123', cod_ud_medida='123')
expect_measurement(person_id=1, measurement_id=2,measurement_date='2012-05-05')

declareTest('Measurement for categorical measurement as value_as_concept_id ')
expect_person(person_id=1, person_source_value='A01')
add_tb_variables(numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='CP', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=1, measurement_id=3,value_as_concept_id = 0)

declareTest('Measurement for numerical measurement as value_as_number')
expect_person(person_id=1, person_source_value='A01')
add_tb_variables(numsipcod='A01', fecha_registro='2012-05-05', cod_variable_clinic='PESO', valor_registrado = '6', cod_ud_medida='123')
expect_measurement(person_id=1, measurement_id=4,value_as_number = 6)

# declareTest('Measurement derived from procedure if procedure concept is from measurement domain')
# add_tb_proc_cmbd(numsipcod='A01', fecha_ingreso='2012-09-09', cie9p='89.43')
# expect_measurement(person_id=1, measurement_date='2012-09-09')


# ========================
# Observation
# ========================
declareTest('Observation death if patient died during hospitalization')
add_tb_sip_spo(numsipcod='A06', fecha_nac='1991-01-01', fecha_def='2012-02-05')
expect_person(person_id=6, person_source_value='A06')
add_tb_ante_cmbd(numsipcod='A06', cir_alta='10', fecha_ingreso = '2012-01-01', fecha_alta = '2012-02-05')
expect_observation(person_id = 6, observation_date='2012-02-05', observation_type_concept_id = 44818516)

declareTest('Observation death if patient died NOT during hospitalization')
add_tb_sip_spo(numsipcod='A07', fecha_nac='1994-01-01', fecha_def='2016-02-05')
expect_person(person_id=7, person_source_value='A07')
expect_observation(person_id=7, observation_date='2016-02-05',observation_type_concept_id = 38000280)

declareTest('Observation date from drug adverse effects')
add_tb_contraind(numsipcod='A06', ano_mes='201505')
expect_observation(person_id=6,observation_date='2015-05-01')

declareTest('Observation number and severity of drug adverse effects')
add_tb_contraind(numsipcod='A06', num_contraindicaciones=5, tipo_contraindicacion='R')
expect_observation(person_id=6,value_as_number=5,qualifier_concept_id=764184)
add_tb_contraind(numsipcod='A06', num_contraindicaciones=5, tipo_contraindicacion='A')
expect_observation(person_id=6,value_as_number=5,qualifier_concept_id=4087703)

declareTest('Observation date drug interaction')
expect_person(person_id=1, person_source_value='A01')
add_tb_interacc(numsipcod='A01', ano_mes='201605')
expect_observation(person_id=1,observation_date='2016-05-01')

declareTest('Observation number and severity of drug interactions')
expect_person(person_id=1, person_source_value='A01')
add_tb_interacc(numsipcod='A01', num_interacciones=5, gravedad_interaccion='LEVE')
expect_observation(person_id=1,value_as_number=5,qualifier_concept_id=764184)
add_tb_interacc(numsipcod='A01', num_interacciones=5, gravedad_interaccion='MODERADA')
expect_observation(person_id=1,value_as_number=5,qualifier_concept_id=4285732)
add_tb_interacc(numsipcod='A01', num_interacciones=5, gravedad_interaccion='GRAVE')
expect_observation(person_id=1,value_as_number=5,qualifier_concept_id=4087703)

declareTest('Observation date from Critical care unit stay')
expect_person(person_id=1, person_source_value='A01')
add_tb_estancia_uci(numsipcod='A01', fecha='2013-01-05', num_estancia_uci=5)
expect_observation(person_id=1,observation_date='2013-01-05')

declareTest('Observation no days from Critical care unit stay')
expect_person(person_id=1, person_source_value='A01')
expect_observation(person_id=1,value_as_number=5, unit_concept_id=8512)

declareTest('Observation date from sociodemographics')
expect_person(person_id=1, person_source_value='A01')
add_tb_sip_spo_resto_2015(numsipcod='A01', fecha_corte='2013-02-05')
expect_observation(person_id=1,observation_id=11,observation_date='2013-02-05')

declareTest('Observation modality and nationality from sociodemographics')
# Check if from 1 row of tb_sip_spo_resto_2015 2 rows in observation table are created
expect_person(person_id=2, person_source_value='A02')
add_tb_sip_spo_resto_2015(numsipcod='A02', cod_modalidad='PUBLIC', nacionalidad_espanola ='S')
expect_observation(person_id=2, observation_concept_id = 4135608)

declareTest('Observation from prescribed but not dispensed drugs')
expect_person(person_id=1, person_source_value='A01')
add_tb_prescrip(numsipcod='A01', numreceta = 'RE9999', id_tratamiento = 'TR99999', fecha_prescripcion='2012-10-10')
expect_observation(person_id=1,observation_concept_id=762823,observation_date = '2012-10-10')

# ========================
# ========================
#
# Source data setup
#
# Populate test tables
# If this is the first time, create empty source tables (e.g. by running WhiteRabbit)
# (check pg_dump ABUCASIS output)
# ========================
# ========================
library(DatabaseConnector)
config <- yaml.load_file('config.yml')
connectionConfig <- config$connectionDetails
connectionDetails <- createConnectionDetails(dbms = 'postgresql',
                                             user = connectionConfig$user,
                                             password = connectionConfig$password,
                                             server = connectionConfig$server,
                                             port = connectionConfig$port)
connection <- connect(connectionDetails)

insert_sql <- generateInsertSql()
executeSql(connection, sprintf('SET search_path TO %s;', config$sourceSchema))
executeSql(connection, paste(insert_sql, collapse = '\n'))

# ========================
# ========================
#
# ETL time!
#

# Change working directory
setwd('../../../')
# Run etl script with config$sourceSchema as source:
system(sprintf('python3 main.py -p %s -d abucasis_dev -u %s -w %s -s %s --skipvocab', connectionConfig$port, connectionConfig$user, connectionConfig$password, config$sourceSchema, config$cdmSchema))

# ========================
# ========================
#
setwd('./src/test/end_to_end/')

test_sql <- testSql
executeSql(connection, sprintf('SET search_path TO %s;', config$cdmSchema))
test_sql[1] <- 'DROP TABLE IF EXISTS test_results;' # Replace existing SQL server specific table drop
executeSql(connection, paste(test_sql, collapse = ';\n'))

# View the results and write them
querySql(connection, 'SELECT * FROM test_results')
write.table(querySql(connection, 'SELECT * FROM test_results'), "unittest_results.csv",sep=",",row.names=FALSE )

# Report failed results
# TODO
# TODO desired output: X tests failed (Y% of total unit tests)