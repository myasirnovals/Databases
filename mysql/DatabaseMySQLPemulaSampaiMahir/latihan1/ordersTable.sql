create table orders (
	id int not null auto_increment,
    total int not null,
    order_date datetime not null default current_timestamp,
    primary key (id)
) engine = innodb;

desc orders;

create table orders_detail (
	id_product varchar(10) not null,
    id_order int not null,
    price int not null,
    quantity int not null,
    primary key (id_product, id_order)
) engine = innodb;

desc orders_detail;

alter table orders_detail
add constraint fk_orders_detail_products
foreign key (id_product) references products(id);

alter table orders_detail
add constraint fk_orders_detail_orders
foreign key (id_order) references orders(id);

show create table orders_detail;

insert into orders(total) values (50000);

select * from orders;