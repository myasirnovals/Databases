show databases;

create database pzn_belajar_mysql_notification;

use pzn_belajar_mysql_notification;

show tables;

create table user (
	id varchar(100) not null,
    name varchar(100) not null,
    primary key(id)
) engine = innodb;

insert into user (id, name) values
('yasir', 'Muhamad Yasir Noval'),
('yusron', 'Muhamad Yusron Noval');

select * from user;

# Notification

create table notification (
	id int not null auto_increment,
    title varchar(255) not null,
    detail text not null,
    create_at timestamp	not null,
    user_id varchar(100),
    primary key(id)
) engine = innodb;


alter table notification
add constraint fk_notification_user
foreign key(user_id) references user(id);

desc notification;

insert into notification (title, detail, create_at, user_id) values
('Contoh pesanan', 'Detail pesanan', current_timestamp(), 'yasir');

insert into notification (title, detail, create_at, user_id) values
('Contoh promo', 'Detail promo', current_timestamp(), null);

insert into notification (title, detail, create_at, user_id) values
('Contoh pembayaran', 'Detail pembayaran', current_timestamp(), 'yusron');

select * from notification;

select * from notification where (user_id = 'yasir' OR user_id IS NULL) order by create_at desc;

select * from notification where (user_id = 'yusron' OR user_id IS NULL) order by create_at desc;

# category

create table category (
	id varchar(100) not null,
    name varchar(100) not null,
    primary key(id)
) engine = innodb;

show tables;

alter table notification
add column category_id varchar(100);

desc notification;

select * from notification;

alter table notification
add constraint fk_notification_category
foreign key (category_id) references category(id);

insert into category (id, name) values
('INFO', 'info'),
('PROMO', 'promo');

select * from category;

update notification 
set category_id = 'INFO'
where id = 1;

update notification
set category_id = 'PROMO'
where id = 2;

update notification 
set category_id = 'INFO'
where id = 3;

select * from notification;

select * from notification n join category c on (n.category_id = c.id);

select * from notification n join category c 
on (n.category_id = c.id) 
where (n.user_id = 'yasir' OR n.user_id is null)
order by n.create_at desc;

select * from notification n join category c 
on (n.category_id = c.id) 
where (n.user_id = 'yusron' OR n.user_id is null)
order by n.create_at desc;

select * from notification n join category c 
on (n.category_id = c.id) 
where (n.user_id = 'yusron' OR n.user_id is null)
AND c.id = 'INFO'
order by n.create_at desc;

# notification read

create table notification_read (
	id 				int 		 not null auto_increment,
    is_read 		boolean 	 not null,
    notification_id int 		 not null,
    user_id 		varchar(100) not null,
    primary key (id)
) engine innodb;

show tables;

desc notification_read;

alter table notification_read
add constraint fk_notification_read_notification
foreign key (notification_id) references notification(id);

alter table notification_read
add constraint fk_notification_read_user
foreign key (user_id) references user(id);

desc notification_read;

select * from notification;

insert into notification_read (is_read, notification_id, user_id) values
(true, 2, 'yasir');

insert into notification_read (is_read, notification_id, user_id) values
(true, 2, 'yusron');

select * from notification_read;

select * from notification n 
	join category c on (n.category_id = c.id)
    left join notification_read nr on (nr.notification_id = n.id)
where (n.user_id = 'yasir' or n.user_id is null)
	AND (nr.user_id = 'yasir' or nr.user_id is null)
order by n.create_at desc;

insert into notification (title, detail, category_id, user_id, create_at)
values ('Contoh pesanan lagi', 'Detail pesanan lagi', 'INFO', 'yasir', current_timestamp());

insert into notification (title, detail, category_id, user_id, create_at)
values ('Contoh promo lagi', 'Detail promo lagi', 'PROMO', null, current_timestamp());

# Counter

select count(*) from notification n 
	join category c on (n.category_id = c.id)
    left join notification_read nr on (nr.notification_id = n.id)
where (n.user_id = 'yasir' or n.user_id is null)
	AND (nr.user_id is null)
order by n.create_at desc;

select * from notification;

insert into notification_read (is_read, notification_id, user_id)
values (true, 4, 'yasir');

insert into notification_read (is_read, notification_id, user_id)
values (true, 5, 'yasir');

insert into notification_read (is_read, notification_id, user_id)
values (true, 1, 'yasir');