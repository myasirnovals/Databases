show databases;

use belajar_mysql_dasar;

show tables;

select * from wishlist;

create table customer (
	id int not null auto_increment,
    email varchar(100) not null,
    first_name varchar(100) not null,
    last_name varchar(100),
    primary key (id),
    unique key email_unique(email)
) engine = innodb;

desc customer;

create table wallet (
	id int not null auto_increment,
    id_customer int not null,
    balance int not null default 0,
    primary key (id),
    unique key id_customer_unique (id_customer),
    foreign key fk_wallet_customer (id_customer) references customer(id)
) engine = innodb;

desc wallet;

insert into customer (email, first_name, last_name) values 
('yasir@gmail.com', 'Yasir', 'Noval'),
('yusron@gmail.com', 'Yusron', 'Noval');

select * from customer;

insert into wallet (id_customer) values (1), (2);

select * from wallet;

select customer.email, wallet.balance from wallet 
	join customer on (wallet.id_customer = customer.id);