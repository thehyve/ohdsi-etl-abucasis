# Copyright 2018 The Hyve
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

### Install required dependencies  ###
if (!require("devtools")) install.packages("devtools")
if (!require("DatabaseConnector")) install.packages("DatabaseConnector")
if (!require("OHDSI/OhdsiRTools")) install_github("OHDSI/OhdsiRTools")

# Install latest release of Achilles
if (!require("Achilles")) devtools::install_github("OHDSI/Achilles", dependencies = TRUE)
# # Install Achilles for CDM v6 (current state: does not work)
# devtools::install_github("OHDSI/Achilles", ref="cdm_v6", dependencies = TRUE)

library(Achilles)
library('yaml')
library(DatabaseConnector)

# Load database connection details, schema names, CDM version, ...
config <- yaml.load_file('./config.yml')

# Connect to the database 
connectionConfig <- config$connectionDetails
connectionDetails <- createConnectionDetails(dbms = "postgresql",
                                             user = connectionConfig$user,
                                             password = connectionConfig$password,
                                             server = connectionConfig$server,
                                             port = connectionConfig$port)

############ CDM pre-processing ############ 
# Generate drug_era_start_date condition_era_start_date and end_date columns
connection <- connect(connectionDetails)
sqlquery <- paste(unlist(read.csv("./init_achilles.sql"), use.names=FALSE), collapse='\n')
executeSql(connection, sqlquery)
######################## 

# Run Achilles
achilles(connectionDetails,
         cdmDatabaseSchema = config$cdmSchema,
         resultsDatabaseSchema=config$cdmresultsSchema,
         vocabDatabaseSchema = config$cdmSchema,
         scratchDatabaseSchema = config$cdmscratchSchema,
         numThreads = 1,
         sourceName = config$sourceName,
         cdmVersion = config$cdmversion,
         runHeel = TRUE,
         runCostAnalysis = FALSE,
         dropScratchTables = TRUE,
         conceptHierarchy = FALSE) # important to set to False

## Export results to Json
# exportToJson(connectionDetails,
#             cdmDatabaseSchema = config$cdmSchema,
#             resultsDatabaseSchema = config$cdmresultsSchema,
#             outputPath = getwd(),
#             vocabDatabaseSchema = config$cdmSchema,
#             compressIntoOneFile = TRUE # creates gzipped file of all JSON files
#             )

############ CDM post-processing ############ 
# Remove drug_era_start_date condition_era_start_date and end_date columns
sqlquery <- paste(unlist(read.csv("./end_achilles.sql"), use.names=FALSE), collapse='\n')
executeSql(connection, sqlquery)
######################## 

# Export AchillesHeel results 
# fetchAchillesHeelResults(connectionDetails,config$cdmresultsSchema)
launchHeelResultsViewer(connectionDetails,
                        resultsDatabaseSchema = config$cdmresultsSchema,
                        cdmDatabaseSchema = config$cdmSchema,
                        outputFolder = ".")

# getAnalysisDetails()