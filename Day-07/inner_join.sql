select customer_name,quantity, order_date 
from customers as c
inner join orders as o
on c.customer_id = o.customer_id;

select c.customer_name, o.quantity, o.order_date /*We write c.customer_name and o.quantity because it tells 
  SQL exactly which table the column belongs to. It also makes the query easier to read and avoids ambiguity (confusion)
  when multiple tables have columns with the same name!!*/
from customers as c
inner join orders as o
on c.customer_id = o.customer_id;

select c.customer_name, o.quantity
from customers as c
inner join orders as o
on c.customer_id=o.customer_id;

select c.customer_name, o.order_date
from customers as c
inner join orders as o
on c.customer_id=o.customer_id;

select c.customer_id, c.customer_name, o.order_date 
from customers as c
inner join orders as o
on c.customer_id=o.customer_id;

select * 
from customers as c
inner join orders as o
on c.customer_id = o.customer_id;

select distinct c.customer_name, c.city
from customers as c
inner join orders as o
on c.customer_id=o.customer_id;

select c.customer_name, b.book_name
from customers as c
inner join orders as o
on c.customer_id = o.customer_id
inner join books as b
on o.book_id= b.book_id;

select c.customer_name, b.book_name, o.quantity
from customers as c
inner join orders as o
on c.customer_id = o.customer_id
inner join books as b
on o.book_id= b.book_id;

select c.customer_name, b.book_name, o.order_date
from customers as c
inner join orders as o 
on c.customer_id= o.customer_id
inner join books as b
on o.book_id=b.book_id;

select c.customer_name, b.book_name, b.price
from customers as c
inner join orders as o 
on c.customer_id= o.customer_id
inner join books as b
on o.book_id=b.book_id;

select c.customer_name, b.book_name,b.category, o.quantity
from customers as c
inner join orders as o
on c.customer_id=o.customer_id
inner join books as b
on o.book_id=b.book_id;

select b.book_name, c.customer_id,c.customer_name
from customers as c 
inner join orders as o
on c.customer_id=o.customer_id
inner join books as b
on o.book_id=b.book_id
where c.customer_name='Rohan';

select c.customer_name,b.category
from customers as c
inner join orders as o
on c.customer_id=o.customer_id
inner join books as b 
on o.book_id= b.book_id
where b.category='Programming';

select c.customer_name,b.price
from customers as c
inner join orders as o
on c.customer_id=o.customer_id
inner join books as b 
on o.book_id= b.book_id
where b.price >700;
