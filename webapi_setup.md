# Dependencies

Java 8 development kit

```
sudo apt-get install openjdk-8-jdk
```

Apache Maven

```
sudo apt install maven
```

Apache Ant 

```bash
sudo apt-get install ant
```
Apache Tomcat

* Download from: http://tomcat.apache.org/download-80.cgi
* Unzip in */opt/tomcat/* directory

Before running this tutorial, make sure that the default java being used is Java 8 JRE. To check it, first type:

```
sudo update-alternatives --config java 
```
And make sure that the default java being run is Java 8 JRE (e.g. /usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java)

# WebAPI setup

0) Clone the WebAPI repository `git clone https://github.com/OHDSI/WebAPI.git `

1) Follow the Postgres database preparation guidelines: http://www.ohdsi.org/web/wiki/doku.php?id=documentation:software:webapi:postgresql_installation_guide.


**Note:** If you already have a default username with administrative roles (e.g. 'postgres' user 'postgrespassword' password), grant superuser privileges to the webapi schema to this user. In this guide, this user will be assumed to be **'ohdsi_admin_user'** with password **'admin1'**.

The database name used in this guide will be **'OHDSI'**.


2) Generate the `settings.xml` file in the `WebAPI/WebAPIConfig/` directory. This file should look like this:

```xml
<settings>
<profiles>
  <profile>
    <id>webapi-postgresql</id>
    <properties>
      <datasource.driverClassName>org.postgresql.Driver</datasource.driverClassName>
      <!--host: localhost, port: 5432, database name: OHDSI-->
      <datasource.url>jdbc:postgresql://localhost:5432/<b>OHDSI</b></datasource.url>
      <!--admin user: ohdsi_admin_user (set app user as admin user)-->
      <datasource.username>ohdsi_admin_user</datasource.username>
      <!--admin password: admin1-->
      <datasource.password>admin1</datasource.password>
      <datasource.dialect>postgresql</datasource.dialect>
      <!--webapi schema name: webapi-->
      <datasource.ohdsi.schema>webapi</datasource.ohdsi.schema>
      <flyway.datasource.driverClassName>${datasource.driverClassName}</flyway.datasource.driverClassName>
      <flyway.datasource.url>${datasource.url}</flyway.datasource.url>
      <!--admin user: ohdsi_admin_user-->
      <flyway.datasource.username>ohdsi_admin_user</flyway.datasource.username>
      <!--admin password: admin1-->
      <flyway.datasource.password>admin1</flyway.datasource.password>
      <flyway.locations>classpath:db/migration/postgresql</flyway.locations>
      <security.enabled>false</security.enabled>
      <security.token.expiration>43200</security.token.expiration>
      <security.origin>*</security.origin>
      <security.ssl.enabled>false</security.ssl.enabled>
      <security.oauth.callback.ui>http://localhost/atlas/#/welcome</security.oauth.callback.ui>
      <security.oauth.callback.api>http://localhost:8080/WebAPI/user/oauth/callback</security.oauth.callback.api>
      <security.oauth.google.apiKey></security.oauth.google.apiKey>
      <security.oauth.google.apiSecret></security.oauth.google.apiSecret>
      <security.oauth.facebook.apiKey></security.oauth.facebook.apiKey>
      <security.oauth.facebook.apiSecret></security.oauth.facebook.apiSecret>
    </properties>
  </profile>  
</profiles>
</settings>
```

3) Make sure that your `JAVA_HOME` points to the Java 8 development kit

```

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
export PATH=$JAVA_HOME/bin:$PATH

```
4) Move to the WebAPI repository, and build the .war file:

```
mvn clean package -s WebAPIConfig/settings.xml -P webapi-postgresql

```
If the following error appears `[ERROR] Critical error: MireDot was unable to process org.ohdsi.webapi.cohortcharacterization.CcController. Interface skipped.` you can ignore it. At the end of the process a `BUILD SUCCESS` message should show up in the terminal. 

# WebAPI deployment

0) Make the following env variable `export CATALINA_HOME=/path/to/apache-tomcat-folder` (e.g. */opt/tomcat/*)
1) Move the WebAPI war file to the Tomcat webapps folder `cp WebAPI/target/WebAPI.war $CATALINA_HOME/webapps/`
2) Start Tomcat `sudo sh $CATALINA_HOME/bin/startup.sh`
3) The webapi schema will be populated with empty tables. **Double check it before proceeding with the installation guide.** To check whether the WebAPI service is properly running, you can check the catalina output: 
```
sudo cat $CATALINA_HOME/logs/catalina.out
```
4) Stop Tomcat `sh $CATALINA_HOME/bin/shutdown.sh`

# Run Achilles and store results in webapi schema

Make sure that Achilles has been previously run setting `conceptHierarchy` to TRUE, and their results are stored in the `webapi` schema. 

```R
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
```
An example script can be found in `achilles_webapi.R` (`/src/test/achilles_run` directory). 

# Configure source and source daimon

0) Connect to the database. In this example, **OHDSI** is the database name, **postgres** the admin username, **postgrespassword** the admin password, **cdm5** schema contains the OMOP tables, **cdm5** schema contains the Vocabulary tables, **webapi** contains the achilles results

1) Insert the source information into the **webapi** schema. Make sure to properly format the `jdbc:postgresql://<SERVER>:5432/<DATABASE_NAME>?user=<USER_NAME>&password=<USER_PASSWORD>` string.

```sql
INSERT INTO webapi.source (source_id, source_name, source_key, source_connection, source_dialect) 
VALUES (1, 'Abucasis OMOP CDM', 'OHDSI_abucasis', 'jdbc:postgresql://localhost:5432/OHDSI?user=postgres&password=postgrespassword','postgresql');

-- CDM
INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) 
VALUES (1,1,0, 'cdm5', 0);
-- Vocabulary
INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) 
VALUES (2,1,1, 'cdm5', 0);
-- Results
INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) 
VALUES (3,1,2, 'webapi', 0);
-- vocabulary
INSERT INTO webapi.source_daimon (source_daimon_id, source_id, daimon_type, table_qualifier, priority) 
VALUES (4,2,1, 'cdm5', 1);
```

2) Startup Tomcat again `sh $CATALINA_HOME/bin/startup.sh`
3) Check response in your browser: `http://localhost:8080/WebAPI/source/sources`. An output like this should pop up:
```
[{"sourceId":1,"sourceName":"My Cdm","sourceDialect":"postgresql","sourceKey":"MY_CDM","daimons":[{"sourceDaimonId":1,"daimonType":"CDM","tableQualifier":"cdm5","priority":0},{"sourceDaimonId":2,"daimonType":"Vocabulary","tableQualifier":"cdm5","priority":0},{"sourceDaimonId":3,"daimonType":"Results","tableQualifier":"webapi","priority":0}]},{"sourceId":2,"sourceName":"Default vocabulary","sourceDialect":"postgresql","sourceKey":"vocab","daimons":[{"sourceDaimonId":4,"daimonType":"Vocabulary","tableQualifier":"cdm5","priority":1}]}]
```

# Atlas setup

With an active response from the WebAPI, Atlas is ready to run. 
The installation instructions can be found in the OHDSI wiki: http://www.ohdsi.org/web/wiki/doku.php?id=documentation:software:atlas:setup

## Set up config-local.js file 
Create a file  *config-local.js* file in the `js/` directory. is properly setup. Example (8080 is the default WebAPI port):

```js
define([], function () {
    var configLocal = {};

    configLocal.api = {
        name: 'Local environment',
        url: 'http://localhost:8080/WebAPI/'
    };

    return configLocal;

});
```

## Run Atlas
Run it via the `index.html` file. Make sure that the WebAPI service is being run in the background.
