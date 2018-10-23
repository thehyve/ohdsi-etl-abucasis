library("yaml")
source('TestFrameworkAbucasis.R') # Note: this is the pre-factorization (Dec-2017) framework

# get_defaults_all_clinic()

# Define
initFramework()
# ========================
# Person
# ========================
declareTest(1, "Person birth date")
add_tb_sip_spo(numsipcod="A01", fecha_nac="1991-01-01")
expect_person(person_id=1, person_source_value="A01", year_of_birth=1991, month_of_birth=1, day_of_birth=1)

declareTest(2, "Person male")
add_tb_sip_spo(numsipcod="A02", sexo = "M")
expect_person(person_id=2, person_source_value="A02", gender_concept_id=8507)

# ========================
# Observation period
# ========================
declareTest(9, "Observation period start and end from all_clinical")
add_tb_sip_spo(numsipcod="A03", fecha_nac="1991-01-01", fecha_baja_sip = "2015-01-01")

expect_person(person_id=3, person_source_value="A03")
expect_observation_period(person_id=3, observation_period_start_date="2012-01-01", observation_period_end_date="2015-01-01")

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
config <- yaml.load_file("config.yml")
connectionConfig <- config$connectionDetails
connectionDetails <- createConnectionDetails(dbms = 'postgresql',
                                             user = connectionConfig$user,
                                             password = connectionConfig$password,
                                             server = connectionConfig$server,
                                             port = connectionConfig$port)
connection <- connect(connectionDetails)

insert_sql <- generateInsertSql()
executeSql(connection, sprintf("SET search_path TO %s;", config$sourceSchema))
executeSql(connection, paste(insert_sql, collapse = "\n"))

# ========================
# ========================
#
# ETL time!
#
# Run etl script with config$sourceSchema as source:
#
# ========================
# ========================

test_sql <- testSql
executeSql(connection, sprintf("SET search_path TO %s;", config$cdmSchema))
test_sql[1] <- "DROP TABLE IF EXISTS test_results;" # Replace existing SQL server specific table drop
executeSql(connection, paste(test_sql, collapse = ";\n"))

# View the results
querySql(connection, "SELECT * FROM test_results")
