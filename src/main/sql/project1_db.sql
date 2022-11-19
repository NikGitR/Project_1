CREATE TABLE Person
(
    id            int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    full_name     varchar(100) NOT NULL UNIQUE,
    year_of_birth int          NOT NULL
);

CREATE TABLE Book
(
    id        int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title     varchar(100) NOT NULL,
    author    VARCHAR(100) NOT NULL,
    year      int          NOT NULL,
    person_id int          REFERENCES Person (id) ON DELETE SET NULL
);