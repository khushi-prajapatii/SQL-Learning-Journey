Insert into sales values 
(1,'Khushi','Mumbai','Laptop',1,50000,'2026-01-10'),
(2,'Aman','Delhi','Mouse',2,500,'2026-01-11'),
(3,'Riya','Mumbai','Keyboard',1,1500,'2026-01-12'),
(4,'Raj','Pune','Laptop',1,50000,'2026-01-13'),
(5,'Neha','Delhi','Monitor',2,12000,'2026-01-14'),
(6,'Aman','Delhi','Laptop',1,50000,'2026-01-15'),
(7,'Priya','Mumbai','Mouse',3,500,'2026-01-16'),
(8,'Rohan','Pune','Keyboard',2,1500,'2026-01-17'),
(9,'Neha','Delhi','Mouse',1,500,'2026-01-18'),
(10,'Raj','Pune','Monitor',1,12000,'2026-01-19');

/* select Clause*/
select * from sales;
alter table sales alter column price Type numeric(10,2);

select * from sales limit 5;

select orderid,c_name, price from sales;

select distinct product from sales;

/* Where Clause*/
select c_name from sales where city='Mumbai';

select c_name from sales where city='Mumbai' AND price<=10000;

select * from sales where city='Pune' or product='Laptop' 
order by city DESC
limit 3;

/*Practice questions 
Q1 Show all orders from Delhi.
Q2 Show all Laptop orders.
Q3 Find the highest price.*/

select * from sales where city='Delhi';

select * from sales where product='Laptop';

select product, price from sales order by price desc limit 1;
