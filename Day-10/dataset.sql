create table current_employee
(emp_id int primary key,
emp_name varchar(50),
department varchar(30));

insert into current_employee values
(1,'Amit','HR'),
(2,'Rahul','Sales'),
(3,'Priya','IT'),
(4,'Neha','Finance');

create table former_employee
(emp_id int primary key,
emp_name varchar(50),
department varchar(30));

insert into former_employee values
(1,'Karan','IT'),
(2,'Anjali','HR'),
(3,'Rahul','Sales'),
(4,'Vikram','Marketing');
