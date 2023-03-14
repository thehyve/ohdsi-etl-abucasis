-- Editing of the elements that appeared with a wrong mapping in the "measurement" table after dqd process.
-- Antonio Fernandez in database ABUCASIS for OMOP in ODHSI Project

-- Updating the values of the "measurement" domain that had the concept_id set to zero.
update cdm5.measurement set measurement_concept_id=4016949 where measurement_source_value='300113010000N0000022';   --> CALCULATED VLDL CHOLESTEROL
update cdm5.measurement set measurement_concept_id=4196969 where measurement_source_value='300113040000N0000666';   --> FREE THYROXINE (FREE T4)
update cdm5.measurement set measurement_concept_id=4272032 where measurement_source_value='300113080100N0000834';   --> PROSTATE SPECIFIC AG (PSA)
update cdm5.measurement set measurement_concept_id=4097621 where measurement_source_value='CCD00322N';              --> PLATELETOCYTE (BLOOD)
update cdm5.measurement set measurement_concept_id=3039417 where measurement_source_value='CCD00323N';              --> PLATELET DISTRIBUTION INDEX (BLOOD)
update cdm5.measurement set measurement_concept_id=4017497 where measurement_source_value='300113010000N0000004';   --> ALBUMIN
update cdm5.measurement set measurement_concept_id=3011904 where measurement_source_value='300113010000N0000037';   --> PHOSPHATE
update cdm5.measurement set measurement_concept_id=4216468 where measurement_source_value='300114029900N0000053';   --> FIBRINOGEN DERIVATIVE
update cdm5.measurement set measurement_concept_id=4098519 where measurement_source_value='300113010000N0000046';   --> LACTATE DEHYDROGENASE (LDH)
update cdm5.measurement set measurement_concept_id=44806420 where measurement_source_value='300113010000N0001682';  --> ESTIMATED GLOMERULAR FILTRATION RATE MDRD-4 IDMS
update cdm5.measurement set measurement_concept_id=3017129 where measurement_source_value='300113040000N0000676';   --> VITAMIN B12 (CYANOCOBALAMIN)
update cdm5.measurement set measurement_concept_id=44786898 where measurement_source_value='300113120200U0000932';  --> FAECAL OCCULT BLOOD
update cdm5.measurement set measurement_concept_id=4306252 where measurement_source_value='CCD00219N';              --> TRANSFERRIN: SATURATION INDEX (IN BLOOD)
update cdm5.measurement set measurement_concept_id=40764278 where measurement_source_value='300113040000N0000642';  --> FOLIC ACID (FOLATE)
update cdm5.measurement set measurement_concept_id=42529379 where measurement_source_value='300113030100N0000158';  --> TRANSFERRIN BLOOD
update cdm5.measurement set measurement_concept_id=4193544 where measurement_source_value='CCD00321N';              --> RED CELL DISTRIBUTION INDEX (CV) (IN BLOOD)
update cdm5.measurement set measurement_concept_id=4287768 where measurement_source_value='300114029900N0000052';   --> FIBRINOGEN, ACTIVITY
update cdm5.measurement set measurement_concept_id=4235028 where measurement_source_value='300113010000N0000015';   --> TOTAL IRON BINDING CAPACITY
update cdm5.measurement set measurement_concept_id=40763886 where measurement_source_value='CCD00236K';             --> LEUKOCYTES QUANTIFIED BY CYTOMETRY (IN URINE)
update cdm5.measurement set measurement_concept_id=4204380 where measurement_source_value='300113030100N0000121';   --> RHEUMATOID FACTOR
update cdm5.measurement set measurement_concept_id=4197972 where measurement_source_value='300113010000N0000008';   --> DIRECT BILIRUBIN (CONJUGATED)
update cdm5.measurement set measurement_concept_id=40763887 where measurement_source_value='CCD00233K';             --> CELLS QUANTIFIED BY CYTOMETRY (IN URINE)