/*Tables*/
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) not null,
    city VARCHAR(30)
);

insert into customers values
(1,'Aarav','Mumbai'),
(2,'Priya','Delhi'),
(3,'Rohan','Pune'),
(4,'Sneha','Bangalore'),
(5,'Karan','Chennai'),
(6,'Meera','Hyderabad');

create table books(
    book_id INT PRIMARY KEY,
    book_name VARCHAR(100),
    category VARCHAR(30),
    price numeric(10,2)
);

insert into books values
(101,'SQL Basics','Programming',450),
(102,'Python Guide','Programming',700),
(103,'Data Analytics','Data Science',800),
(104,'Machine Learning','AI',950),
(105,'English Grammar','Education',300),
(106,'Statistics','Mathematics',650);

select  * from books;
create table orders()
CREATE TABLE ord
    order_id INT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


