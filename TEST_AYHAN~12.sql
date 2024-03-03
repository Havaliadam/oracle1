DESC JOBS;
select*from jobs;

-- �nner jo�n ans� format

select 
e.last_name,e.department_id,d.department_name,l.c�ty
from employees e
 jo�n departments d on e.department_id=d.department_id
 jo�n locat�ons l on d.location_id=l.location_id
order by  e.last_name;

--------------- left jon ans� format

select 
r.region_id,r.region_name,c.country_id,c.country_name,l.city
from reg�ons r 

left outer jo�n countr�es c on r.region_id=c.region_id
left outer jo�n locat�ons l on c.country_id=l.country_id
--and l.city �s null
where l.city �s null
order by 5,1,3
;


select*from employees where department_id=120;


---- right join ans� format 

select

d.department_id,d.department_name,e.employee_id,e.last_name,e.salary

from employees e
r�ght outer jo�n departments d
on e.department_id=d.department_id



;




--- ans� full join 

select 
D1.department_id "Dept1 ID",
D1.department_name "Dept1 Name",
D2.department_id "dept2 ID",
D2.department_name "Dept2 Name"


from DEPT1 D1
    full jo�n dept2 D2
    on D1.department_id=D2.department_id
    order by 1
;


---self join ansi format


select 
e1.first_name ||''||e1.last_name "Cali�an",
e1.manager_id "calisan y�netici ID",
e2.first_name ||''||e2.last_name "y�netici adi"

from employees e1

full outer jo�n
employees E2  on 
 e1.manager_id=e2.EMPLOYEE_ID
order by e1.EMPLOYEE_ID;


----- cross jo�n ans� format
-- kartezyen mat 
-- s(A) s(b) =m s(a*b) n=m


select count(*)from departments;

select 107*27 from dual;

select 

last_name,department_name
from employees cross jo�n departments;



