# ========================
# Drug exposure
# ========================
declareTest(id=500,'Drug exposure start and end date')
add_tb_sip_spo(id=500, numsipcod='A500', sexo = 'M', fecha_def=NULL, fecha_baja_sip = NULL)
add_tb_tratamientos(id=500,numsipcod='A500', id_tratamiento = 'TR001', dias_tratamiento = 90, fecha_inicio_tratamiento = '2015-05-05', fecha_fin_tratamiento='2015-08-05')
add_tb_prescrip(id=500,numsipcod='A500', numreceta = 'RE001', id_tratamiento = 'TR001',fecha_prescripcion='2015-05-05')
add_tb_prescrip(id=500,numsipcod='A500', numreceta = 'RE002', id_tratamiento = 'TR001',fecha_prescripcion='2015-06-05')
add_tb_prescrip(id=500,numsipcod='A500', numreceta = 'RE003', id_tratamiento = 'TR001',fecha_prescripcion='2015-07-05')
add_tb_rele(id=500,numsipcod='A500', numreceta = 'RE001', fecha_dispensacion = '2015-05-05')
add_tb_rele(id=500,numsipcod='A500', numreceta = 'RE002', fecha_dispensacion = '2015-06-05')
add_tb_rele(id=500,numsipcod='A500', numreceta = 'RE003', fecha_dispensacion = '2015-07-05')
# '2015-05-05' + 90/3 days ='2015-06-04'
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A500'),
                     drug_exposure_id = 1, drug_exposure_start_date = '2015-05-05', drug_exposure_end_date = '2015-06-04')

declareTest(id=501,'Drug exposure derivation of total days supply from treatment dates')
add_tb_sip_spo(id=501, numsipcod='A501', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_rele(id=501,numsipcod='A501', numreceta = 'RE101', fecha_dispensacion = '2015-05-06')
add_tb_prescrip(id=501,numsipcod='A501', numreceta = 'RE101', id_tratamiento = 'TR101',fecha_prescripcion='2015-05-05')
add_tb_tratamientos(id=501,numsipcod='A501', id_tratamiento ='TR101', dias_tratamiento=NULL, fecha_inicio_tratamiento='2015-05-05', fecha_fin_tratamiento = '2015-05-10')
# Patient bought the drug 1 day after the treatment was prescribed (see tb_rele)
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A501'),
                     drug_exposure_start_date = '2015-05-06', drug_exposure_end_date = '2015-05-11')

declareTest(id=502,'Drug exposure quantity calculation per hour')
add_tb_sip_spo(id=502, numsipcod='A502', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip=NULL) 
# 30 days, 1 per 24 hours over 1 precription = 30
add_tb_tratamientos(id=502,numsipcod='A502', id_tratamiento = 'TR011', dias_tratamiento = 30, unidades=1, cadencia=24, tipo_posologia='Horaria',fecha_inicio_tratamiento='2017-01-01', fecha_fin_tratamiento = '2017-01-31')
add_tb_prescrip(id=502,numsipcod='A502', numreceta = 'RE021', id_tratamiento = 'TR011')
add_tb_rele(id=502,numsipcod='A502', numreceta = 'RE021', fecha_dispensacion = '2017-01-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A502'),
                     drug_exposure_start_date = '2017-01-01', quantity=30)

declareTest(id=503,'Drug exposure quantity calculation per day')
# 180 days, 5 per 2 days over 1 precription = 450
add_tb_sip_spo(id=503, numsipcod='A503', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_tratamientos(id=503,numsipcod='A503', id_tratamiento = 'TR012', dias_tratamiento = 180, unidades=5, cadencia=2, tipo_posologia='Diaria',fecha_inicio_tratamiento='2017-02-01', fecha_fin_tratamiento = '2017-07-31')
add_tb_prescrip(id=503,numsipcod='A503', numreceta = 'RE022', id_tratamiento = 'TR012',fecha_prescripcion='2017-02-01')
add_tb_rele(id=503,numsipcod='A503', numreceta = 'RE022', fecha_dispensacion = '2017-02-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A503'),
                     drug_exposure_start_date = '2017-02-01', quantity=450)

declareTest(id=504,'Drug exposure quantity with other posologia')
add_tb_sip_spo(id=504, numsipcod='A504', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_tratamientos(id=504,numsipcod='A504', id_tratamiento = 'TR013', unidades=50, tipo_posologia='Sin Cadencia',fecha_inicio_tratamiento='2017-04-01', fecha_fin_tratamiento = '2017-05-01')
add_tb_prescrip(id=504,numsipcod='A504', numreceta = 'RE024', id_tratamiento = 'TR013',fecha_prescripcion='2017-04-01')
add_tb_rele(id=504,numsipcod='A504', numreceta = 'RE024', fecha_dispensacion = '2017-04-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A504'),
                     drug_exposure_start_date = '2017-04-01', quantity=50)

declareTest(id=505,'Drug exposure quantity with zero cadencia')
add_tb_sip_spo(id=505, numsipcod='A505', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_tratamientos(id=505,numsipcod='A505', id_tratamiento = 'TR014',dias_tratamiento=1, unidades=1, cadencia=0.0,fecha_inicio_tratamiento='2017-03-01', fecha_fin_tratamiento = '2017-04-01')
add_tb_prescrip(id=505,numsipcod='A505', numreceta = 'RE023', id_tratamiento = 'TR014',fecha_prescripcion='2017-03-01')
add_tb_rele(id=505,numsipcod='A505', numreceta = 'RE023', fecha_dispensacion = '2017-03-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A505'),
                     drug_exposure_start_date = '2017-03-01', quantity=31)

declareTest(id=506,'Drug exposure quantity and days_supply over multiple prescriptions')
add_tb_sip_spo(id=506, numsipcod='A506', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
# 90 days, 2 per 24 hours over 3 prescriptions = 60 per exposure
add_tb_tratamientos(id=506,numsipcod='A506', id_tratamiento = 'TR002', dias_tratamiento = 90, unidades=2, tipo_posologia='Horaria', cadencia=24,fecha_inicio_tratamiento='2016-05-01', fecha_fin_tratamiento = '2016-07-30')
add_tb_prescrip(id=506,numsipcod='A506', numreceta = 'RE011', id_tratamiento = 'TR002',fecha_prescripcion='2016-05-01')
add_tb_prescrip(id=506,numsipcod='A506', numreceta = 'RE012', id_tratamiento = 'TR002',fecha_prescripcion='2016-06-01')
add_tb_prescrip(id=506,numsipcod='A506', numreceta = 'RE013', id_tratamiento = 'TR002',fecha_prescripcion='2016-07-01')
add_tb_rele(id=506,numsipcod='A506', numreceta = 'RE011', fecha_dispensacion = '2016-05-01')
add_tb_rele(id=506,numsipcod='A506', numreceta = 'RE012', fecha_dispensacion = '2016-06-01')
add_tb_rele(id=506,numsipcod='A506', numreceta = 'RE013', fecha_dispensacion = '2016-07-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A506'),
                     drug_exposure_start_date = '2016-05-01', quantity=60, days_supply=30)

declareTest(id=507,'Drug exposure refill')
add_tb_sip_spo(id=507, numsipcod='A507', fecha_nac='1991-02-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_tratamientos(id=507,numsipcod='A507', id_tratamiento = 'TR003', dias_tratamiento = 90, unidades=2, tipo_posologia='Horaria', cadencia=24,fecha_inicio_tratamiento='2016-05-01', fecha_fin_tratamiento = '2016-07-30')
add_tb_prescrip(id=507,numsipcod='A507', numreceta = 'RE012', id_tratamiento = 'TR003',fecha_prescripcion='2016-06-01')
add_tb_prescrip(id=507,numsipcod='A507', numreceta = 'RE013', id_tratamiento = 'TR003',fecha_prescripcion='2016-07-01')
add_tb_rele(id=507,numsipcod='A507', numreceta = 'RE012', fecha_dispensacion = '2016-06-01')
add_tb_rele(id=507,numsipcod='A507', numreceta = 'RE013', fecha_dispensacion = '2016-07-01')
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A507'),
                     drug_exposure_start_date = '2016-06-01', refills=1)
expect_drug_exposure(person_id = lookup_person('person_id', person_source_value = 'A507'),
                     drug_exposure_start_date = '2016-07-01', refills=2)

# TODO: drug era test does not work
# note: this is because the unit test assumes CDMv5 and drug_era_start_date column does not exist anymore in CDMv6
# declareTest('Drug era')
# expect_drug_era(person_id=1, drug_era_start_date='2016-05-01 00:00:00.000', drug_era_end_date='2016-07-31 00:00:00.000', drug_exposure_count=3)

declareTest(id=508,'Drug exposure from modified treatment')
add_tb_sip_spo(id=508, numsipcod='A508', fecha_nac='1991-01-01', sexo='H', fecha_def=NULL, fecha_baja_sip = NULL) 
add_tb_tratamientos(id=508,numsipcod='A508', id_tratamiento = 'TR300', dias_tratamiento = 365, unidades=1, tipo_posologia='Horaria', cadencia=24, fecha_inicio_tratamiento='2018-01-10', fecha_fin_tratamiento='2018-03-27')
add_tb_tratamientos(id=508,numsipcod='A508', id_tratamiento = 'TR301', dias_tratamiento = 90, unidades=1, tipo_posologia='Horaria', cadencia=24, fecha_inicio_tratamiento='2018-03-27', fecha_fin_tratamiento='2018-06-24')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE111', id_tratamiento = 'TR300',fecha_prescripcion='2016-01-10')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE112', id_tratamiento = 'TR300',fecha_prescripcion='2018-02-10')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE113', id_tratamiento = 'TR300',fecha_prescripcion='2018-03-10')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE114', id_tratamiento = 'TR301',fecha_prescripcion='2018-04-10')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE115', id_tratamiento = 'TR301',fecha_prescripcion='2018-05-10')
add_tb_prescrip(id=508,numsipcod='A508', numreceta = 'RE116', id_tratamiento = 'TR301',fecha_prescripcion='2018-06-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE111', fecha_dispensacion = '2016-01-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE112', fecha_dispensacion = '2018-02-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE113', fecha_dispensacion = '2018-03-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE114', fecha_dispensacion = '2018-04-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE115', fecha_dispensacion = '2018-05-10')
add_tb_rele(id=508,numsipcod='A508', numreceta = 'RE116', fecha_dispensacion = '2018-06-10')
# expect???