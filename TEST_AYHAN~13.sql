-- kolon seviyesi subquery
SELECT 
E.employee_�d,
E.last_name,
d.department_name
FROM EMPLOYEES E
jo�n departments d on d.department_�d=e.department_id

order by 1;

---subguerqy kolon

SELECT 
E.employee_�d,
E.last_name,

(select department_name from departments d where d.department_id=e.department_id) deptname
FROM EMPLOYEES E
order by 1 ;


--table query 

select bolge_isim,ulke_adi,l.c�ty from (

    select 
    r.reg�on_�d bolge_no,
    r.reg�on_name bolge_isim,
    c.country_�d ulke_no,
    c.country_name ulke_adi
    from reg�ons r
    jo�n countr�es c on c.reg�on_�d=r.reg�on_�d
    
    )X
    --where X.bolge_isim='Europe'
    jo�n locations l on l.country_id=x.ulke_no
    
    ;
    
-- where i�erisinde subauery



select h�re_date from employees where last_name ='Davies'; 
    
    
select last_name ,TO_CHAR(h�re_date,'DD/MM/YYYY')TAR�H from employees where h�re_date>to_date ('29/01/2005','DD/MM/YYYY');





select last_name ,TO_CHAR(h�re_date,'DD/MM/YYYY')TAR�H from employees where h�re_date< (select h�re_date from employees where last_name='Davies');



---where 3 kolon 


select last_name,job_id,salary
from employees
where salary>
(select salary from employees
where last_name ='Taylor' and employee_id=176
)
and job_id=(
select job_id from employees
where last_name='Taylor' and employee_id=176
);


select last_name,job_id,salary,
(
select department_name from departments d where e.department_id=d.department_id)
as "bolum ad�"

from employees  e
where salary=
(select m�n(salary)from employees);



-- group by
select 
department_id,
m�n(salary)

from employees 


group by department_id
--hav�ng m�n(salary)>2100;

hav�ng m�n(salary)>(select m�n(salary) from employees where department_id =50);

select m�n(salary) from employees where department_id =50;



-- update subquery

select department_id,last_name,salary from employees where department_id=60;


update employees 
set 
salary=(
select max(salary)from employees
where department_id=50
)


where department_id=60;




-----ornek 2


select row�d,last_name,salary from employees;

select last_name,count(*)from employees2 GROUP by  last_name hav�ng count(*)>1;

delete from employees2
where ROWID not �n 
(select max(ROWID)from employees2 group by last_name);

