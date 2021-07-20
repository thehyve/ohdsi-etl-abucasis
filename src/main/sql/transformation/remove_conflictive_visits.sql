-- Remove conflictive visits

------------------ Rule 1 --------------------
-- look for multiple visit occurrences for patients that were transferred to another hospital
-- (discharge_to_concept_id = 8717) with duplicated admission dates (they were not properly merged in ABUCASIS)
-- (the duplicated visit with the shortest discharge to concept id will be removed)

WITH cte0 AS (
    -- Generate table with count of visit_occurrence_id
    -- will be used to identify duplicated visit_occurrence_id in visit_occurrence_table
    SELECT visit_occurrence_id AS visitid, COUNT(*)
    FROM @cdm_schema.visit_occurrence
    GROUP BY visit_occurrence_id
    ),
     cte1 AS (
     -- Identify patients that were transfered to another hospital
    DELETE
        FROM @cdm_schema.visit_occurrence
        WHERE discharge_to_concept_id = 8844 AND visit_source_value != 'tb_morbilid'
     returning *
    ),
     cte2 AS (
     -- Sort rows by increasing start and end date
     -- will be used to capture in OMOP only the visit with the longest time span
    SELECT
           row_number() over(partition by visit_occurrence_id, visit_start_date ORDER BY visit_occurrence_id, visit_start_date, visit_end_date DESC) AS row_number,
           *
    FROM cte1
    )
INSERT INTO @cdm_schema.visit_occurrence
SELECT
       visit_occurrence_id		,
       person_id					 ,
       visit_concept_id				 ,
       visit_start_date		,
       visit_start_datetime		 ,
       visit_end_date			 ,
       visit_end_datetime			 ,
       visit_type_concept_id			 ,
       provider_id					,
       care_site_id					,
       visit_source_value			,
       visit_source_concept_id		 ,
       admitted_from_concept_id       ,
       admitted_from_source_value     ,
       discharge_to_source_value	 ,
       discharge_to_concept_id		,
       preceding_visit_occurrence_id

FROM cte2
LEFT JOIN cte0
ON cte2.visit_occurrence_id = cte0.visitid
-- Insert the longest visit (row number > 1) or if there's a unique record for that visit_occurrence_id capture it in the table
WHERE row_number != 1 OR (row_number=1 AND cte0.count = 1)
;

--------------------- Rule 2 -------------------
-- Remove visits with duplicated visit_occurrence_id
-- All unique combinations of person_id, visit_date and visit_origin must uniquely define a visit_occurrence_id
-- If a person visited a hospital >1 times on a day, multiple records on the visit_occurrence table with the same visit_occurrence_id
--     will be inserted.
-- This rule is intended to remove these duplicated records


WITH cte1 AS (
    DELETE
        FROM @cdm_schema.visit_occurrence
        returning *
    ), cte2 AS (
    SELECT
           row_number() over(partition by visit_occurrence_id, visit_start_date ORDER BY visit_occurrence_id, visit_start_date, visit_end_date DESC) AS row_number,
           *
    FROM cte1
    )
INSERT INTO @cdm_schema.visit_occurrence
    SELECT
        visit_occurrence_id		,
        person_id					 ,
        visit_concept_id				 ,
        visit_start_date		,
        visit_start_datetime		 ,
        visit_end_date			 ,
        visit_end_datetime			 ,
        visit_type_concept_id			 ,
        provider_id					,
        care_site_id					,
        visit_source_value			,
        visit_source_concept_id		 ,
        admitted_from_concept_id       ,
        admitted_from_source_value     ,
        discharge_to_source_value	 ,
        discharge_to_concept_id		,
        preceding_visit_occurrence_id
    FROM cte2
    WHERE row_number = 1
;
