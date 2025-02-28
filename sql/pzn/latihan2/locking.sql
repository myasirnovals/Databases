show databases ;

use belajar_mysql_dasar;

show tables ;

select * from guestbooks;

start transaction ;

select * from guestbooks;

update guestbooks
set title = 'Diubah oleh file locking'
where id = 9;

commit ;

select * from guestbooks;