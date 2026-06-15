insert into customer
("ID","Name","Age","City","Salary")
Values
(102,'kay',20,'Mumbra',30000),
(103,'bjorn',26,'boston',8000000),
(104,'erna',20,'berg',50000);

update customer
Set "City"='Bandra'
where "ID"=102;

select * from customer
ORDER BY "ID";

Delete from customer
where "Name"='kay';

select * from customer;

Alter table customer add column gender char;
select * from customer;

/*Update Multiple Rows Based on a Condition*/
update customer set gender='F'
where "Age"<22;

update customer set gender='M'
where "Name"='bjorn';
select * from customer;

Alter table customer Rename column "Salary" to purchase;
Alter table customer Rename to customers;

Alter table customers alter column gender Type varchar(8);

alter table customers drop column "purchase";
select * from customers;

truncate table customers;
select * from customers;
drop table customers;
