create database store_management;
use  store_management;
create table product(
	id int primary key auto_increment,
    name varchar(100) not null,
    description varchar(200) null,
    price double null,
    stock int null
);

insert into product(id, name, description, price, stock) values (1,'Iphone 16 Promax','Ios',32000000,3);
insert into product ( name, description, price, stock) values ('Samsung S25 Ultra','Android',18000000,5);

select * from product;
select id, name, price from product;
select id, name, price from product where price < 10000000;

update product set price = price * 0.9 where id= '1'; 
set sql_safe_updates = 0;
delete from product ;
set sql_safe_updates = 1;

alter table product add column Barcode varchar(50) null;
alter table product add column Warranty int default 6;

drop database product;