show databases;

create database pzn_belajar_acid;

use pzn_belajar_acid;

show tables;

select * from accounts;

create table accounts(
	id varchar(100) not null primary key,
    name varchar(100) not null,
    balance bigint not null
) engine innodb;

start transaction;

insert into accounts (id, name, balance) values
('yasir', 'Yasir Noval', 1000000);

insert into accounts (id, name, balance) values
('budi', 'Budi Nugraha', 1000000);

commit;

start transaction;

delete from accounts where id = 'yasir';

delete from accounts where id = 'budi';

select * from accounts;

rollback;

start transaction;

update accounts set name = null
where id = 'yasir';

commit;

select * from accounts;

start transaction;

select * from accounts where id in ('yasir', 'budi') for update;

update accounts set balance = balance - 500000
where id = 'yasir';

update accounts set balance = balance + 500000
where id = 'budi';

commit;

select * from accounts;
