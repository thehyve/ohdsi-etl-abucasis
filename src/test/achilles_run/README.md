# Achilles instructions
Achilles can be run via the script `achilles_heel.R`. First, you'll need to initialize 
the database connection configuration file. Copy the template file `config.template.yml` to `config.yml` and modify it 
typying your database user, password, server and port (connectionDetails).

Subsequently, create 3 additional schemas in your database. They will be used by Achilles to store the results and the intermediate results. 

```sql
CREATE SCHEMA cdm5results
CREATE SCHEMA cdm5scratch
CREATE SCHEMA cdm5results
```

# Achilles installation (for Linux machines)

First, install the required dependencies:

```bash
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libxml2-dev
sudo apt-get install r-cran-rjava
```

Install R dependencies (e.g. via Rstudio):
```R
if (!require("devtools")) install.packages("devtools")
devtools:: install_github("OHDSI/OhdsiRTools")
```

To install Achilles:
```R
if (!require("DatabaseConnector")) install.packages("DatabaseConnector")
if (!require("Achilles")) devtools::install_github("OHDSI/Achilles", dependencies = TRUE)
```

## Java dependencies issues
If you encounter issues with the Java version while installing Achilles, Java 6 will need to installed. 
This version will coexist with the current version of Java installed on your machine (see notes below).

To install Java6, first download the bin file `jdk-6u45-linux-<system_architecture>.bin` that matches 
 with your system architecture (e.g. jdk-6u45-linux-i586.bin for a 64 bit machine) from the Oracle webpage: 
https://www.oracle.com/technetwork/java/javase/downloads/java-archive-downloads-javase6-419409.html

Subsequently, execute the bin file:
```bash
chmod +x jdk-6u45-linux-<system_architecture>.bin
./jdk-6u45-linux-<system_architecture>.bin  
```

Move the extracted directory to your java folder:
```bash
sudo mv jdk1.6.0_45 /usr/lib/jvm/
```  
(Note: if the directory does not exist, create it: `sudo mkdir /usr/lib/jvm`)

Proceed with the installation:
```bash
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk1.6.0_45/bin/javac 1
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk1.6.0_45/bin/java 1
sudo update-alternatives --install /usr/bin/javaws javaws /usr/lib/jvm/jdk1.6.0_45/bin/javaws 1 

sudo update-alternatives --config javac  
sudo update-alternatives --config java  
sudo update-alternatives --config javaws

```

This should be enough for installing Java6 and will set Java6 as your default Java version. 
To switch from Java6 to Java8, you can run this command:
```bash
sudo update-alternatives --config java 
```
And then select the desired version of Java 

For additional instructions, please refer to the Achilles repository: 
https://github.com/OHDSI/Achilles