CREATE TABLE student
(
    matriculation_no   INTEGER      PRIMARY KEY,
    first_name         VARCHAR(25)  NOT NULL,
    last_name          VARCHAR(25)  NOT NULL,
    email_address      VARCHAR(100) NOT NULL
);

CREATE TABLE lecturer
(
    id            serial       PRIMARY KEY,
    first_name    VARCHAR(25)  NOT NULL,
    last_name     VARCHAR(25)  NOT NULL,
    email_address VARCHAR(100) NOT NULL,
    short_name    VARCHAR(6)   NOT NULL
);

CREATE TABLE rating
(
    id          serial    PRIMARY KEY,
    rating      TEXT      NOT NULL,
    student     INTEGER   NOT NULL REFERENCES student,
    lecturer    INTEGER   NOT NULL REFERENCES lecturer,
    timestamp   TIMESTAMP NOT NULL DEFAULT now()
);

CREATE TABLE module
(
    id          serial  PRIMARY KEY,
    identifier  VARCHAR NOT NULL,
    description TEXT
);

CREATE TABLE lecturer_module
(
    lecturer INTEGER NOT NULL REFERENCES lecturer,
    module   INTEGER NOT NULL REFERENCES module,
    PRIMARY KEY (lecturer, module)
);
