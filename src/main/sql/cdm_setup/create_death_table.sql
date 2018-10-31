create table @cdm_schema.death
(
  person_id               integer not null,
  death_date              date    not null,
  death_datetime          timestamp,
  death_type_concept_id   integer not null,
  cause_concept_id        integer,
  cause_source_value      varchar(50),
  cause_source_concept_id integer
);