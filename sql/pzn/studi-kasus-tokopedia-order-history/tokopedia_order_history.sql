show databases;

CREATE DATABASE pzn_studikasus_tokopedia_order_history;

use pzn_studikasus_tokopedia_order_history;

CREATE TABLE orders
(
    id                    VARCHAR(100) PRIMARY KEY,
    seller_id             VARCHAR(100) NOT NULL,
    seller_name           VARCHAR(100) NOT NULL,
    buyer_id              VARCHAR(100) NOT NULL,
    buyer_name            VARCHAR(100) NOT NULL,
    shipping_name         VARCHAR(100) NOT NULL,
    shipping_address      VARCHAR(500) NOT NULL,
    shipping_phone        VARCHAR(25)  NOT NULL,
    logistic_id           VARCHAR(100) NOT NULL,
    logistic_name         VARCHAR(100) NOT NULL,
    payment_method_id     VARCHAR(100) NOT NULL,
    payment_method_name   VARCHAR(100) NOT NULL,
    total_quantity        INT          NOT NULL,
    total_weight          INT          NOT NULL,
    total_product_amount  BIGINT       NOT NULL,
    total_shipping_cost   BIGINT       NOT NULL,
    total_shopping_amount BIGINT       NOT NULL,
    service_charge        BIGINT       NOT NULL,
    total_amount          BIGINT       NOT NULL
) ENGINE = InnoDB;

show tables;

DESC orders;

CREATE TABLE order_details
(
    id             VARCHAR(100) PRIMARY KEY,
    order_id       VARCHAR(100) NOT NULL,
    product_id     VARCHAR(100) NOT NULL,
    product_name   VARCHAR(250) NOT NULL,
    product_weight INT          NOT NULL,
    product_price  BIGINT       NOT NULL,
    quantity       INT          NOT NULL,
    total_amount   BIGINT       NOT NULL,
    FOREIGN KEY fk_orders_to_order_details (order_id) REFERENCES orders (id)
) ENGINE = InnoDB;

SELECT *
FROM orders;

SELECT *
FROM order_details;

ALTER TABLE orders
    ADD COLUMN created_at TIMESTAMP NOT NULL;

INSERT INTO orders (id, created_at, seller_id, seller_name, buyer_id, buyer_name, shipping_name, shipping_address,
                    shipping_phone,
                    logistic_id, logistic_name, payment_method_id, payment_method_name, total_quantity, total_weight,
                    total_product_amount, total_shipping_cost, total_shopping_amount, service_charge, total_amount)
VALUES ('122', NOW(), 'galery_olahraga_indonesia', 'Galery Olahraga Indonesia', 'jokomorro', 'Joko Morro',
        'Budi Nugraha',
        'Blok. Sukamaju RT 02 RW 13 Desa Batujajar Barat Kec Batujajar Kab Bandung Barat', '089234566578', 'sicepat',
        'Sicepat Gokil', 'debit_online', 'Debit Online', 5, 5630, 508500, 60000, 568500, 100, 569500);

SELECT *
FROM orders;

INSERT INTO order_details (id, order_id, product_id, product_name, product_weight, product_price, quantity,
                           total_amount)
VALUES ('1', '122', 'p1', 'Basketball', 2300, 177900, 2, 355800);

INSERT INTO order_details (id, order_id, product_id, product_name, product_weight, product_price, quantity,
                           total_amount)
VALUES ('2', '122', 'p2', 'Basketball Warna', 500, 98900, 1, 98900);

INSERT INTO order_details (id, order_id, product_id, product_name, product_weight, product_price, quantity,
                           total_amount)
VALUES ('3', '122', 'p3', 'Pentil pompa bola', 54, 9900, 1, 9900);

INSERT INTO order_details (id, order_id, product_id, product_name, product_weight, product_price, quantity,
                           total_amount)
VALUES ('4', '122', 'p4', 'Pompa bola', 198, 43900, 1, 43900);

SELECT * FROM order_details;

# 2 Query

# Order id = 122

SELECT * FROM orders where id = '122';
SELECT * FROM order_details where order_id = '122';

# 1 Query
SELECT * FROM orders o JOIN order_details od on o.id = od.order_id WHERE o.id = '122';