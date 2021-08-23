/****
CONDITION ERA
Note: Eras derived from CONDITION_OCCURRENCE table, using 30d gap
****/
-- 
-- IF cteCondTarget EXISTS THEN
-- DROP TABLE cteCondTarget IF EXISTS;
-- /* / */

-- create base eras from the concepts found in condition_occurrence
-- CREATE TEMPORARY TABLE cteCondTarget
WITH cteCondTarget(person_id, condition_concept_id, condition_start_date, condition_end_date) AS
         (
             SELECT co.PERSON_ID
                  , co.condition_concept_id
                  , co.CONDITION_START_DATE
                  , COALESCE(co.CONDITION_END_DATE,
                             CONDITION_START_DATE + INTERVAL '1 day') AS CONDITION_END_DATE
--              INTO cteCondTarget
             FROM @cdm_schema.CONDITION_OCCURRENCE AS co
        ),
     cteCondEndDates(person_id, condition_concept_id, end_date) AS
         (
             SELECT PERSON_ID
                  , CONDITION_CONCEPT_ID
                  , (EVENT_DATE - 30 * INTERVAL '1 day') AS END_DATE -- unpad the end date
--              INTO cteCondEndDates
             FROM (
                      SELECT E1.PERSON_ID
                           , E1.CONDITION_CONCEPT_ID
                           , E1.EVENT_DATE
                           , COALESCE(E1.START_ORDINAL, MAX(E2.START_ORDINAL)) START_ORDINAL
                           , E1.OVERALL_ORD
                      FROM (
                               SELECT PERSON_ID
                                    , CONDITION_CONCEPT_ID
                                    , EVENT_DATE
                                    , EVENT_TYPE
                                    , START_ORDINAL
                                    , ROW_NUMBER() OVER (
                                   PARTITION BY PERSON_ID
                                       ,CONDITION_CONCEPT_ID ORDER BY EVENT_DATE
                                       ,EVENT_TYPE
                                   ) AS OVERALL_ORD -- this re-numbers the inner UNION so all rows are numbered ordered by the event date
                               FROM (
                                        -- select the start dates, assigning a row number to each
                                        SELECT PERSON_ID
                                             , CONDITION_CONCEPT_ID
                                             , CONDITION_START_DATE AS EVENT_DATE
                                             , - 1                  AS EVENT_TYPE
                                             , ROW_NUMBER() OVER (
                                            PARTITION BY PERSON_ID
                                                ,CONDITION_CONCEPT_ID ORDER BY CONDITION_START_DATE
                                            )                       AS START_ORDINAL
                                        FROM cteCondTarget

                                        UNION ALL

                                        -- pad the end dates by 30 to allow a grace period for overlapping ranges.
                                        SELECT PERSON_ID
                                             , CONDITION_CONCEPT_ID
                                             , (CONDITION_END_DATE + 30 * INTERVAL '1 day')
                                             , 1 AS EVENT_TYPE
                                             , NULL
                                        FROM cteCondTarget
                                    ) RAWDATA
                           ) E1
                               INNER JOIN (
                          SELECT PERSON_ID
                               , CONDITION_CONCEPT_ID
                               , CONDITION_START_DATE AS EVENT_DATE
                               , ROW_NUMBER() OVER (
                              PARTITION BY PERSON_ID
                                  ,CONDITION_CONCEPT_ID ORDER BY CONDITION_START_DATE
                              )                       AS START_ORDINAL
                          FROM cteCondTarget
                      ) E2 ON E1.PERSON_ID = E2.PERSON_ID
                          AND E1.CONDITION_CONCEPT_ID = E2.CONDITION_CONCEPT_ID
                          AND E2.EVENT_DATE <= E1.EVENT_DATE
                      GROUP BY E1.PERSON_ID
                             , E1.CONDITION_CONCEPT_ID
                             , E1.EVENT_DATE
                             , E1.START_ORDINAL
                             , E1.OVERALL_ORD
                  ) E
             WHERE (2 * E.START_ORDINAL) - E.OVERALL_ORD = 0
         ),
     cteConditionEnds(person_id, condition_concept_id, condition_start_date, era_end_date) AS
         (
             SELECT c.PERSON_ID
                  , c.CONDITION_CONCEPT_ID
                  , c.CONDITION_START_DATE
                  , MIN(e.END_DATE) AS ERA_END_DATE
--              INTO cteConditionEnds
             FROM cteCondTarget c
                      INNER JOIN cteCondEndDates e ON c.PERSON_ID = e.PERSON_ID
                 AND c.CONDITION_CONCEPT_ID = e.CONDITION_CONCEPT_ID
                 AND e.END_DATE >= c.CONDITION_START_DATE
             GROUP BY c.PERSON_ID
                    , c.CONDITION_CONCEPT_ID
                    , c.CONDITION_START_DATE
         )

INSERT INTO @cdm_schema.condition_era (condition_era_id
                                               ,person_id
                                               ,condition_concept_id
                                               ,condition_era_start_datetime
                                               ,condition_era_end_datetime
                                               ,condition_occurrence_count
)
SELECT row_number() OVER (
    ORDER BY person_id
    ) AS condition_era_id
     ,person_id
     ,CONDITION_CONCEPT_ID
     ,min(CONDITION_START_DATE) AS condition_era_start_datetime
     ,ERA_END_DATE AS condition_era_end_datetime
     ,COUNT(*) AS CONDITION_OCCURRENCE_COUNT
FROM cteConditionEnds
GROUP BY person_id
        ,CONDITION_CONCEPT_ID
        ,ERA_END_DATE;