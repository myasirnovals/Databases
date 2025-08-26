show databases;

use pzn_belajar_golang_database;

CREATE TABLE customer
(
    id   VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

show tables;

desc customer;

SELECT *
FROM customer;

DELETE
FROM customer;

ALTER TABLE customer
    ADD COLUMN email      VARCHAR(100),
    ADD COLUMN balance    INT       DEFAULT 0,
    ADD COLUMN rating     DOUBLE    DEFAULT 0.0,
    ADD COLUMN created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ADD COLUMN birth_date DATE,
    ADD COLUMN married    BOOLEAN   DEFAULT FALSE;

DESC customer;

INSERT INTO customer (id, name, email, balance, rating, birth_date, married)
VALUES ('yasir', 'Yasir', 'yan@gmail.com', 100000000, 90.0, '2003-10-10', false),
       ('budi', 'Budi', 'budi@gmail.com', 100000000, 80.0, '1990-10-10', true),
       ('joko', 'Joko', 'morro@gmail.com', 100000000, 75.9, '1995-10-10', true);

SELECT *
FROM customer;

UPDATE customer
SET email      = NULL,
    birth_date = NULL
WHERE id = 'joko';