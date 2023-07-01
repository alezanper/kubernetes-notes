CREATE DATABASE apidb;

USE apidb;

CREATE TABLE apidb.users (
    id BIGINT NOT NULL AUTO_INCREMENT,
    name varchar(80),
    email varchar(80) UNIQUE,
    PRIMARY KEY (id)
);

SELECT * FROM apidb.users;