# ========================
# Observation period
# ========================
declareTest(id=100, description = 'Observation period start and end for people with suspension date')
expect_person(person_id=100, person_source_value='A05')
expect_observation_period(person_id=100, observation_period_start_date='2012-01-01', observation_period_end_date='2015-01-01')

declareTest(id=101, description = 'Observation period start and end for people with death date')
expect_person(person_id=101, person_source_value='A03')
expect_observation_period(person_id=101, observation_period_start_date='2012-01-01', observation_period_end_date='2012-01-01')


declareTest(id=102, description = 'Observation period default values start date 01-01-2012 end date 31-12-2016')
expect_person(person_id=102, person_source_value='A01')
expect_observation_period(person_id=102, observation_period_start_date='2012-01-01', observation_period_end_date='2016-12-31')
