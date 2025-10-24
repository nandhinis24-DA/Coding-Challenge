create database Ecommerce;
use Ecommerce;

create table product_info (
product_id int primary key,
product_name varchar(100),
product_prize decimal (10,2)
);

insert into product_info (product_id, product_name, product_prize) values
(1,'Refrigerator', 42000.00 ),
(2,'Air_conditioner', 38000.00),
(3, 'Smart_TV', 60000.00),
(4, 'Wet_Grinder', 12500.00),
(5, 'Washing_Machine', 64000.00);

create table Sales_info (
    sale_id INT PRIMARY KEY,
    product_id INT,
    Quantity INT,
    Total_Amount DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product_info(product_id)
);

insert into Sales_info (sale_id, product_id, Quantity, Total_Amount) values
(1, 1, 1, 42000.00),
(2, 2, 1, 38000.00),
(3, 3, 1, 60000.00),
(4, 4, 1, 12500.00),
(5, 5, 1, 64000.00);

create table Employees (
    Emp_ID INT PRIMARY KEY,
    Emp_Name VARCHAR(100),
    Department VARCHAR(50)
    );

INSERT INTO Employees (Emp_ID, Emp_Name, Department) VALUES
(1, 'Banu', 'BM'),
(2, 'Pooja', 'Marketing'),
(3, 'Jeni', 'Marketing'),
(4, 'Jesika', 'HR'),
(5, 'Chandra', 'IT'),
(6, 'Geetha', 'Accounts'),
(7, 'Ilakkiya', 'Accounts'),
(8, 'Ram', 'Marketing'),
(9, 'Siva', 'IT Admin'),
(10, 'Usha', 'HR'),
(11, 'Mukesh', 'Admin'),
(12, 'Pratheep', 'IT'),
(13, 'Yazhini', 'HR');

SELECT * FROM product_info ORDER BY product_prize DESC LIMIT 3;

SELECT COUNT(*) AS TotalSales, SUM(Total_Amount) AS TotalRevenue, AVG(Total_Amount) AS AvgSaleValue, 
MAX(Total_Amount) AS HighestSale, MIN(Total_Amount) AS LowestSale FROM Sales_info;

SELECT Department, COUNT(*) AS Total_Employees FROM Employees GROUP BY Department HAVING COUNT(*) >=10;

select * from Employees;