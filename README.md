# ABUCASIS to OMOP CDM

## Dependencies
- Postgres (9.5+)
  - cdm5 schema with OMOP vocabulary tables created and loaded
- Python 3, with pip, click, sqlalchemy and psycopg2
  ```bash
  apt install python3-pip
  pip3 install click
  pip3 install sqlalchemy
  pip3 install psycopg2
  ```
- OMOP vocabularies (www.athena.ohdsi.org)
  - OMOP generated
  - RxNorm
  - SNOMED
  - LOINC
  - ATC
  - ICD10
  - ICD10PROC
  - ICD9CM
  - ICD9PROC 
  

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
* 