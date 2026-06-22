create table sales2
(order_id int, c_name varchar(50),city varchar(50),
product varchar(50), quantity int, price numeric (10,2), order_date date);

Insert into sales2 values
(1,'Amit','Mumbai','Laptop',1,55000,'2026-01-05'),
(2,'Priya','Delhi','Mouse',2,500,'2026-01-06'),
(3,'Rahul','Pune','Keyboard',1,1500,'2026-01-06'),
(4,'Sneha','Mumbai','Monitor',1,12000,'2026-01-07'),
(5,'Karan','Delhi','Laptop',1,55000,'2026-01-08'),
(6,'Neha','Mumbai','Mouse',3,500,'2026-01-08'),
(7,'Rohit','Pune','Laptop',1,55000,'2026-01-09'),
(8,'Anjali','Delhi','Monitor',2,12000,'2026-01-10'),
(9,'Vikas','Mumbai','Keyboard',2,1500,'2026-01-10'),
(10,'Pooja','Pune','Mouse',1,500,'2026-01-11'),
(11,'Amit','Mumbai','Laptop',1,55000,'2026-01-12'),
(12,'Priya','Delhi','Keyboard',1,1500,'2026-01-12'),
(13,'Rahul','Pune','Monitor',1,12000,'2026-01-13'),
(14,'Sneha','Mumbai','Mouse',2,500,'2026-01-14'),
(15,'Karan','Delhi','Laptop',1,55000,'2026-01-15');

/*Scenario 1: Mumbai Store Performance

The manager of the Mumbai branch wants to see all orders placed by customers from Mumbai.

Task:
Write a query to show all orders from Mumbai.*/
select * from sales2 where city='Mumbai';

/*Scenario 2: Laptop Sales Review

The company recently launched laptops and wants to review all laptop orders.

Task:
Show all orders where the product is Laptop.*/
select * from sales2 where product='Laptop';

/*Scenario 3: Premium Products

Management wants to check orders where the product price is more than ₹10,000.

Task:
Show all orders with price greater than 10000.*/
select * from sales2 where price>10000;

/*Scenario 4: First Look at Data

A new analyst joined the company and wants to understand what data is available.

Task:
Show all records from the sales table.*/
select * from sales2;

/*Scenario 5: Customer Directory

The marketing team only needs customer names and cities for a campaign.

Task:
Display customer_name and city only.*/
select c_name, city from sales2;

/*Scenario 6: Latest Order Review

The manager wants to see orders starting from the most recent date.

Task:
Display all orders sorted by order_date in descending order.*/
select * from sales2 order by order_date desc;

/*Scenario 7: Cheapest Products First

The purchasing team wants to inspect products from lowest price to highest price.

Task:
Display all records sorted by price in ascending order.*/
select * from sales2 order by price asc;

/*Scenario 8: Quick Sample

A stakeholder doesn't want the entire dataset. They only need a small sample.

Task:
Show the first 5 records.*/
select * from sales2 limit 5;

/*Scenario 9: Delhi Monitor Sales

The Delhi regional manager wants to review all Monitor orders sold in Delhi.

Task:
Show orders where:

city = Delhi
product = Monitor*/
select * from sales2 where city='Delhi' AND product='Monitor';

/*Scenario 10: Mumbai Laptop Orders

The sales head wants a report of Laptop orders from Mumbai customers.

Task:
Show orders where:

city = Mumbai
product = Laptop*/
select * from sales2 where city='Mumbai' AND product='Laptop';

/*Scenario 11: Recent Laptop Orders

Management wants to see Laptop orders first, with the latest orders appearing at the top.

Task:

Show only Laptop orders
Sort by order_date descending*/
select * from sales2 where product='Laptop' order by order_date desc;

/*Scenario 12: Sample of Delhi Customers

The manager wants to quickly review a few Delhi orders.

Task:

Show orders from Delhi
Display only first 3 records*/
select * from sales2 where city='Delhi' limit 3;
