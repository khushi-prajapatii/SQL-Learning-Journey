select emp_name from current_employee
union 
select emp_name from former_employee;

select emp_name from current_employee
union all
select emp_name from former_employee;

select emp_name,department 
from current_employee
union 
select emp_name,department
from former_employee;

select emp_id,emp_name 
from current_employee
union all
select emp_id,emp_name
from former_employee;

--Display only employees from the HR department from both tables using UNION
select emp_name,department 
from current_employee
where department='HR'
union 
select emp_name,department
from former_employee
where department='HR';

--Display only employees from the IT department from both tables using UNION ALL
select emp_name,department 
from current_employee
where department='IT'
union all
select emp_name,department
from former_employee
where department='IT';

--Display all employee names from both tables and sort them in alphabetical order.
select emp_name from current_employee
union 
select emp_name from former_employee
order by emp_name asc;

--Display employee names that start with the letter 'A' from both tables.
select emp_name from current_employee
where emp_name like 'A%'
union
select emp_name from former_employee
where emp_name like 'A%';

select emp_name,department 
from current_employee
union all
select emp_name,department
from former_employee
order by department;

select emp_name,department 
from current_employee
where department= 'HR'or department ='Sales'                
union 
select emp_name,department
from former_employee
where department= 'HR' or department ='Sales';

--Display only the employee IDs from both tables using UNION.
select emp_id
from current_employee
union 
select emp_id
from former_employee;

select emp_name,department 
from current_employee
union all
select emp_name,department
from former_employee 
order by emp_name asc ;
