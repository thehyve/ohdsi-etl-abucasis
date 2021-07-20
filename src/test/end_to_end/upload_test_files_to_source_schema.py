import os
import glob

def upload_tables():

    schema = "abucasis_original_test"

    # drop all tables
    cmd_line_drop = f"sudo -u postgres psql -d ETL_UKBiobank -c \" DROP SCHEMA {schema} CASCADE; CREATE SCHEMA {schema};\""
    print(f"Running:\n{cmd_line_drop}")
    os.system(cmd_line_drop)
        
    # create + upload new tables
    tables_dir = "test_intermediates/source_data/"
    tables = glob.glob(tables_dir+"/*.csv")

    # create
    for t in tables:
        t_name = t[(len(tables_dir)):-4]
        t_name2 = t_name.lower()
        if t_name2 in ['initframework', 'generateinsertsq', 'summary.frameworkContext', 'summarytestframework', 'declaretest', 'getuntestedsourcefields', 'expect_person', 'config', 'gettestsoverview']: continue
        cmd_line_create = f"sudo -u postgres psql -d ETL_UKBiobank -c \"create table {schema}.{t_name2} (like abucasis_original.{t_name2} including all); \" "
        print(f"Running:\n{cmd_line_create}")
        os.system(cmd_line_create)
    
    # upload
    for t in tables:
        t_name = t[(len(tables_dir)):-4]
        t_name2 = t_name.lower()
        if t_name2 in ['initframework', 'generateinsertsq', 'summary.frameworkContext', 'summarytestframework', 'declaretest', 'getuntestedsourcefields', 'expect_person', 'config', 'gettestsoverview']: continue
        cmd_line = f"sudo -u postgres psql -d ETL_UKBiobank -c \"\copy {schema}.{t_name2} FROM '{t}' delimiter ',' csv header  \" "
        print(f"Running:\n{cmd_line}")
        os.system(cmd_line)

if __name__ == "__main__":
    upload_tables()
