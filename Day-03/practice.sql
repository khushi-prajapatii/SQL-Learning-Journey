create table orders
(
  order_id int, 
  c_name varchar(50), 
  city varchar(50),
  product varchar(50),
  price numeric(10,2),
  order_date date
);

select * from orders;

copy orders
from 'D:\order.csv'
delimiter ','
csv header;

select * from orders;
