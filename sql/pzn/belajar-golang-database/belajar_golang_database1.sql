show databases;

create database pzn_belajar_golang_database1;

use pzn_belajar_golang_database1;

show tables;

create table customer
(
    id   varchar(100) not null,
    name varchar(100) not null,
    primary key (id)
) engine = innodb;

select *
from customer;

delete
from customer;

alter table customer
    add column email      varchar(100),
    add column balance    int       default 0,
    add column rating     double    default 0.0,
    add column created_at timestamp default current_timestamp,
    add column birth_date date,
    add column married    boolean   default false;

desc customer;

INSERT INTO customer (id, name, email, balance, rating, birth_date, married)
VALUES ('yasir', 'Yasir', 'yan@gmail.com', 100000000, 90.0, '2003-10-10', false),
       ('budi', 'Budi', 'budi@gmail.com', 100000000, 80.0, '1990-10-10', true),
       ('joko', 'Joko', 'morro@gmail.com', 100000000, 75.9, '1995-10-10', true);

update customer
set email      = null,
    birth_date = null
where id = 'joko';


create table user
(
    username varchar(100) not null,
    password varchar(100) not null,
    primary key (username)
) engine = innodb;

select *
from user;

insert into user(username, password)
values ('admin', 'admin');

create table comments
(
    id      int          not null auto_increment,
    email   varchar(100) not null,
    comment text,
    primary key (id)
) engine = innodb;

desc comments;

select * from comments;

select count(*) from comments;