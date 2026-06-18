/* SELECT
Show all records.
Show only customer names.
Show customer name and city.
Show product and price.*/

select * from sales;
select c_name from sales;
select distinct c_name , city from sales ;
select distinct product, price from sales;

/* WHERE
Show all customers from Mumbai.
Show all Laptop orders.
Show orders where price is 500.
Show orders from Pune.
Show all Monitor orders.*/

select * from sales where city= 'Mumbai';
select * from sales where product='Laptop';
select product, price from sales where price= 500;
select city from sales where city='Pune' ;
select * from sales where product='Monitor';

/* ORDER BY
Sort prices from low to high.
Sort prices from high to low.
Sort customers alphabetically.
Sort products alphabetically from z->A.
Sort orders by recent date.*/

select product, price from sales order by price;
select product, price from sales order by price desc;
select c_name from sales order by c_name;
select *  from sales order by product desc;
select c_name ,order_date from sales order by order_date desc;

/* LIMIT
Show first 3 records.
Show first 5 records.
Show first 7 records.
Show first 2 Laptop records.*/

select * from sales limit  3;
select * from sales limit  5;
select * from sales limit  7;
select * from sales where product='Laptop' limit  2;

/* Mixed Practice
Show all Laptop orders from Pune.
Show all Mouse orders and sort by price.
Show first 3 Mumbai orders.
Show all Monitor orders sorted by date.
Show first 2 Delhi orders.*/

select * from sales where product='Laptop' AND city='Pune';
select * from sales where product='Mouse' order by price;
select * from sales where city='Mumbai' limit 3;
select * from sales where product='Monitor' order by order_date desc;
select * from sales where city ='Delhi' limit 2;
