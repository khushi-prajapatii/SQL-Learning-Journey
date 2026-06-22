create table employee 
(emp_Id int, first_name varchar(50), last_name varchar(50),
email varchar(100),department varchar(30), city varchar(30));
 
insert into employee values
(1,'Amit','Sharma','amit.sharma@gmail.com','Sales','Mumbai'),
(2,'Priya','Verma','priya.verma@yahoo.com','Marketing','Delhi'),
(3,'Rahul','Singh','rahul.singh@gmail.com','Finance','Pune'),
(4,'Neha', 'Patel','neha.patel@outlook.com','HR','Mumbai'),
(5,'Karan' ,'Mehta','karan.mehta@gmail.com','Sales','Delhi'),
(6,'Sneha', 'Gupta','sneha.gupta@yahoo.com','Marketing','Pune'),
(7,'Rohit', 'Kumar','rohit.kumar@gmail.com','Finance','Mumbai'),
(8,'Anjali', 'Shah','anjali.shah@outlook.com','HR','Delhi');

select * from employee;

select upper(first_name) from employee;
select upper('khushi');

select lower (first_name) from employee;

select length (first_name), first_name from employee;

select substring(city,1,3),city from employee;
select substring('khushi',3);

select concat(first_name,' ', last_name), first_name, last_name from employee;

select replace(city,'Pune','Bengluru'),city from employee;
select replace	('Mumbai','Mum','Du');

select length('  khushi  '),length(trim('  khushi  '));
