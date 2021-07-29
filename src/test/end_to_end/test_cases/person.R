# ========================
# Person (+ Death CDMv5)
# ========================
declareTest(id=1, description='Person birth date')
add_tb_sip_spo(id=1,numsipcod='A001', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_person(person_source_value='A001', year_of_birth=1991, month_of_birth=1, day_of_birth=1)

declareTest(id=2, description = 'Person female')
add_tb_sip_spo(id=2,numsipcod='A002', sexo = 'M', fecha_def=NULL, fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_person(person_source_value='A002', gender_concept_id=8532)

declareTest(id=3, description = 'Person male')
add_tb_sip_spo(id=3,numsipcod='A003', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_person(person_source_value='A003', gender_concept_id=8507)

# Testing on death date because Unit tests are not compatible with CDMv6
declareTest(id=4, description = 'Expect no death date for non-suspended and non-dead person')
add_tb_sip_spo(id=4,numsipcod='A004', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_no_death(person_id=4)

declareTest(id=5, description = 'Filter death before study start (=2012-01-01)')
add_tb_sip_spo(id=5, numsipcod='A005', fecha_def = '2011-01-01', fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_no_person(person_source_value = 'A005')

declareTest(id=6, description = 'Filter exit before study start')
add_tb_sip_spo(id=6,numsipcod='A006', fecha_baja_sip = '2009-12-20', fecha_def=NULL, cod_causa_baja = NULL)
expect_no_person(person_source_value = 'A006')

declareTest(id=7, description = 'Filter exit before and death after study start')
add_tb_sip_spo(id=7,numsipcod='A007', fecha_def = '2015-01-01', fecha_baja_sip = '2009-12-20', cod_causa_baja = NULL)
expect_no_person(person_source_value = 'A007')

declareTest(id=8, description = 'Include death or exit ON study start')
add_tb_sip_spo(id=8, numsipcod='A008', fecha_def = '2012-01-01', fecha_nac='1991-01-01', sexo='H', fecha_baja_sip = NULL, cod_causa_baja = NULL)
expect_person(person_source_value = 'A008')

declareTest(id=9, description= 'Include death or exit ON study start #2')
add_tb_sip_spo(id=9,numsipcod='A009', fecha_baja_sip = '2012-01-01', fecha_def=NULL, cod_causa_baja = NULL) 
expect_person(person_source_value = 'A009')

# Any records with a person identifier (numsipcod) that is not present in the tb_sip_spo table, will be filtered out.
declareTest(id=10, description = 'Exclude persons without numpsipcod in tb_sip_spo')
add_tb_proc_cmbd(id=10, numsipcod='INVALIDSIPCODE', cie9p = '10.10')
expect_no_person(person_source_value = 'INVALIDSIPCODE')

declareTest(id=11, description = 'Person capture earliest recorded death date')
add_tb_sip_spo(id=11, numsipcod='A011', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01') 
expect_person(person_source_value='A011')
expect_death(death_date='2015-01-01')
