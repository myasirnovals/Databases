show databases;

create database pzn_studikasus_multi_bahasa;

use pzn_studikasus_multi_bahasa;

CREATE TABLE categories
(
    id       VARCHAR(100),
    position INT,
    PRIMARY KEY (id)
) ENGINE = InnoDB;

DESCRIBE categories;

INSERT INTO categories (id, position)
VALUES ('FOOD', 1);
INSERT INTO categories (id, position)
VALUES ('GADGET', 2);
INSERT INTO categories (id, position)
VALUES ('FASHION', 3);

SELECT *
FROM categories
ORDER BY position;

ALTER TABLE categories
    MODIFY COLUMN position INT NOT NULL;

DESCRIBE categories;

CREATE TABLE categories_translation
(
    category_id VARCHAR(100) NOT NULL,
    language    VARCHAR(100) NOT NULL,
    name        VARCHAR(100) NOT NULL,
    description TEXT,
    PRIMARY KEY (category_id, language)
) ENGINE = InnoDB;

DESC categories_translation;

show databases;

use pzn_studikasus_multi_bahasa;

show tables;

ALTER TABLE categories_translation
    ADD CONSTRAINT fk_cateogries_translation
        FOREIGN KEY (category_id) REFERENCES categories (id);

INSERT INTO categories_translation (category_id, language, name, description)
VALUES ('FOOD', 'in_ID', 'Makanan', 'Deskripsi Makanan');

INSERT INTO categories_translation (category_id, language, name, description)
VALUES ('FOOD', 'en_US', 'Food', 'Food Description');

INSERT INTO categories_translation (category_id, language, name, description)
VALUES ('GADGET', 'in_ID', 'Gawai', 'Deskripsi Gawai');

INSERT INTO categories_translation (category_id, language, name, description)
VALUES ('GADGET', 'en_US', 'Gadget', 'Gadget Description');

SELECT *
FROM categories
         join categories_translation ct on categories.id = ct.category_id
WHERE language = 'in_ID' ORDER BY position;