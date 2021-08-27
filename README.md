# ABUCASIS to OMOP
<img src="https://www.bigdata-heart.eu/Portals/1/BD@H/Newsletter/2017-12/BD@H%20new%20logo.png?ver=2017-11-22-160441-013" alt="drawing" width="300" />

ETL scripts to convert ABUCASIS (INCLIVA) data to OMOP CDM v5 as part of the IMI BigData@Heart consortium.
This uses the delphyne framework, which has to be added as a local depency.

## Dependencies
- Postgres (9.5+)
  - cdm5 schema
- Python 3.7+, with pip, delphyne, click, sqlalchemy and psycopg2
  ```bash
  apt install python3-pip
  pip3 install -r requirements.txt
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


## Setup

#### Prepare the target database
- Create an empty database, e.g. `vocab`.
- Upload the standard vocabularies.

#### Customize configuration
In `config/`:
- Copy and rename `config-sample.yml`, and edit the options to enable a successful connection to your target database.
  You can create multiple configurations, for example one for a local test database and one for a remote database, without name restrictions.
  

## Run ETL
```bash
python3 main.py -c config/config.yml
```
By default, a log file will be created in the logs directory, with default `logs/<timestamp><version>.log`.


## OHDSI tools setup
See  [this document](https://github.com/thehyve/ohdsi-etl-abucasis/blob/master/webapi_setup.md) describing the WebAPI setup.


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
