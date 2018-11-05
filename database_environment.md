# Database Environment setup

Assumption: PostgreSQL runs on default host `127.0.0.1`, port `5432` and user `postgres`

## Database creation
Create database with three schemas (target schema, source schema and public) and the python language extension.
Note that the OMOP target schema should be called `cdm5`.
```sql
CREATE DATABASE <database_name>;
CREATE SCHEMA cdm5;
CREATE SCHEMA <source_schema_name>;
```
Note: the last step can be skipped if the source data will be stored in the `public` schema. 

## Initialize the OMOP Common Data Model
Download the latest v6 vocabulary from [Athena](http://athena.ohdsi.org/vocabulary/list). An account has to be created first.
Keep all the default selected vocabularies.
In addition, make sure that also the following vocabularies are selected:
```
- RxNorm
- SNOMED
- LOINC
- ATC
- ICD10
- ICD10CM
- ICD10PCS
- ICD10Proc
- ICD9CM
- ICD9Proc
```
Move this file to the server and unpack to `~/omop_vocabulary/`.

Then, use the code blow to clone the OMOP CDM v6.0 DDL from github (`OHDSI-CommonDataModel`). 
The specified branch of The Hyve also includes an initialization script for CDM v6.
This script creates all CDM tables, loads the vocabulary and applies indices and constraints.
```bash
git clone -b cdm-auto-create-v6 https://github.com/thehyve/OHDSI-CommonDataModel.git
cd OHDSI-CommonDataModel/PostgreSQL
sh "Initialize - PostgreSQL.sh" 127.0.0.1 5432 <database_name> cdm5 <user> <password> ~/omop_vocabulary/
```

_Note: this step creates both the vocabulary tables and non-vocabulary tables.
However, this step is only essential for initialization of the **vocabulary** tables.
The non-vocabulary tables, containing the actual EHR data, will be dropped and recreated by the ETL script._

## Initialize ABUCASIS
Load the ABUCASIS data set into the source data schema.