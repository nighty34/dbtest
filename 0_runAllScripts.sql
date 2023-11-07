drop database if exists lecturerratingdb;

drop user if exists ratinguser;
create user ratinguser;

create database lecturerratingdb WITH OWNER ratinguser ENCODING 'UTF-8';
-- ^ replace 'schema' with 'database' if you want to change back to databases
grant connect on database lecturerratingdb to ratinguser;

\c lecturerratingdb

grant all privileges on database lecturerratingdb to ratinguser;

\i 1_extensions.sql
\i 2_schema.sql
\i 3_inserts.sql
\i 4_constraints.sql
