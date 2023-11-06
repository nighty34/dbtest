drop database if exists lecturerratingdb;
create database lecturerratingdb;
-- ^ replace 'schema' with 'database' if you want to change back to databases

drop user if exists ratinguser;
create user ratinguser;

grant connect on database lecturerratingdb to ratinguser;

\c lecturerratingdb

create schema lecturerratingschema;

grant select, insert, update, delete on all tables in schema lecturerratingschema to ratinguser;

SET SCHEMA 'lecturerratingschema';

\i 2_schema.sql
\i 3_inserts.sql
\i 4_constraints.sql
