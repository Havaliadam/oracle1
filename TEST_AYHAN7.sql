select 
employee_id,
last_name,
job_id,
salary
from employees 
where last_name='Taylor' And employee_id=176;


select last_name,job_id,salary
from employees
where job_id='SA_REP' and salary>8600;




select mýn(salary)from employees;

select last_name ,job_id ,salary from employees
where salary=2100;


create table employees2
as 
select*from employees;
