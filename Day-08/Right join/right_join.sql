--Display all books and the quantity ordered.
select b.book_name,o.quantity
from orders o
right join books b
on b.book_id=o.book_id;

/*Display:Book Name, Price,Quantity,Order Date
Include books that have never been ordered..*/
select b.book_name, b.price, o.quantity, o.order_date
from orders o
right join books b
on o.book_id=b.book_id;

--Find books that have never been ordered.
select b.book_name,o.order_id
from orders o
right join books b
on o.book_id = b.book_id
where o.order_id is null;
