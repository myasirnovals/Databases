show tables;

create table categories (
	id varchar(10) not null,
    name varchar(100) not null,
    primary key (id)
) engine = innodb;

drop table category;

desc categories;

desc products;

alter table products
add column id_category varchar (10);

alter table products
add constraint fk_products_categories
foreign key (id_category) references categories(id);

show create table products;

insert into categories (id, name) values
('C0001', 'Makanan'),
('C0002', 'Minuman'),
('C0003', 'Lain-lain');

select * from categories;

select * from products;