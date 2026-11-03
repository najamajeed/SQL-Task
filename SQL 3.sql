CREATE database GREEN_LEAF_LIBRARYS;
use green_leaf_librarys;
create table BOOKS(
BOOK_no int,
title varchar(100),
author varchar(50),
genre varchar(50),
number_of_copies_available int,
price decimal(10,2),
added_date date
);
select * from BOOKS;
describe BOOKS;
insert into BOOKS (BOOK_no,title,author,genre,number_of_copies_available,price,added_date)
values (1,'The Alchemist','Paulo Coelho','Fiction',4,299.00,'2026-01-15'),
(2,'Wings of Fire','APJ Abdul Kalam','Biography',6,250.00,'2026-02-10'),
(3,'Automic Habits','James Clear','Self_help',3,499.00,'2020-03-05'),
(4,'Malgudi Days','RK Narayan','Fiction',5,199.00,'2026-04-20'),
(5,'The Story Of My Experience','MK Gandhi','Biography',2,150.00,'2026-02-12');
-- insert
INSERT into BOOKS(BOOK_no,title,author)
values(6,'Ponniyin Selvan','Kalki Krishnamkuthy');
describe books;
select title,price from BOOKS;
select genre,title,number_of_copies_available from BOOKS;
select title as 'book name',author as 'writer', price as 'cost' from BOOKS;

