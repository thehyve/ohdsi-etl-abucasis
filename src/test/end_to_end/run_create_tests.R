# Copyright 2021 The Hyve
#
# Licensed under the GNU General Public License, version 3,
# or (at your option) any later version (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# https://www.gnu.org/licenses/
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

library('yaml')
config <- yaml.load_file('config-v5.yml')

# Initialize
source('TestFrameworkAbucasis.R')
initFramework()

# Add tests
source("test_cases/person.R")                   # test IDs    1- 99
source("test_cases/observation_period.R")       # test IDs  100-199
source("test_cases/condition_occurrence.R")     # test IDs  200-299
source("test_cases/procedure_occurrence.R")     # test IDs  300-399
source("test_cases/visit_occurrence.R")         # test IDs  400-499
source("test_cases/drug_exposure.R")            # test IDs  500-599
source("test_cases/measurement.R")              # test IDs  600-699
source("test_cases/observation.R")              # test IDs  700-799
source("test_cases/condition_era.R")            # test IDs  800-899
source("test_cases/drug_era.R")                 # test IDs  900-999

library(DatabaseConnector)
connectionConfig <- config$connectionDetails
pathToDriver <- config$pathToDriver
connectionDetails <- createConnectionDetails(dbms = connectionConfig$dbms,
                                             user = connectionConfig$user,
                                             password = connectionConfig$password,
                                             server = connectionConfig$server,
                                             port = connectionConfig$port,
                                             pathToDriver = pathToDriver)
connection <- connect(connectionDetails)

# Upload tests to db ----------------------------------------------------------
insert_sql <- generateInsertSql()
executeSql(connection, sprintf('SET search_path TO %s;', config$sourceSchema))
executeSql(connection, paste(insert_sql, collapse = '\n'))

# Create test query -------------------------------------------------------
testSql <- generateTestSql(config$cdmSchema)
dir.create(dirname(config$testQueryFileName), recursive=T, showWarnings = F)
write(testSql, config$testQueryFileName)
print(paste0('Test queries written to ', config$testQueryFileName))

# Test coverages -----------------------------------------------------------
print(summaryTestFramework())
print(getUntestedSourceFields())
print(getUntestedTargetFields())

# Create test query -------------------------------------------------------
testSql <- generateTestSql(config$cdmSchema)
dir.create(dirname(config$testQueryFileName), recursive=T, showWarnings = F)
write(testSql, config$testQueryFileName)
print(paste0('Test queries written to ', config$testQueryFileName))

# List all test cases ----------------------------------------------------------
exportTestsOverviewToFile('all_test_cases.csv')
