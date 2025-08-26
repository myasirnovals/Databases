show databases;

create database phpdasar;

use phpdasar;

show tables;

create table mahasiswa
(
    id      int not null auto_increment,
    nama    varchar(100),
    nrp     char(9),
    email   varchar(100),
    jurusan varchar(100),
    gambar  varchar(100),
    primary key (id)
) engine = innodb;

desc mahasiswa;

insert into mahasiswa (nama, nrp, email, jurusan, gambar)
values ('Dietfred Bougainviella', '043040023', 'dietfred.navalcaptain@gmail.com', 'Navy', 'dietfred.jpg');

select *
from mahasiswa;

insert into mahasiswa (nama, nrp, email, jurusan, gambar)
values ('Gilbert Bougainviella', '073040023', 'gilbert.major@gmail.com', 'Army', 'gilbert.jpg'),
       ('Claudia Hodgins', '073040024', 'hodgins.lieutenantcolonel@gmail.com', 'Army', 'claudia.jpg');

update mahasiswa
set email = 'dietfried.navalcaptain@gmail.com'
where id = 1;

select *
from mahasiswa;