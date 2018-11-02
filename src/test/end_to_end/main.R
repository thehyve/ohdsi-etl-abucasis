library('yaml')
source('TestFrameworkAbucasis.R') # Note: this is the pre-factorization (Dec-2017) framework
#source('src/test/end_to_end/TestFrameworkAbucasis.R') # Note: this is the pre-factorization (Dec-2017) framework


# get_defaults_all_clinic()

# Define
initFramework()
# ========================
# Person
# ========================
declareTest('Person birth date')
add_tb_sip_spo(numsipcod='A01', fecha_nac='1991-01-01', sexo = 'H')
expect_person(person_source_value='A01', year_of_birth=1991, month_of_birth=1, day_of_birth=1)

declareTest('Person female')
add_tb_sip_spo(numsipcod='A02', sexo = 'M')
expect_person(person_source_value='A02', gender_concept_id=8532)

declareTest('Person male')
expect_person(person_source_value='A01', gender_concept_id=8507)

# TODO implement expect NULL value
# declareTest('Expect no death date for non-suspended and non-death person')
# expect_person(person_source_value='A01', death_datetime=NULL)

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

# ========================
# Observation period
# ========================
declareTest('Observation period start and end for people with suspension date')
add_tb_sip_spo(numsipcod='A05', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01')
expect_person(person_id=5, person_source_value='A03')
expect_observation_period(person_id=5, observation_period_start_date='2012-01-01', observation_period_end_date='2015-01-01')

declareTest('Observation period start and end for people with death date')
expect_person(person_id=3, person_source_value='A03')
expect_observation_period(person_id=3, observation_period_start_date='2012-01-01', observation_period_end_date='2012-01-01')


declareTest('Observation period default values start date 01-01-2012 end date 31-12-2016')
expect_person(person_id=1, person_source_value='A01')
expect_observation_period(person_id=1, observation_period_start_date='2012-01-01', observation_period_end_date='2016-12-31')


# ========================
# Procedure occurrence
# ========================
declareTest('Procedure occurrence')
add_tb_proc_cmbd(numsipcod='A01', cie9p = '10.10')
expect_procedure_occurrence(procedure_source_value = '10.10')

declareTest('Procedure occurrence visit')
add_tb_ante_cmbd(numsipcod = 'A02', fecha_ingreso = '2018-01-01')
expect_visit_occurrence(visit_occurrence_id = 1, person_id = 2, visit_start_date = '2018-01-01')
add_tb_proc_cmbd(numsipcod = 'A02', fecha_ingreso = '2018-01-01', tipo_actividad = 'HOS', cie9p = '20.20')
expect_procedure_occurrence(procedure_source_value = '20.20', visit_occurrence_id = 1) # NOTE: this id can change


# ========================
# Observation
# ========================
declareTest('Observation death if patient died during hospitalization')
add_tb_sip_spo(numsipcod='A06', fecha_nac='1991-01-01', fecha_def='2012-02-05')
add_tb_ante_cmbd(numsipcod='A06', cir_alta='10', fecha_ingreso = '2012-01-01', fecha_alta = '2012-02-05')
expect_observation(person_id = 6, observation_type_concept_id = 4216643)

declareTest('Observation death if patient died NOT during hospitalization')
add_tb_sip_spo(numsipcod='A07', fecha_nac='1994-01-01', fecha_def='2016-02-05')
expect_observation(person_id = 7, observation_type_concept_id = 38000280)

# ========================
# Measurement
# ========================
declareTest('NO Measurement if cod_ud_medida has conflictive value')
add_tb_prestaci(numsipcod='A06', cod_ud_medida = ".")
expect_no_measurement(person_id = 6)
add_tb_prestaci(numsipcod='A05', cod_ud_medida = "I")
expect_no_measurement(person_id = 5)
add_tb_variables(numsipcod='A04', cod_ud_medida = ".")
expect_no_measurement(person_id = 4)
add_tb_variables(numsipcod='A03', cod_ud_medida = "I")
expect_no_measurement(person_id = 3)

# ========================
# Visit Ocurrence
# ========================
# TODO check visits rule
# TODO try NA or NULL
declareTest('Visit end date')
expect_person(person_id=1, person_source_value='A01')
add_add_tb_ante_cmbd(person_id = 1, fecha_ingreso = '2013-01-01')
expect_visit_occurrence(person_id=1, visit_end_date = '2016-12-31')

declareTest('Unique visit ID for a person/start date hospitalization')
expect_person(person_id=1, person_source_value='A01')
add_add_tb_ante_cmbd(person_id = 1, fecha_ingreso = '2013-01-01', cir_ingreso = 4)

declareTest('Unique visit for patients that were discharged to another hospital')
expect_person(person_id=2, person_source_value='A02')


# ========================
# ========================
#
# Source data setup
# 
# Populate test tables
# If this is the first time, create empty source tables (e.g. by running WhiteRabbit)
#
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

# View the results
querySql(connection, 'SELECT * FROM test_results')
write.table(querySql(connection, 'SELECT * FROM test_results'), "unittest_results.csv",sep=",", )