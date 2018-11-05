ETL scripts to convert ABUCASIS (INCLIVA) data to OMOP CDM v6, and make it backwards compatible with CDMv5. 

## Dependencies
- Postgres (9.5+)
  - Pl/Python
  ```bash
    select version();
    sudo apt-get install postgresql-plpython3-<postgresql version>
    CREATE EXTENSION plpython3u;
    ```
  - cdm5 schema
- Python 3, with pip, click, sqlalchemy and psycopg2
  ```bash
  apt install python3-pip
  pip3 install click
  pip3 install sqlalchemy
  pip3 install psycopg2
  ```
- OMOP vocabularies (http://athena.ohdsi.org/vocabulary/list)
  - OMOP generated (Gender, Race, Type Concepts, etc)
  - RxNorm
  - SNOMED
  - LOINC
  - ATC
  - ICD10
  - ICD10Proc
  - ICD9CM
  - ICD9PCS
  

## Run ETL
```bash
python3 main.py -h <host-name> -d <database-name> -p <port> -u <user> -w <password> -s <source-schema>
```
By default, a log file will be created in the logs directory

Other parameters:
 - `--debug` to apply constraints before loading. This gives direct feedback if any constraints fail, but is less optimal for loading speed.
 - `--log <file_name>` to supply a different location and name of the log file. 
 - `--run_inserts` by default tables are written to csv. With this toggle it can be written to database tables instead. 

## Contributing
This repository contains a Python framework that executes sql script which do the actual transformations.

### Python

### SQL
Organised in five subdirectories:
* cdm_setup: preparation of CDM environment (setup tables, columns, constraints, ...
* functions
* post_processing: generation of derived OMOP tables
* source_preprocessing: pre-processing of source data and intermediate tables generation
* transformation: ETL scripts for transforming source data to OMOP CDM data
* vocabulary_loading
