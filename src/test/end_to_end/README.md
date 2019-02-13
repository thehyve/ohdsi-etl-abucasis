# Unit tests for the Abucasis ETL

## Dependencies
yaml package (R):
```
install.packages('yaml')
```

## Setup
Copy `config.example.yml` and rename to `config.yml`. Enter your connection details.

The `sourceSchema` is the schema where the mock data will be inserted. 
Create this schema and the (empty) source tables separately (e.g. with the White Rabbit Fake data generator).

## Definiton of Unit tests
Documentation about the unit tests definition can be found in the OHDSI wiki:
[http://www.ohdsi.org/web/wiki/doku.php?id=documentation:software:whiterabbit:test_framework](http://www.ohdsi.org/web/wiki/doku.php?id=documentation:software:whiterabbit:test_framework)

## Usage 
* Run `main.R` in RStudio. 
The script loads the test data in the test source schema, the ETL wrapper and the execution of the tests.
* An output file `unittest_results.csv` will be generated in the end_to_end directory with the results from the test executions.
* The unit tests that failed will be shown in the command line  
