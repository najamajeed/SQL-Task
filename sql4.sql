create database spice_garden;
use spice_garden;
create table categories(
categoty_no int primary key,
category_name varchar (50) not null unique);
describe categories;
create table menu_items(
item_number int primary key,
item_name varchar(50) not null,
category_no int,
price decimal(10,2) not null,
availability varchar (20) default 'Yes',
foreign key (category_no) references categories(category_no)); 
drop table categories;
create table categories(
category_no int primary key,
category_name varchar (50) not null unique);
insert into categories(category_no,category_name)
values (1,'starters'),
(2,'main cources'),
(3,'desserts');
select * from  categories;
insert into menu_items(item_number,item_name,category_no,price,availability)
VALUES (1,'chicken 65',1,180.00,'yes');
insert into menu_items(item_number,item_name,category_no,price,availability)
values (2,'paneer butter masala',2,220.00,'no');
insert into menu_items(item_number,item_name,category_no,price)
values (3,'veg spring roll',1,120.00),
(4,'chicken biriyani',2,250.00),
(5,'gulabu jamu',3,80.00);
select* from menu_items;
insert into categories(category_no,category_name)
values (1,'starters');
insert into menu_items(item_number,category_no,price,availability)
VALUES (1,1,180.00,'yes');
-- add column
alter table menu_items add column spice_level varchar(30);
-- changing varchar storage()
alter table menu_items modify column item_name varchar(80);
-- changing column name
alter table menu_items rename column availability to in_stock;
-- removing column
alter table menu_items drop column spice_level;
create table offers_test(
item_no int,
offfer_mode varchar(20));
drop table offers_test;
drop table categories;


