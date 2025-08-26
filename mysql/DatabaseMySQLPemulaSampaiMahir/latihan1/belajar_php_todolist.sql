create database belajar_php_todolist;

show databases;

use belajar_php_todolist;

show tables;

create table todolist (
	id int not null auto_increment,
    todo varchar(255) not null,
    primary key (id)
) engine = innodb;

desc todolist;

select * from todolist;