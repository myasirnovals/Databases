show databases;

use belajar_mysql_dasar;

show tables;

start transaction;

insert into guestbooks (email, title, content)
VALUES ('contoh@gmail.com', 'contoh', 'contoh'),
       ('contoh2@gmail.com', 'contoh', 'contoh'),
       ('contoh3@gmail.com', 'contoh', 'contoh');

select * from guestbooks;

commit ;

start transaction ;

delete from guestbooks;

select * from guestbooks;

rollback ;

