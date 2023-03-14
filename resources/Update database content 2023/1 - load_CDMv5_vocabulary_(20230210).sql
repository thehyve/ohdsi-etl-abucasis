-- Process of updating the Vocabulary schema tables with the updates sent from the ATHENA website in January 2023.
-- Antonio Fernandez in database ABUCASIS for OMOP in ODHSI Project

\COPY vocab_tmp.concept FROM '2023-02-10/CONCEPT.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
\COPY vocab_tmp.concept_ancestor FROM '2023-02-10/CONCEPT_ANCESTOR.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
\COPY vocab_tmp.concept_class FROM '2023-02-10/CONCEPT_CLASS.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
\COPY vocab_tmp.concept_relationship FROM '2023-02-10/CONCEPT_RELATIONSHIP.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

\COPY vocab_tmp.concept_synonym FROM '2023-02-10/CONCEPT_SYNONYM.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
\COPY vocab_tmp.relationship FROM '2023-02-10/RELATIONSHIP.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';
\COPY vocab_tmp.drug_strength FROM '2023-02-10/DRUG_STRENGTH.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

\COPY vocab_tmp.domain FROM '2023-02-10/DOMAIN.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

\COPY vocab_tmp.vocabulary FROM '2023-02-10/VOCABULARY.csv' WITH DELIMITER E'\t' CSV HEADER QUOTE E'\b';

DELETE FROM vocab_tmp.concept_relationship WHERE invalid_reason is not null;

-- After loading the files into the temporary table, we add the records that do not exist in the main tables. This is the first table to update.
-- VOCABULARY:
insert into vocab.vocabulary
SELECT t.vocabulary_id, t.vocabulary_name, t.vocabulary_reference, t.vocabulary_version, t.vocabulary_concept_id
  FROM vocab_tmp.vocabulary as t
  left join vocab.vocabulary as m using(vocabulary_id)
  where m.vocabulary_id is null;

-- CONCEPT (1893630 registros)
insert into vocab.concept
SELECT t.concept_id, t.concept_name, t.domain_id, t.vocabulary_id, t.concept_class_id, t.standard_concept, t.concept_code, t.valid_start_date, t.valid_end_date, t.invalid_reason
  
  FROM vocab_tmp.concept as t
  left join vocab.concept as m using(concept_id)
  where m.concept_id is null;

--CONCEPT_ANCESTOR (32132646 registros --> Attention: 5'5 horas de ejecucion)
insert into vocab.concept_ancestor
SELECT t.ancestor_concept_id, t.descendant_concept_id, t.min_levels_of_separation, t.max_levels_of_separation
  FROM vocab_tmp.concept_ancestor as t
  left join vocab.concept_ancestor as m using(ancestor_concept_id)
  where m.ancestor_concept_id is null;

-- CONCEPT_CLASS
insert into vocab.concept_class
SELECT t.concept_class_id, t.concept_class_name, t.concept_class_concept_id
  FROM vocab_tmp.concept_class as t
  left join vocab.concept_class as m using(concept_class_id)
  where m.concept_class_id is null;
  
--CONCEPT_RELATIONSHIP
insert into vocab.concept_relationship
SELECT t.concept_id_1, t.concept_id_2, t.relationship_id, t.valid_start_date, t.valid_end_date, t.invalid_reason
  FROM vocab_tmp.concept_relationship as t
  left join vocab.concept_relationship as m using(concept_id_1)
  where m.concept_id_1 is null;

--CONCEPT_SYNONYM (This table has given us an error because it has synonyms for concepts that do NOT exist in the concept table. I disable triggers to insert and enable them later.)
alter table vocab.concept_synonym disable trigger all;
insert into vocab.concept_synonym
SELECT t.concept_id, t.concept_synonym_name, t.language_concept_id
  FROM vocab_tmp.concept_synonym as t 
  left join vocab.concept_synonym as m using(concept_id)
  where m.concept_id is null;
alter table vocab.concept_synonym enable trigger all;

--DOMAIN (0 registros)
insert into vocab.domain
SELECT t.domain_id, t.domain_name, t.domain_concept_id
  FROM vocab_tmp.domain as t
  left join vocab.domain as m using(domain_id)
  where m.domain_id is null;

-- DRUG_STRENGHT (520 registros)
insert into vocab.drug_strength
SELECT t.drug_concept_id, t.ingredient_concept_id, t.amount_value, t.amount_unit_concept_id, t.numerator_value, t.numerator_unit_concept_id, t.denominator_value, t.denominator_unit_concept_id, t.box_size, t.valid_start_date, t.valid_end_date, t.invalid_reason
  FROM vocab_tmp.drug_strength as t
  left join vocab.drug_strength as m using(drug_concept_id)
  where m.drug_concept_id is null;

--RELATIONSHIP (18 registros)
insert into vocab.relationship
SELECT t.relationship_id, t.relationship_name, t.is_hierarchical, t.defines_ancestry, t.reverse_relationship_id, t.relationship_concept_id
  FROM vocab_tmp.relationship as t
  left join vocab.relationship as m using(relationship_id)
  where m.relationship_id is null;

-- At this point, we are going to empty the temporary tables because we have already updated the CDM5 tables, to proceed to import the new ones and repeat this whole process. We are going to empty them in reverse order to how we have updated them.

truncate table vocab_tmp.RELATIONSHIP;
truncate table vocab_tmp.DRUG_STRENGTH;
truncate table vocab_tmp.DOMAIN;
truncate table vocab_tmp.CONCEPT_SYNONYM;
truncate table vocab_tmp.CONCEPT_RELATIONSHIP;
truncate table vocab_tmp.CONCEPT_CLASS;
truncate table vocab_tmp.CONCEPT_ANCESTOR;
truncate table vocab_tmp.CONCEPT;
truncate table vocab_tmp.VOCABULARY;
