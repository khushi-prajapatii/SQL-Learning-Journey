select e.employee_name,m.employee_name as manager
from employees e
join employees m
on e.manager_id=m.employee_id;

select e.employee_name,e.department,m.employee_name as manager
from employees e
join employees m
on e.manager_id=m.employee_id;

select e.employee_name,m.employee_name as manager
from employees e
join employees m
on e.manager_id=m.employee_id
where m.employee_name='Amit';

select e.employee_name,m.employee_name as manager
from employees e
left join employees m
on e.manager_id=m.employee_id
where m.employee_name is null;

select  e.employee_name,m.employee_name as manager
from employees e 
join employees m
on e.manager_id=m.employee_id
order by m.employee_name asc;

select e.employee_name,m.employee_name as manager,
m.department
from employees e 
join employees m
on e.manager_id=m.employee_id
where m.department='Sales';

select e.employee_name,m.department
from employees e 
join employees m
on e.manager_id=m.employee_id;

select e.employee_name,e.department,m.employee_name as manager
from employees e 
join employees m
on e.manager_id=m.employee_id
where e.department='IT';

select m.employee_name as manager, count(*)
from employees e 
join employees m
on e.manager_id=m.employee_id
group by manager;

select  e.employee_name,m.employee_name as manager
from employees e 
join employees m
on e.manager_id=m.employee_id
order by e.employee_name asc;

select e.employee_name, m.employee_name as manager
from employees e
join employees m
on e.manager_id=m.employee_id
where m.employee_name like 'R%' ; 

select  e.employee_name,e.department,
m.employee_name as manager,m.department as MD
from employees e 
join employees m
on e.manager_id=m.employee_id;

select  e.employee_name,m.employee_name as manager,
mm.employee_name as managers 
from employees e 
join employees m
on e.manager_id=m.employee_id
join employees mm
on m.manager_id=mm.employee_id;
