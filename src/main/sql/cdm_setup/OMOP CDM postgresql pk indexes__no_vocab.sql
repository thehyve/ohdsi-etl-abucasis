/*********************************************************************************
# Copyright 2014 Observational Health Data Sciences and Informatics
#
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
********************************************************************************/

/************************

 ####### #     # ####### ######      #####  ######  #     #            #####        ###      ######  #    #      ##       ###
 #     # ##   ## #     # #     #    #     # #     # ##   ##    #    # #     #      #   #     #     # #   #      #  #       #  #    # #####  #  ####  ######  ####
 #     # # # # # #     # #     #    #       #     # # # # #    #    # #           #     #    #     # #  #        ##        #  ##   # #    # # #    # #      #
 #     # #  #  # #     # ######     #       #     # #  #  #    #    # ######      #     #    ######  ###        ###        #  # #  # #    # # #      #####   ####
 #     # #     # #     # #          #       #     # #     #    #    # #     # ### #     #    #       #  #      #   # #     #  #  # # #    # # #      #           #
 #     # #     # #     # #          #     # #     # #     #     #  #  #     # ###  #   #     #       #   #     #    #      #  #   ## #    # # #    # #      #    #
 ####### #     # ####### #           #####  ######  #     #      ##    #####  ###   ###      #       #    #     ###  #    ### #    # #####  #  ####  ######  ####


postgresql script to create the required primary keys and indices within the OMOP common data model, version 6.0

last revised: 30-Aug-2017

author:  Patrick Ryan, Clair Blacketer

description:  These primary keys and indices are considered a minimal requirement to ensure adequate performance of analyses.

*************************/


/************************
*************************
*************************
*************************

Primary key constraints

*************************
*************************
*************************
************************/



/************************

Standardized vocabulary

************************/


/*
ALTER TABLE concept ADD CONSTRAINT xpk_concept PRIMARY KEY (concept_id);

ALTER TABLE vocabulary ADD CONSTRAINT xpk_vocabulary PRIMARY KEY (vocabulary_id);

ALTER TABLE domain ADD CONSTRAINT xpk_domain PRIMARY KEY (domain_id);

ALTER TABLE concept_class ADD CONSTRAINT xpk_concept_class PRIMARY KEY (concept_class_id);

ALTER TABLE concept_relationship ADD CONSTRAINT xpk_concept_relationship PRIMARY KEY (concept_id_1,concept_id_2,relationship_id);

ALTER TABLE relationship ADD CONSTRAINT xpk_relationship PRIMARY KEY (relationship_id);

ALTER TABLE concept_ancestor ADD CONSTRAINT xpk_concept_ancestor PRIMARY KEY (ancestor_concept_id,descendant_concept_id);

ALTER TABLE source_to_concept_map ADD CONSTRAINT xpk_source_to_concept_map PRIMARY KEY (source_vocabulary_id,target_concept_id,source_code,valid_end_date);

ALTER TABLE drug_strength ADD CONSTRAINT xpk_drug_strength PRIMARY KEY (drug_concept_id, ingredient_concept_id);
*/ 

/**************************

Standardized meta-data

***************************/



/************************

Standardized clinical data

************************/


/**PRIMARY KEY NONCLUSTERED constraints**/

ALTER TABLE cdm5.person ADD CONSTRAINT xpk_person PRIMARY KEY ( person_id ) ;

ALTER TABLE cdm5.observation_period ADD CONSTRAINT xpk_observation_period PRIMARY KEY ( observation_period_id ) ;

ALTER TABLE cdm5.specimen ADD CONSTRAINT xpk_specimen PRIMARY KEY ( specimen_id ) ;

ALTER TABLE cdm5.death ADD CONSTRAINT xpk_death PRIMARY KEY ( person_id ) ;

ALTER TABLE cdm5.visit_occurrence ADD CONSTRAINT xpk_visit_occurrence PRIMARY KEY ( visit_occurrence_id ) ;

ALTER TABLE cdm5.visit_detail ADD CONSTRAINT xpk_visit_detail PRIMARY KEY ( visit_detail_id ) ;

ALTER TABLE cdm5.procedure_occurrence ADD CONSTRAINT xpk_procedure_occurrence PRIMARY KEY ( procedure_occurrence_id ) ;

ALTER TABLE cdm5.drug_exposure ADD CONSTRAINT xpk_drug_exposure PRIMARY KEY ( drug_exposure_id ) ;

ALTER TABLE cdm5.device_exposure ADD CONSTRAINT xpk_device_exposure PRIMARY KEY ( device_exposure_id ) ;

ALTER TABLE cdm5.condition_occurrence ADD CONSTRAINT xpk_condition_occurrence PRIMARY KEY ( condition_occurrence_id ) ;

ALTER TABLE cdm5.measurement ADD CONSTRAINT xpk_measurement PRIMARY KEY ( measurement_id ) ;

ALTER TABLE cdm5.note ADD CONSTRAINT xpk_note PRIMARY KEY ( note_id ) ;

ALTER TABLE cdm5.note_nlp ADD CONSTRAINT xpk_note_nlp PRIMARY KEY ( note_nlp_id ) ;

ALTER TABLE cdm5.observation  ADD CONSTRAINT xpk_observation PRIMARY KEY ( observation_id ) ;

ALTER TABLE cdm5.survey_conduct ADD CONSTRAINT xpk_survey PRIMARY KEY ( survey_conduct_id ) ;


/************************

Standardized health system data

************************/


ALTER TABLE cdm5.location ADD CONSTRAINT xpk_location PRIMARY KEY ( location_id ) ;


ALTER TABLE cdm5.location_history ADD CONSTRAINT xpk_location_history PRIMARY KEY ( location_history_id ) ;


ALTER TABLE cdm5.care_site ADD CONSTRAINT xpk_care_site PRIMARY KEY ( care_site_id ) ;


ALTER TABLE cdm5.provider ADD CONSTRAINT xpk_provider PRIMARY KEY ( provider_id ) ;



/************************

Standardized health economics

************************/


ALTER TABLE cdm5.payer_plan_period ADD CONSTRAINT xpk_payer_plan_period PRIMARY KEY ( payer_plan_period_id ) ;

ALTER TABLE cdm5.cost ADD CONSTRAINT xpk_visit_cost PRIMARY KEY ( cost_id ) ;


/************************

Standardized derived elements

************************/

ALTER TABLE cdm5.drug_era ADD CONSTRAINT xpk_drug_era PRIMARY KEY ( drug_era_id ) ;

ALTER TABLE cdm5.dose_era  ADD CONSTRAINT xpk_dose_era PRIMARY KEY ( dose_era_id ) ;

ALTER TABLE cdm5.condition_era ADD CONSTRAINT xpk_condition_era PRIMARY KEY ( condition_era_id ) ;


/************************
*************************
*************************
*************************

Indices

*************************
*************************
*************************
************************/

/************************

Standardized vocabulary

************************/
/*
CREATE UNIQUE INDEX idx_concept_concept_id  ON concept  (concept_id ASC);
CLUSTER concept  USING idx_concept_concept_id ;
CREATE INDEX idx_concept_code ON concept (concept_code ASC);
CREATE INDEX idx_concept_vocabluary_id ON concept (vocabulary_id ASC);
CREATE INDEX idx_concept_domain_id ON concept (domain_id ASC);
CREATE INDEX idx_concept_class_id ON concept (concept_class_id ASC);

CREATE UNIQUE INDEX idx_vocabulary_vocabulary_id  ON vocabulary  (vocabulary_id ASC);
CLUSTER vocabulary  USING idx_vocabulary_vocabulary_id ;

CREATE UNIQUE INDEX idx_domain_domain_id  ON domain  (domain_id ASC);
CLUSTER domain  USING idx_domain_domain_id ;

CREATE UNIQUE INDEX idx_concept_class_class_id  ON concept_class  (concept_class_id ASC);
CLUSTER concept_class  USING idx_concept_class_class_id ;

CREATE INDEX idx_concept_relationship_id_1 ON concept_relationship (concept_id_1 ASC);
CREATE INDEX idx_concept_relationship_id_2 ON concept_relationship (concept_id_2 ASC);
CREATE INDEX idx_concept_relationship_id_3 ON concept_relationship (relationship_id ASC);

CREATE UNIQUE INDEX idx_relationship_rel_id  ON relationship  (relationship_id ASC);
CLUSTER relationship  USING idx_relationship_rel_id ;

CREATE INDEX idx_concept_synonym_id  ON concept_synonym  (concept_id ASC);
CLUSTER concept_synonym  USING idx_concept_synonym_id ;

CREATE INDEX idx_concept_ancestor_id_1  ON concept_ancestor  (ancestor_concept_id ASC);
CLUSTER concept_ancestor  USING idx_concept_ancestor_id_1 ;
CREATE INDEX idx_concept_ancestor_id_2 ON concept_ancestor (descendant_concept_id ASC);

CREATE INDEX idx_source_to_concept_map_id_3  ON source_to_concept_map  (target_concept_id ASC);
CLUSTER source_to_concept_map  USING idx_source_to_concept_map_id_3 ;
CREATE INDEX idx_source_to_concept_map_id_1 ON source_to_concept_map (source_vocabulary_id ASC);
CREATE INDEX idx_source_to_concept_map_id_2 ON source_to_concept_map (target_vocabulary_id ASC);
CREATE INDEX idx_source_to_concept_map_code ON source_to_concept_map (source_code ASC);

CREATE INDEX idx_drug_strength_id_1  ON drug_strength  (drug_concept_id ASC);
CLUSTER drug_strength  USING idx_drug_strength_id_1 ;
CREATE INDEX idx_drug_strength_id_2 ON drug_strength (ingredient_concept_id ASC);
*/

/**************************

Standardized meta-data

***************************/





/************************

Standardized clinical data

************************/

CREATE UNIQUE INDEX idx_person_id  ON cdm5.person  (person_id ASC);
CLUSTER cdm5.person  USING idx_person_id ;

CREATE INDEX idx_observation_period_id  ON cdm5.observation_period  (person_id ASC);
CLUSTER cdm5.observation_period  USING idx_observation_period_id ;

CREATE INDEX idx_specimen_person_id  ON cdm5.specimen  (person_id ASC);
CLUSTER cdm5.specimen  USING idx_specimen_person_id ;
CREATE INDEX idx_specimen_concept_id ON cdm5.specimen (specimen_concept_id ASC);

CREATE INDEX idx_death_person_id  ON cdm5.death  (person_id ASC);
CLUSTER cdm5.death  USING idx_death_person_id ;

CREATE INDEX idx_visit_person_id  ON cdm5.visit_occurrence  (person_id ASC);
CLUSTER cdm5.visit_occurrence  USING idx_visit_person_id ;
CREATE INDEX idx_visit_concept_id ON cdm5.visit_occurrence (visit_concept_id ASC);

CREATE INDEX idx_visit_detail_person_id  ON cdm5.visit_detail  (person_id ASC);
CLUSTER cdm5.visit_detail  USING idx_visit_detail_person_id ;
CREATE INDEX idx_visit_detail_concept_id ON cdm5.visit_detail (visit_detail_concept_id ASC);

CREATE INDEX idx_procedure_person_id  ON cdm5.procedure_occurrence  (person_id ASC);
CLUSTER cdm5.procedure_occurrence  USING idx_procedure_person_id ;
CREATE INDEX idx_procedure_concept_id ON cdm5.procedure_occurrence (procedure_concept_id ASC);
CREATE INDEX idx_procedure_visit_id ON cdm5.procedure_occurrence (visit_occurrence_id ASC);

CREATE INDEX idx_drug_person_id  ON cdm5.drug_exposure  (person_id ASC);
CLUSTER cdm5.drug_exposure  USING idx_drug_person_id ;
CREATE INDEX idx_drug_concept_id ON cdm5.drug_exposure (drug_concept_id ASC);
CREATE INDEX idx_drug_visit_id ON cdm5.drug_exposure (visit_occurrence_id ASC);

CREATE INDEX idx_device_person_id  ON cdm5.device_exposure  (person_id ASC);
CLUSTER cdm5.device_exposure  USING idx_device_person_id ;
CREATE INDEX idx_device_concept_id ON cdm5.device_exposure (device_concept_id ASC);
CREATE INDEX idx_device_visit_id ON cdm5.device_exposure (visit_occurrence_id ASC);

CREATE INDEX idx_condition_person_id  ON cdm5.condition_occurrence  (person_id ASC);
CLUSTER cdm5.condition_occurrence  USING idx_condition_person_id ;
CREATE INDEX idx_condition_concept_id ON cdm5.condition_occurrence (condition_concept_id ASC);
CREATE INDEX idx_condition_visit_id ON cdm5.condition_occurrence (visit_occurrence_id ASC);

CREATE INDEX idx_measurement_person_id  ON cdm5.measurement  (person_id ASC);
CLUSTER cdm5.measurement  USING idx_measurement_person_id ;
CREATE INDEX idx_measurement_concept_id ON cdm5.measurement (measurement_concept_id ASC);
CREATE INDEX idx_measurement_visit_id ON cdm5.measurement (visit_occurrence_id ASC);

CREATE INDEX idx_note_person_id  ON cdm5.note  (person_id ASC);
CLUSTER cdm5.note  USING idx_note_person_id ;
CREATE INDEX idx_note_concept_id ON cdm5.note (note_type_concept_id ASC);
CREATE INDEX idx_note_visit_id ON cdm5.note (visit_occurrence_id ASC);

CREATE INDEX idx_note_nlp_note_id  ON cdm5.note_nlp  (note_id ASC);
CLUSTER cdm5.note_nlp  USING idx_note_nlp_note_id ;
CREATE INDEX idx_note_nlp_concept_id ON cdm5.note_nlp (note_nlp_concept_id ASC);

CREATE INDEX idx_observation_person_id  ON cdm5.observation  (person_id ASC);
CLUSTER cdm5.observation  USING idx_observation_person_id ;
CREATE INDEX idx_observation_concept_id ON cdm5.observation (observation_concept_id ASC);
CREATE INDEX idx_observation_visit_id ON cdm5.observation (visit_occurrence_id ASC);

CREATE INDEX idx_survey_person_id  ON cdm5.survey_conduct  (person_id ASC);
CLUSTER cdm5.survey_conduct  USING idx_survey_person_id ;

CREATE INDEX idx_fact_relationship_id_1 ON cdm5.fact_relationship (domain_concept_id_1 ASC);
CREATE INDEX idx_fact_relationship_id_2 ON cdm5.fact_relationship (domain_concept_id_2 ASC);
CREATE INDEX idx_fact_relationship_id_3 ON cdm5.fact_relationship (relationship_concept_id ASC);



/************************

Standardized health system data

************************/





/************************

Standardized health economics

************************/

CREATE INDEX idx_period_person_id  ON cdm5.payer_plan_period  (person_id ASC);
CLUSTER cdm5.payer_plan_period  USING idx_period_person_id ;

CREATE INDEX idx_cost_person_id  ON cdm5.cost  (person_id ASC);
CLUSTER cdm5.cost  USING idx_cost_person_id ;


/************************

Standardized derived elements

************************/


CREATE INDEX idx_drug_era_person_id  ON cdm5.drug_era  (person_id ASC);
CLUSTER cdm5.drug_era  USING idx_drug_era_person_id ;
CREATE INDEX idx_drug_era_concept_id ON cdm5.drug_era (drug_concept_id ASC);


CREATE INDEX idx_dose_era_person_id  ON cdm5.dose_era  (person_id ASC);
CLUSTER cdm5.dose_era  USING idx_dose_era_person_id ;
CREATE INDEX idx_dose_era_concept_id ON cdm5.dose_era (drug_concept_id ASC);

CREATE INDEX idx_condition_era_person_id  ON cdm5.condition_era  (person_id ASC);
CLUSTER cdm5.condition_era  USING idx_condition_era_person_id ;
CREATE INDEX idx_condition_era_concept_id ON cdm5.condition_era (condition_concept_id ASC);

