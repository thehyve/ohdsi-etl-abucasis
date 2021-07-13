# ========================
# Person (+ Death CDMv5)
# ========================
declareTest(id=1, description='Person birth date')
add_tb_sip_spo(id=1, numsipcod='A01', fecha_nac='1991-01-01', sexo='H')
expect_person(person_source_value='A01', year_of_birth=1991, month_of_birth=1, day_of_birth=1)

declareTest(id=2, description = 'Person female')
add_tb_sip_spo(id=2, numsipcod='A02', sexo = 'M')
expect_person(person_source_value='A02', gender_concept_id=8532)

declareTest(id=3, description = 'Person male')
add_tb_sip_spo(id=3, numsipcod='A03', fecha_nac='1991-01-01', sexo='H')
expect_person(person_source_value='A03', gender_concept_id=8507)

# Testing on death date because Unit tests are not compatible with CDMv6
declareTest(id=4, description = 'Expect no death date for non-suspended and non-dead person')
expect_no_death(person_id=4)

declareTest(id=5, description = 'Filter death before study start (=2012-01-01)')
add_tb_sip_spo(id=5, numsipcod='Z01', fecha_def = '2011-01-01')
expect_no_person(person_source_value = 'Z01')

declareTest(id=6, description = 'Filter exit before study start')
add_tb_sip_spo(id=6,numsipcod='Z02', fecha_baja_sip = '2009-12-20')
expect_no_person(person_source_value = 'Z02')

declareTest(id=7, description = 'Filter exit before and death after study start')
add_tb_sip_spo(id=7,numsipcod='Z03', fecha_def = '2015-01-01', fecha_baja_sip = '2009-12-20')
expect_no_person(person_source_value = 'Z03')

declareTest(id=8, description = 'Include death or exit ON study start')
add_tb_sip_spo(id=8, numsipcod='A03', fecha_def = '2012-01-01')
expect_person(person_source_value = 'A03')

declareTest(id=9, description= 'Include death or exit ON study start #2')
add_tb_sip_spo(id=9,numsipcod='A04', fecha_baja_sip = '2012-01-01')
expect_person(person_source_value = 'A04')

# Any records with a person identifier (numsipcod) that is not present in the tb_sip_spo table, will be filtered out.
declareTest(id=10, description = 'Exclude persons without numpsipcod in tb_sip_spo')
add_tb_proc_cmbd(id=10, numsipcod='INVALIDSIPCODE', cie9p = '10.10')
expect_no_person(person_source_value = 'INVALIDSIPCODE')

declareTest(id=11, description = 'Person capture earliest recorded death date')
add_tb_sip_spo(id=11, numsipcod='A05', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01')
expect_person(person_id=11, person_source_value='A05')
expect_death(person_id=11, death_date='2015-01-01')
