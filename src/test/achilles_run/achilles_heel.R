library(Achilles)
library('yaml')
library(DatabaseConnector)

config <- yaml.load_file('config.yml')
connectionConfig <- config$connectionDetails
connectionDetails <- createConnectionDetails(dbms = connectionConfig$user$dbms,
                                            user = connectionConfig$user,
                                            password = connectionConfig$password,
                                            server = connectionConfig$server,
                                            port = connectionConfig$port)
connection <- connect(connectionDetails)


achilles(connection,
        cdmDatabaseSchema = config$cdmSchema,
        resultsDatabaseSchema=config$cdmresultsSchema,
        vocabDatabaseSchema = config$cdmSchema,
        scratchDatabaseSchema = config$cdmscratchSchema,
        numThreads = 1,
        sourceName = "abucasis_results",
        cdmVersion = "6.0",
        runHeel = TRUE,
        runCostAnalysis = FALSE,
        dropScratchTables = TRUE,
        conceptHierarchy = FALSE)

exportToJson(connectionDetails,
            cdmDatabaseSchema = config$cdmSchema,
            resultsDatabaseSchema = config$cdmresultsSchema,
            outputPath = getwd(),
            vocabDatabaseSchema = config$cdmSchema,
            compressIntoOneFile = TRUE # creates gzipped file of all JSON files
            )