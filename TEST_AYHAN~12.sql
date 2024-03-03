DESC JOBS;
select*from jobs;

-- ýnner joýn ansý format

select 
e.last_name,e.department_id,d.department_name,l.cýty
from employees e
 joýn departments d on e.department_id=d.department_id
 joýn locatýons l on d.location_id=l.location_id
order by  e.last_name;

--------------- left jon ansý format

select 
r.region_id,r.region_name,c.country_id,c.country_name,l.city
from regýons r 

left outer joýn countrýes c on r.region_id=c.region_id
left outer joýn locatýons l on c.country_id=l.country_id
--and l.city ýs null
where l.city ýs null
order by 5,1,3
;


select*from employees where department_id=120;


---- right join ansý format 

select

d.department_id,d.department_name,e.employee_id,e.last_name,e.salary

from employees e
rýght outer joýn departments d
on e.department_id=d.department_id



;




--- ansý full join 

select 
D1.department_id "Dept1 ID",
D1.department_name "Dept1 Name",
D2.department_id "dept2 ID",
D2.department_name "Dept2 Name"


from DEPT1 D1
    full joýn dept2 D2
    on D1.department_id=D2.department_id
    order by 1
;


---self join ansi format


select 
e1.first_name ||''||e1.last_name "Caliþan",
e1.manager_id "calisan yönetici ID",
e2.first_name ||''||e2.last_name "yönetici adi"

from employees e1

full outer joýn
employees E2  on 
 e1.manager_id=e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;


----- cross joýn ansý format
-- kartezyen mat 
-- s(A) s(b) =m s(a*b) n=m


select count(*)from departments;

select 107*27 from dual;

select 

last_name,department_name
from employees cross joýn departments;



