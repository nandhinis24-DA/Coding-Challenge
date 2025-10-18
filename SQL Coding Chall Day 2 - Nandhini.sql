create database onlinebookstore;
use onlinebookstore;

-- create table with primarykey
create table Books(
BookID int primary key,
Title varchar(100),
Author varchar(100),
ISBN varchar(20),
Price decimal(10,2)
);

-- create table with foreign key
create table Orders(
Orders_ID int Primary key,
BookID int,
Orderdate date,
quantity int,
foreign key (BookID) references Books(BookID)
);

-- add unique constraints to ISBN column
alter table books
add constraint uq_Books_ISBN unique (ISBN);

-- delete specific rows
delete from Orders
where Orders_ID <= 5;

truncate table Orders;