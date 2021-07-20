# ========================
# Observation period
# ========================
declareTest(id=100, description = 'Observation period start and end for people with suspension date')
add_tb_sip_spo(id=9, numsipcod='A100', fecha_nac='1991-01-01', fecha_baja_sip = '2015-01-01', fecha_def = '2015-02-01') # old A05
expect_observation_period(person_id=8, observation_period_start_date='2012-01-01', observation_period_end_date='2015-01-01')

declareTest(id=101, description = 'Observation period start and end for people with death date')
add_tb_sip_spo(id=10, numsipcod='A101', fecha_nac='1991-01-01', sexo='H', fecha_def = '2012-01-01') # old A03
expect_observation_period(person_id=9, observation_period_start_date='2012-01-01', observation_period_end_date='2012-01-01')

declareTest(id=102, description = 'Observation period default values start date 01-01-2012 end date 31-12-2019')
add_tb_sip_spo(id=11, numsipcod='A102', fecha_nac='1991-01-01', sexo='H') # old A01
expect_observation_period(person_id=10, observation_period_start_date='2012-01-01', observation_period_end_date='2019-12-31')
