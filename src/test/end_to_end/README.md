# Unit tests for the CALIBER ETL

## Dependencies
yaml package (R):
```
install.packages('yaml')
```

## Setup
Copy `config.example.yml` and rename to `config.yml`. Enter your connection details.

The `sourceSchema` is the schema where the mock data will be inserted. 
Create this schema and the (empty) source tables separately (e.g. with the White Rabbit Fake data generator).

## Usage
* Initialise a test source schema (abucasis_test) with the source tables scheleton 
* Run `main.R` in RStudio. The script loads the test data in the test source schema, the ETL wrapper and the execution of the tests.
An output file unittest_results.csv will be generated in the end_to_end directory with the results from the test executions. 