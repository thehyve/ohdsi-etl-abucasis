-- Editing of the elements that appeared with a wrong mapping in the "conditions" table after dqd process.
-- Antonio Fernandez in database ABUCASIS for OMOP in ODHSI Project

-- Updating the values of the "condition_occurrence" domain that had the concept_id set to zero.
update cdm5.condition_occurrence set condition_source_concept_id='4137230' where condition_source_value = '0008N';   --> Ready for enhanced immunization status
update cdm5.condition_occurrence set condition_source_concept_id='4176550' where condition_source_value = '00044';   --> Impaired tissue integrity
update cdm5.condition_occurrence set condition_source_concept_id='4267413' where condition_source_value = 'V07.39D'; --> Prevention of NSAID gastropathy
update cdm5.condition_occurrence set condition_source_concept_id='4321837' where condition_source_value = '00047';   --> At risk for impaired skin integrity
update cdm5.condition_occurrence set condition_source_concept_id='45591453' where condition_source_value = 'I10';    --> Essential (primary) hypertension
update cdm5.condition_occurrence set condition_source_concept_id='44824634' where condition_source_value = '790.2';  --> Abnormal glucose
update cdm5.condition_occurrence set condition_source_concept_id='44829305' where condition_source_value = '790.29'; --> Other abnormal glucose
update cdm5.condition_occurrence set condition_source_concept_id='44837786' where condition_source_value = 'V22.2';  --> Pregnant state, incidental
update cdm5.condition_occurrence set condition_source_concept_id='45537986' where condition_source_value = 'E78.5';  --> Hyperlipidaemia, unspecified
update cdm5.condition_occurrence set condition_source_concept_id='45546824' where condition_source_value = 'V27.0';  --> Motorcycle rider injured in collision with fixed or stationary object, driver injured in nontraffic accident
update cdm5.condition_occurrence set condition_source_concept_id='45561952' where condition_source_value = 'E11.9';  --> Type 2 diabetes mellitus, without complications
update cdm5.condition_occurrence set condition_source_concept_id='40302863' where condition_source_value = '366';    --> SYNOVITIS
update cdm5.condition_occurrence set condition_source_concept_id='4306934' where condition_source_value = '00085';   --> Impaired mobility

--=====================================================================================================================

-- Moving the records belonging to the domain "condition_occurrence" to the domain "measurement".
insert into cdm5.measurement (person_id, measurement_concept_id, measurement_date, measurement_datetime, measurement_concept_id, 
        provider_id, value_as_concept_id, visit_occurrence_id, visit_detail_id, measurement_source_value, measurement_source_concept_id)
SELECT 
  person_id, 
  case condition_source_value
    when '790.4'  then '44822314' --> Nonspecific elevation of levels of transaminase or lactic acid dehydrogenase [LDH]
    when '790.9'  then '44836299' --> Other nonspecific findings on examination of blood
        end as measurement_concept_id,
  condition_start_date as measurement_date, 
  condition_start_datetime as measurement_datetime, 
  condition_type_concept_id as measurement_type_concept_id, 
  provider_id, 
  '4135493' as value_as_concept_id,
  visit_occurrence_id, 
  visit_detail_id, 
  condition_source_value as measurement_source_value, 
  condition_source_concept_id as measurement_source_concept_id
  FROM cdm5.condition_occurrence
  where condition_source_value in ('790.4','790.9');

-- Deleting records moved to the "measurement" domain 
-- Caution with the order of execution. Remove the "--" from the line below once the records have been created in the target table, because it cannot be undone.
-- delete from cdm5.condition_occurrence where where condition_source_value in ('790.4','790.9');

--=====================================================================================================================

-- Bringing the given records from the "condition_occurring" domain into the "observation" domain
insert into cdm5.observation (person_id, observation_concept_id, observation_date, observation_datetime, observation_type_concept_id, 
  value_as_concept_id, provider_id, visit_occurrence_id, visit_detail_id, observation_source_value, observation_source_concept_id, obs_event_field_concept_id)
SELECT 
  person_id, 
  case condition_source_value
    when '00084'  then 36032368  --> Health-related behaviors
    when 'V66.7'  then 44825047  --> Encounter for palliative care
    when 'V15.82'  then 44826156 --> Personal history of tobacco use
    when '796.2'  then 44829313  --> Elevated blood pressure reading without diagnosis of hypertension
    when 'V58.61'  then 44831974 --> Long-term (current) use of anticoagulants
    when '00079'  then 45917774  --> Non-compliance of drug therapy
    when '00001'  then 3450345   --> Alteration in nutrition: more than body requirements
  end as observation_concept_id,
  condition_start_date as observation_date, 
  condition_start_datetime as observation_datetime, 
  condition_type_concept_id as observation_type_concept_id, 
  4135493 as value_as_concept_id, --> Valor indicado como Abnormal, porque son medidas de las que no hay un valor que indicar.
  provider_id, 
  visit_occurrence_id, 
  visit_detail_id, 
  condition_source_value as observation_source_value, 
  condition_source_concept_id as observation_source_concept_id,
  0 as obs_event_field_concept_id
  FROM cdm5.condition_occurrence
  where condition_source_value in ('00079','00084','796.2','V15.82','V58.61','V66.7', '00001');
  
  -- Deleting records moved to the "observation" domain
  -- Caution with the order of execution. Remove the "--" from the line below once the records have been created in the target table, because it cannot be undone.
  -- delete from cdm5.condition_occurrence where condition_source_value in ('00079','00084','796.2','V15.82','V58.61','V66.7', '00001');

--=====================================================================================================================

-- Bringing the given records from the "condition_occurring" domain into the "procedure_occurrence" domain
insert into cdm5.procedure_occurrence (person_id, procedure_concept_id, procedure_date, procedure_datetime, procedure_type_concept_id, 
  provider_id, visit_occurrence_id, visit_detail_id, procedure_source_value, procedure_source_concept_id,modifier_concept_id)
SELECT 
  person_id, 
  case condition_source_value
    when '00208' then 4062359    --> Maternity benefit education
    when 'V25' then 44828520     --> Encounter for contraceptive management
    when 'V72.31' then 44828600  --> Routine gynecological examination
  end as procedure_concept_id,
  condition_start_date as procedure_date, 
  condition_start_datetime as procedure_datetime, 
  condition_type_concept_id as procedure_type_concept_id, 
  provider_id, 
  visit_occurrence_id, 
  visit_detail_id, 
  condition_source_value as procedure_source_value, 
  condition_source_concept_id as procedure_source_concept_id,
  0 as modifier_concept_id  --> valor necesario porque no se puede dejar esta columna a nulo
  FROM cdm5.condition_occurrence
  where condition_source_value in ('00208', 'V25', 'V72.31');
  
  -- Deleting records moved to the "procedure_occurrence" domain
  -- Caution with the order of execution. Remove the "--" from the line below once the records have been created in the target table, because it cannot be undone.
  -- delete from cdm5.condition_occurrence where condition_source_value in ('00208', 'V25', 'V72.31');"
