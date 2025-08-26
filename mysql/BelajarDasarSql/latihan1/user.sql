show databases;

use phpdasar;

show tables;

create table user
(
    id       INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(50),
    password VARCHAR(255),
    primary key (id)
) engine = innodb;

select * from user;

desc user;