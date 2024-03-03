DESC employees;

-- ans�frormat
--natural jo�n ayn� isim ortak isim kolonlar� ele�tirme
select employee_id,first_name,job_id,job_t�tle from employees natural jo�n jobs order by employee_id;


--geleneksel format
select e.employee_id,e.first_name,e.job_id,j.job_t�tle from employees e ,jobs j where e.job_id =j.job_id order by employee_id;

--------------- geleneksel inner
select e.last_name,e.department_id,d.department_name,l.city from employees e,departments d,locat�ons l where e.department_id=d.department_id and d.location_id=l.location_id
order by e.last_name asc

;

--left join geleneksel y�ntem 

select 
r.region_id,r.region_name,c.country_id,c.country_name,l.city

from reg�ons r,countr�es C,locat�ons l

where r.region_id=c.region_id(+)
and c.country_id=l.country_id(+)
;



-- right join geleneksel y�ntem


select

d.department_id,d.department_name,e.employee_id,e.last_name,e.salary

from employees e ,departments d
where e.department_id(+)=d.department_id
--and salary �s null
order by 1,2,3,4

;



select 
D1.department_id "Dept1 ID",
D1.department_name "Dept1 Name",
D2.department_id "dept2 ID",
D2.department_name "Dept2 Name"


from DEPT1 D1,DEPT2 D2
where D1.department_id=D2.department_id(+)
un�on 

select 
D1.department_id "Dept1 ID",
D1.department_name "Dept1 Name",
D2.department_id "dept2 ID",
D2.department_name "Dept2 Name"
from DEPT1 D1,DEPT2 D2
where D1.department_id=D2.department_id(+)

order by 1






    
;



--- self join geleneksel 

select*from employees;

select 
e1.first_name ||''||e1.last_name "Cali�an",
e1.manager_id "calisan y�netici ID",
e2.first_name ||''||e2.last_name "y�netici adi"

from employees e1,employees E2 
where e1.manager_id=e2.EMPLOYEE_ID(+)
order by e1.EMPLOYEE_ID;


--- cross jo�n geleneksel format
-- kartezyen mat 
-- s(A) s(b) =m s(a*b) n=m


select 

last_name,department_name
from employees,departments;

select count(*) from employees;

