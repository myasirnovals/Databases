show tables;

create table guestbooks (
	id int not null auto_increment,
    email varchar(100),
    title varchar(200),
    content text,
    primary key (id)
) engine = innodb;

select * from customer;

insert into guestbooks(email, title, content) values
('guest@gmail.com', 'Hello', 'Hello'),
('guest2@gmail.com', 'Hello', 'Hello'),
('guest3@gmail.com', 'Hello', 'Hello'),
('yasir@gmail.com', 'Hello', 'Hello'),
('yasir@gmail.com', 'Hello', 'Hello'),
('yasir@gmail.com', 'Hello', 'Hello');

select * from guestbooks;

select distinct email from customer
union
select distinct email from guestbooks;

select distinct email from customer
union all
select distinct email from guestbooks;

select emails.email, count(emails.email) from
(select email from customer
union all
select email from guestbooks) as emails
group by emails.email;
