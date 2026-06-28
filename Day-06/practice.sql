CREATE TABLE food_orders (
    order_id INT,
    customer_name VARCHAR(50),
    restaurant VARCHAR(50),
    food_item VARCHAR(50),
    city VARCHAR(30),
    order_time TIMESTAMP,
    delivery_time TIMESTAMP,
    amount NUMERIC(10,2)
);
insert into food_orders values
(1,'Amit','Pizza Hub','Margherita Pizza','Mumbai','2026-07-20 11:15:00','2026-07-20 11:50:00',450),
(2,'Priya','Burger Point','Veg Burger','Delhi','2026-07-20 12:05:00','2026-07-20 12:40:00',320),
(3,'Rahul','Spice Kitchen','Butter Chicken','Pune','2026-07-20 13:20:00','2026-07-20 14:00:00',780),
(4,'Sneha','Pizza Hub','Farmhouse Pizza','Mumbai','2026-07-20 18:10:00','2026-07-20 18:45:00',650),
(5,'Karan','Burger Point','Chicken Burger','Delhi','2026-07-20 19:25:00','2026-07-20 20:05:00',290),
(6,'Neha','Biryani House','Chicken Biryani','Mumbai','2026-07-21 20:00:00','2026-07-21 20:50:00',520),
(7,'Rohit','Spice Kitchen','Paneer Tikka','Pune','2026-07-21 09:30:00','2026-07-21 10:05:00',410),
(8,'Anjali','Pizza Hub','Pepperoni Pizza','Delhi','2026-07-21 21:10:00','2026-07-21 21:55:00',890),
(9,'Vikas','Biryani House','Veg Biryani','Mumbai','2026-07-22 14:00:00','2026-07-22 14:45:00',610),
(10,'Pooja','Burger Point','French Fries','Pune','2026-07-22 16:35:00','2026-07-22 17:05:00',340),
(11,'Amit','Pizza Hub','Cheese Burst Pizza','Mumbai','2026-07-22 22:00:00','2026-07-22 22:40:00',720),
(12,'Priya','Spice Kitchen','Veg Fried Rice','Delhi','2026-07-23 08:45:00','2026-07-23 09:25:00',560),
(13,'Rahul','Biryani House','Mutton Biryani','Pune','2026-07-23 15:30:00','2026-07-23 16:10:00',690),
(14,'Sneha','Pizza Hub','Garlic Bread','Mumbai','2026-07-23 17:50:00','2026-07-23 18:25:00',430),
(15,'Karan','Burger Point','Cheese Burger','Delhi','2026-07-24 11:40:00','2026-07-24 12:15:00',510),
(16,'Neha','Spice Kitchen','Hakka Noodles','Mumbai','2026-07-24 13:05:00','2026-07-24 13:50:00',620),
(17,'Rohit','Pizza Hub','Veg Supreme Pizza','Pune','2026-07-24 19:45:00','2026-07-24 20:20:00',850),
(18,'Anjali','Biryani House','Egg Biryani','Delhi','2026-07-25 10:15:00','2026-07-25 10:55:00',470),
(19,'Vikas','Burger Point','Double Burger','Mumbai','2026-07-25 18:30:00','2026-07-25 19:05:00',390),
(20,'Pooja','Spice Kitchen','Chicken Noodles','Pune','2026-07-25 21:20:00','2026-07-25 22:00:00',760);

select * from food_orders;
/* Timestamp practice questions */

select now();
show timezone;
select current_time;
select current_date;
select current_timestamp;
select timeofday();

select extract(day from order_time) as order_date, order_time from food_orders;
select extract(dow from order_time) as order_dow, order_time from food_orders;
select extract(quarter from order_time) as quarter, order_time from food_orders;

select date(order_time) from food_orders;
select order_time::time from food_orders;
select order_time::date from food_orders; 
select current_date;
select current_timestamp;
select current_time;

select * from food_orders where date(order_time)='2026-07-20';
select * from food_orders where extract(hour from order_time)>18;
select * from food_orders where order_time::time>'18:00:00';
select * from food_orders where order_time::time<'12:00:00';
select extract(year from order_time), order_time from food_orders;
select extract(month from order_time), order_time from food_orders;
select extract(day from order_time), order_time from food_orders;
select extract(hour from order_time), order_time from food_orders;

select extract(hour from order_time) as Hours,
extract(minute from order_time) as Minutes, order_time
from food_orders;

select customer_name, order_time from food_orders where extract(hour from order_time)>=17;
/*OR*/select customer_name,order_time from food_orders where order_time::time>='17:00';

select order_time from food_orders where order_time::time>='12:00'AND order_time::time<='14:00'; 
select order_time from food_orders where order_time::time Between '12:00' AND '14:00';
select order_time from food_orders where order_time::time Between '19:00' AND '22:00';
select order_time::date, count(order_time) from food_orders group by order_time::date order by 1;
select order_time::date, sum(amount) as sales from food_orders group by order_time::date order by sales desc;
select city, count(*) from food_orders where extract(hour from order_time) between 17 AND 20 group by city order by count(*) desc limit 1;


select extract(hour from order_time) as hours, count(*) as total_orders
from food_orders group by extract(hour from order_time)
order by total_orders desc limit 5;

