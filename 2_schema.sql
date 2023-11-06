create table "Student"
(
    "MatriculationNo" INTEGER
        primary key,
    "FirstName"       VARCHAR(25)  not null,
    "LastName"        VARCHAR(25)  not null,
    "EmailAddress"    VARCHAR(100) not null
);

create table "Lecturer"
(
    "Id"           serial
        primary key,
    "FirstName"    VARCHAR(25)  not null,
    "LastName"     VARCHAR(25)  not null,
    "EmailAddress" VARCHAR(100) not null,
    "ShortName"    VARCHAR(6)   not null
);

create table "Rating"
(
    "Id"       serial
        primary key,
    "Rating"   TEXT    not null,
    "Student"  INTEGER not null,
    "Lecturer" INTEGER not null
);

create table "LecturerModule"
(
    "Id"       serial
        primary key,
    "Lecturer" INTEGER not null,
    "Module"   INTEGER not null
);

create table "Module"
(
    "Id"          serial
        primary key,
    "Identifier"  VARCHAR not null,
    "Description" TEXT
);
