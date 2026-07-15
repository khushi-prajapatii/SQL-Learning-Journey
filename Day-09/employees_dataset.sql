create table employees(
employee_id int primary key,
employee_name varchar (50),
department varchar(50),
manager_id int
);

insert into employees values
(1, 'Amit', 'Management', NULL),
(2, 'Rahul', 'Sales', 1),
(3, 'Priya', 'HR', 1),
(4, 'Neha', 'Sales', 2),
(5, 'Karan', 'IT', 2),
(6, 'Riya', 'HR', 3),
(7, 'Vikram', 'IT', 5),
(8, 'Anjali', 'Sales', 2);

select * from employees;
