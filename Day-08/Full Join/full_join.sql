select c.customer_name, o.order_id 
from customers c
full join orders o
on c.customer_id=o.customer_id;

select b.book_name, o.order_id 
from books b
full join orders o
on b.book_id=o.book_id;

select c.customer_name, b.book_name 
from customers c
full join orders o
on c.customer_id= o.customer_id
full join books b 
on b.book_id=o.book_id;

select c.customer_name,c.city, o.order_id, order_date
from customers c
full join orders o
on c.customer_id=o.customer_id;

select b.book_name,b.category,o.quantity
from books b
full join orders o
on b.book_id=o.book_id;

select c.customer_name, b.book_name ,o.quantity
from customers c
full join orders o
on c.customer_id= o.customer_id
full join books b 
on b.book_id=o.book_id;

select customer_name, book_name
from customers c
full join orders o
on c.customer_id= o.customer_id
full join books b
on o.book_id = b.book_id
where customer_name is null or book_name is null;

select c.customer_name,c.city, b.book_name, 
       b.price,o.quantity,o.order_date
from customers c
full join orders o
on c.customer_id= o.customer_id
full join books b 
on b.book_id=o.book_id;
