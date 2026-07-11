/*
Practice Topic: LEFT JOIN

Database: book_store
Tables: Customers
        Orders
        Books

This file contains beginner practice queries demonstrating
how LEFT JOIN works with filtering, sorting, NULL values,
and joining multiple tables.
*/

select c.customer_name,o.quantity
from customers c
left join orders  o 
on c.customer_id= o.customer_id;

select c.customer_name ,os.book_id
from customers as c
left join orders os --you do not have to write AS; 
                    ----AS keyword is optional when creating table aliases
on c.customer_id= os.customer_id;

select c.customer_name, o.order_id
from customers as c
left join orders as o 
on c.customer_id = o.customer_id;

select c.customer_name, b.book_name
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
left join books b
on o.book_id=b.book_id;

select c.customer_name, b.book_name, o.quantity
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
left join books b
on o.book_id=b.book_id;

select c.customer_name, c.city,b.book_name
from customers as c
left join orders as o
on c.customer_id = o.customer_id
left join books as b
on o.book_id=b.book_id
where c.city='Mumbai';

select c.customer_name, b.book_name,b.price
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
left join books b
on o.book_id=b.book_id
where b.price>500;--this query behaves almost like an INNER JOIN
                  --the result no longer shows all customers

select c.customer_name, b.book_name
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
left join books b
on o.book_id=b.book_id
order by c.customer_name asc;

select c.customer_name, o.quantity
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
order by o.quantity desc;

select c.customer_name, o.quantity
from customers as c
left join orders as o
on c.customer_id= o.customer_id
where o.order_id is Null; --to filter the NULL values

select c.customer_name, b.book_name
from customers as c
left join orders as o 
on c.customer_id=o.customer_id
left join books b
on o.book_id=b.book_id
where o.order_id is not null;


