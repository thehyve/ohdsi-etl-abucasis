# ========================
# Observation period
# ========================
declareTest(id=100, description = 'Observation period start and end for people with suspension date')
add_tb_sip_spo(id=100, numsipcod='A100', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01') 
expect_observation_period(person_id = lookup_person('person_id', person_source_value='A100'),
                          observation_period_start_date='2012-01-01', observation_period_end_date='2015-01-01')

declareTest(id=101, description = 'Observation period start and end for people with death date')
add_tb_sip_spo(id=101, numsipcod='A101', fecha_nac='1991-01-01', sexo='H', fecha_def = '2012-01-01', fecha_baja_sip=NULL) 
expect_observation_period(person_id=lookup_person('person_id', person_source_value='A101'),
                          observation_period_start_date='2012-01-01', observation_period_end_date='2012-01-01')

declareTest(id=102, description = 'Observation period default values start date 01-01-2012 end date 31-12-2019')
add_tb_sip_spo(id=102, numsipcod='A102', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip=NULL) 
expect_observation_period(person_id=lookup_person('person_id', person_source_value='A102'),
                          observation_period_start_date='2012-01-01', observation_period_end_date='2019-12-31')
