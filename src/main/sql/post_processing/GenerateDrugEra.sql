/*********************************************************************************

# Copyright 2017 Observational Health Data Sciences and Informatics

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

/*******************************************************************************
Retrieved 2018-10-30 from: https://github.com/OHDSI/CommonDataModel/tree/master/CodeExcerpts/DerivedTables


PURPOSE: Generate Era table (based on conversion script from V4  V5).



last revised: Jun 2017

authors:  Patrick Ryan, Chris Knoll, Anthony Sena, Vojtech Huser





OHDSI-SQL File Instructions

-----------------------------



 1. Set parameter name of schema that contains CDMv4 instance

    (  @source_schema.DMV4,   @source_schema.DMV4_SCHEMA)

 2. Set parameter name of schema that contains CDMv5 instance

    ([CDM], cdm5)

 3. Run this script through SqlRender to produce a script that will work in your

    source dialect. SqlRender can be found here: https://github.com/OHDSI/SqlRender

 4. Run the script produced by SQL Render on your target RDBDMS.



<RDBMS> File Instructions

-------------------------



 1. This script will hold a number of placeholders for your CDM V4 and CDMV5

    database/schema. In order to make this file work in your environment, you

	should plan to do a global "FIND AND REPLACE" on this file to fill in the

	file with values that pertain to your environment. The following are the

	tokens you should use when doing your "FIND AND REPLACE" operation:


DRUG ERA

Note: Eras derived from DRUG_EXPOSURE table, using 30d gap



 ****/

DROP TABLE IF EXISTS ctedrugtarget
;


/* / */



-- Normalize DRUG_EXPOSURE_END_DATE to either the existing drug exposure end date, or add days supply, or add 1 day to the start date

CREATE TEMP TABLE ctedrugtarget


  AS
    SELECT
      d.drug_exposure_id,
      d.person_id,
      c.concept_id,
      d.drug_type_concept_id,
      drug_exposure_start_date,
      COALESCE(drug_exposure_end_date, (drug_exposure_start_date + days_supply * INTERVAL '1 day'),
               (drug_exposure_start_date + 1 * INTERVAL '1 day')) AS drug_exposure_end_date,
      c.concept_id                                                AS ingredient_concept_id


    FROM
      cdm5.drug_exposure d

      INNER JOIN cdm5.concept_ancestor ca ON ca.descendant_concept_id = d.drug_concept_id

      INNER JOIN cdm5.concept c ON ca.ancestor_concept_id = c.concept_id

    WHERE c.vocabulary_id = 'RxNorm'

          AND c.concept_class_id = 'Ingredient'
;


/* / */



DROP TABLE IF EXISTS cteenddates
;


/* / */



CREATE TEMP TABLE cteenddates


  AS
    SELECT
      person_id,
      ingredient_concept_id,
      (event_date + -30 * INTERVAL '1 day') AS end_date -- unpad the end date


    FROM
      (

        SELECT
          e1.person_id,
          e1.ingredient_concept_id,
          e1.event_date,
          COALESCE(e1.start_ordinal, MAX(e2.start_ordinal)) start_ordinal,
          e1.overall_ord

        FROM (

               SELECT
                 person_id,
                 ingredient_concept_id,
                 event_date,
                 event_type,
                 start_ordinal,
                 ROW_NUMBER()
                 OVER (

                   PARTITION BY person_id

                     , ingredient_concept_id
                   ORDER BY event_date

                     , event_type

                   ) AS overall_ord -- this re-numbers the inner UNION so all rows are numbered ordered by the event date

               FROM (

                      -- select the start dates, assigning a row number to each

                      SELECT
                        person_id,
                        ingredient_concept_id,
                        drug_exposure_start_date AS event_date,
                        0                        AS event_type,
                        ROW_NUMBER()
                        OVER (

                          PARTITION BY person_id

                            , ingredient_concept_id
                          ORDER BY drug_exposure_start_date

                          )                      AS start_ordinal

                      FROM ctedrugtarget


                      UNION ALL


                      -- add the end dates with NULL as the row number, padding the end dates by 30 to allow a grace period for overlapping ranges.

                      SELECT
                        person_id,
                        ingredient_concept_id,
                        (drug_exposure_end_date + 30 * INTERVAL '1 day'),
                        1 AS event_type,
                        NULL

                      FROM ctedrugtarget

                    ) rawdata

             ) e1

          INNER JOIN (

                       SELECT
                         person_id,
                         ingredient_concept_id,
                         drug_exposure_start_date AS event_date,
                         ROW_NUMBER()
                         OVER (

                           PARTITION BY person_id

                             , ingredient_concept_id
                           ORDER BY drug_exposure_start_date

                           )                      AS start_ordinal

                       FROM ctedrugtarget

                     ) e2 ON e1.person_id = e2.person_id

                             AND e1.ingredient_concept_id = e2.ingredient_concept_id

                             AND e2.event_date <= e1.event_date

        GROUP BY e1.person_id

          , e1.ingredient_concept_id

          , e1.event_date

          , e1.start_ordinal

          , e1.overall_ord

      ) e

    WHERE 2 * e.start_ordinal - e.overall_ord = 0
;


/* / */



DROP TABLE IF EXISTS ctedrugexpends
;


/* / */



CREATE TEMP TABLE ctedrugexpends


  AS
    SELECT
      d.person_id,
      d.ingredient_concept_id,
      d.drug_type_concept_id,
      d.drug_exposure_start_date,
      MIN(e.end_date) AS era_end_date


    FROM
      ctedrugtarget d

      INNER JOIN cteenddates e ON d.person_id = e.person_id

                                  AND d.ingredient_concept_id = e.ingredient_concept_id

                                  AND e.end_date >= d.drug_exposure_start_date

    GROUP BY d.person_id

      , d.ingredient_concept_id

      , d.drug_type_concept_id

      , d.drug_exposure_start_date
;


/* / */


INSERT INTO cdm5.drug_era

  SELECT
    row_number()
    OVER (

      ORDER BY person_id

      )                           AS drug_era_id,
    person_id,
    ingredient_concept_id,
    min(drug_exposure_start_date) AS drug_era_start_date,
    era_end_date,
    COUNT(*)                      AS drug_exposure_count,
    30                            AS gap_days

  FROM ctedrugexpends

  GROUP BY person_id

    , ingredient_concept_id

    , drug_type_concept_id

    , era_end_date
;