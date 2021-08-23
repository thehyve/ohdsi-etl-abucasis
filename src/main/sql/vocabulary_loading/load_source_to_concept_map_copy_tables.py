import yaml
import os

def copy_to_sql():
    with open("config/config.yml", 'r') as stream:
        try:
            s = (yaml.safe_load(stream))
        except yaml.YAMLError as exc:
            print(exc)

    database = s['database']['database_name']
    schema = s['sql_parameters']['temp_schema']
    tables_dir = 'resources/mapping_tables/'

    # upload tmp_vocabulary
    t_name = 'vocabulary.csv'
    name = 'tmp_vocabulary'
    cmd_line = f"psql -U postgres -d {database} -c \"\copy {schema}.{name} FROM '{tables_dir}{t_name}' delimiter ',' csv header  \" "
    print(f"Running:\n{cmd_line}")
    os.system(cmd_line)

    # upload tmp_source_to_concept_map
    tables = ['abucasis_num_events.csv', 'abucasis_modalidad.csv', 'abucasis_tip_variabl.csv',
              'abucasis_ud_medidas.csv', 'abucasis_tip_prest.csv', 'abucasis_prinactivo.csv',
              'abucasis_cie9.csv'
              ]
    name = 'tmp_source_to_concept_map'
    for t_name in tables:
        cmd_line = f"psql -U postgres -d {database} -c \"\copy {schema}.{name} FROM '{tables_dir}{t_name}' delimiter ',' csv header  \" "
        print(f"Running:\n{cmd_line}")
        os.system(cmd_line)
