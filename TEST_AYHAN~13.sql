-- kolon seviyesi subquery
SELECT 
E.employee_ýd,
E.last_name,
d.department_name
FROM EMPLOYEES E
joýn departments d on d.department_ýd=e.department_id

order by 1;

---subguerqy kolon

SELECT 
E.employee_ýd,
E.last_name,

(select department_name from departments d where d.department_id=e.department_id) deptname
FROM EMPLOYEES E
order by 1 ;


--table query 

select bolge_isim,ulke_adi,l.cýty from (

    select 
    r.regýon_ýd bolge_no,
    r.regýon_name bolge_isim,
    c.country_ýd ulke_no,
    c.country_name ulke_adi
    from regýons r
    joýn countrýes c on c.regýon_ýd=r.regýon_ýd
    
    )X
    --where X.bolge_isim='Europe'
    joýn locations l on l.country_id=x.ulke_no
    
    ;
    
-- where içerisinde subauery



select hýre_date from employees where last_name ='Davies'; 
    
    
select last_name ,TO_CHAR(hýre_date,'DD/MM/YYYY')TARÝH from employees where hýre_date>to_date ('29/01/2005','DD/MM/YYYY');





select last_name ,TO_CHAR(hýre_date,'DD/MM/YYYY')TARÝH from employees where hýre_date< (select hýre_date from employees where last_name='Davies');



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
as "bolum adý"

from employees  e
where salary=
(select mýn(salary)from employees);



-- group by
select 
department_id,
mýn(salary)

from employees 


group by department_id
--havýng mýn(salary)>2100;

havýng mýn(salary)>(select mýn(salary) from employees where department_id =50);

select mýn(salary) from employees where department_id =50;



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


select rowýd,last_name,salary from employees;

select last_name,count(*)from employees2 GROUP by  last_name havýng count(*)>1;

delete from employees2
where ROWID not ýn 
(select max(ROWID)from employees2 group by last_name);

