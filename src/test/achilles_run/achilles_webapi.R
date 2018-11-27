### Install required dependencies  ###
if (!require("devtools")) install.packages("devtools")
if (!require("DatabaseConnector")) install.packages("DatabaseConnector")
if (!require("OHDSI/OhdsiRTools")) install_github("OHDSI/OhdsiRTools")

# Install Achilles latest release
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
# Temporary solution to solve version incompatibilities with latest release Achilles
# Generate drug_era_start_date condition_era_start_date and end_date columns
connection <- connect(connectionDetails)
sqlquery <- paste(unlist(read.csv("./init_achilles.sql"), use.names=FALSE), collapse='\n')
executeSql(connection, sqlquery)
######################## 

# Run Achilles
achilles(connectionDetails,
         cdmDatabaseSchema = config$cdmSchema,
         resultsDatabaseSchema=webapi,
         vocabDatabaseSchema = config$cdmSchema,
         scratchDatabaseSchema = config$cdmscratchSchema,
         numThreads = 1,
         sourceName = config$sourceName,
         cdmVersion = config$cdmversion,
         runHeel = TRUE,
         runCostAnalysis = FALSE,
         dropScratchTables = TRUE,
         conceptHierarchy = TRUE) # important to set to False 

### Run Achilles heel
# achillesHeel(connectionDetails,
#             cdmDatabaseSchema = config$cdmSchema,
#             resultsDatabaseSchema=config$cdmresultsSchema,
#             vocabDatabaseSchema = config$cdmSchema,
#             scratchDatabaseSchema = config$cdmscratchSchema,
#             numThreads = 1,
#             outputFolder = ".",
#             cdmVersion = config$cdmversion)

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

# exportToJson(connectionDetails,
#              cdmDatabaseSchema = config$cdmSchema,
#              resultsDatabaseSchema = config$cdmresultsSchema,
#              outputPath = "./",
#              compressIntoOneFile = TRUE # creates gzipped file of all JSON files
#              )
