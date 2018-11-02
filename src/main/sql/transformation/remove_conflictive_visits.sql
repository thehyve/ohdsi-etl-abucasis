-- look for multiple visit ocurrences for patients that were transfered to another hospital
-- (discharge_to_concept_id = 8717) with duplicated admission dates (they were not properly merged in ABUCASIS)

-- (the duplicated visit with the shortest discharge to concept id will be removed)
WITH cte1 AS (
    DELETE
        FROM cdm5.visit_occurrence
        WHERE discharge_to_concept_id = 8844 AND visit_source_value != 'tb_morbilid'
        returning *
    ), cte2 AS (
    SELECT
           row_number() over(partition by visit_occurrence_id, visit_start_date ORDER BY visit_occurrence_id, visit_start_date, visit_end_date DESC) AS row_number,
           *
    FROM cte1
    )
INSERT INTO cdm5.visit_occurrence
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
    WHERE row_number != 1
;