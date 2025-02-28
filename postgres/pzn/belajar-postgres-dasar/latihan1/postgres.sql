-- Materi 1 create table
create database belajar_postgres_dasar_1_pzn;

-- select datname
-- from pg_database;

-- drop database postgres_belajar_dasar_pzn;

-- drop database belajar_postgres_dasar_1;

-- select *
-- from pg_tables
-- where schemaname = 'public';

create table barang
(
    kode         int          not null,
    name         varchar(100) not null,
    harga        int          not null default 1000,
    jumlah       int          not null default 0,
    waktu_dibuat timestamp    not null default current_timestamp
);

alter table barang
    add column deskripsi text;

alter table barang
    drop column deskripsi;

alter table barang
    rename column name to nama;

truncate barang;

drop table barang;

-- Materi 2 insert table
create table products
(
    id          varchar(10)  not null,
    name        varchar(100) not null,
    description text,
    price       int          not null,
    quantity    int          not null default 0,
    created_at  timestamp    not null default current_timestamp
);

insert into products (id, name, price, quantity)
values ('P0001', 'Mie ayam original', 15000, 100);

insert into products (id, name, description, price, quantity)
values ('P0002', 'Mie ayam bakso tahu', 'Mie ayam original + bakso tahu', 20000, 100);

insert into products (id, name, price, quantity)
values ('P0003', 'Mie ayam ceker', 20000, 100),
       ('P0004', 'Mie ayam spesial', 25000, 100),
       ('P0005', 'Mie ayam yamin', 15000, 100);

-- Materi 3 select data
select *
from products;

select id, name, price, quantity
from products;

-- Materi 4 primary key
alter table products
    add primary key (id);

-- Materi 5 where clause
select id, name, price, quantity
from products
where quantity = 0;

select id, name, price, quantity
from products
where price = 20000;

select id, name, price, quantity
from products
where id = 'P0004';

-- Materi 6 Update
create type PRODUCT_CATEGORY as enum ('Makanan', 'Minuman', 'Lain-Lain');

alter table products
    add column category PRODUCT_CATEGORY;

select *
from products;

update products
set category = 'Makanan'
where id = 'P0001';

update products
set category = 'Makanan'
where id = 'P0002';

update products
set category = 'Makanan'
where id = 'P0003';

update products
set category = 'Makanan'
where id = 'P0004';

update products
set category = 'Makanan'
where id = 'P0005';

update products
set category    = 'Makanan',
    description = 'Mie Ayam + Ceker'
where id = 'P0003';

update products
set price = price + 5000
where id = 'P0004';

-- Materi 7 Delete Data
select *
from products;

insert into products(id, name, price, quantity, category)
values ('P0009', 'Contoh', 10000, 100, 'Minuman');

delete
from products
where id = 'P0009';

-- Materi 8 Alias
select *
from products;

select id          as kode,
       description as deskripsi,
       price       as harga
from products;

select id          as "Kode Barang",
       price       as "Harga Barang",
       description as "Deskripsi Barang"
from products;

select p.id          as kode,
       p.description as deskripsi,
       p.price       as harga
from products as p;

-- Materi 9 operator perbandingan
select *
from products;

select *
from products
where price > 15000;

select *
from products
where price <= 15000;

select *
from products
where products.category != 'Minuman';

-- Materi 10 And dan OR operator
select *
from products;

select *
from products
where price > 15000
  and category = 'Makanan';

insert into products(id, name, price, quantity, category)
values ('P0006', 'Es teh tawar', 10000, 100, 'Minuman'),
       ('P0007', 'Es Campur', 20000, 100, 'Minuman'),
       ('P0008', 'Jus jeruk', 15000, 100, 'Minuman');

select *
from products
where price > 15000
   or category = 'Makanan';

select *
from products
where quantity > 100
   or category = 'Makanan' and price > 15000;

select *
from products
where category = 'Makanan'
   or (quantity > 100 and price > 15000);

-- Materi 11 Like operator
select *
from products
where name ilike '%es%';

select *
from products
where name like '%Es%';

-- Materi 12 Null operator
select *
from products
where description is null;

-- Materi 13 Between operator
select *
from products
where price between 10000 and 20000;

select *
from products
where price not between 10000 and 20000;

-- Materi 14 In operator
select *
from products
where category in ('Makanan', 'Minuman');

-- Materi 15 Order by clause
select *
from products
order by price asc, id desc;

-- Materi 16 Limit clause
select *
from products
where price > 0
order by price asc, id desc;

select *
from products
where price > 0
order by price asc, id desc
limit 2;

select *
from products
where price > 0
order by price asc, id desc
limit 2 offset 2;

-- Materi 17 Select distinct data
select category
from products;

select distinct category
from products;

-- Materi 18 Numeric function
select 10 + 10 as hasil;

select id, name, price / 1000 as price_in_k
from products;

select pi();

select power(10, 2);

select cos(0), sin(0), tan(0);

select id, name, power(quantity, 2) as quantity_power_2
from products;

-- Materi 19 Auto increment
create table admin
(
    id         serial       not null,
    first_name varchar(100) not null,
    last_name  varchar(100),
    primary key (id)
);

select *
from admin;

insert into admin(first_name, last_name)
values ('Yasir', 'Noval'),
       ('Budi', 'Nugraha'),
       ('Joko', 'Lapuk');

select currval('admin_id_seq');

-- Materi 20 Sequence