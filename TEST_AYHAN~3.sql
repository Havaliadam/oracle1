DESC employess_copy;
SELECT  EMPLOYEE_ID,SALARY,COMMISSION_PCT  FROM employess_copy WHERE EMPLOYEE_ID IN (101,102);


SELECT  EMPLOYEE_ID,SALARY,COMMISSION_PCT  FROM employess_copy WHERE department_id=100;



update employess_copy A SET
A.salary=(select B.salary from employees  B
WHERE A.EMPLOYEE_ID=B.EMPLOYEE_ID)
WHERE A.DEPARTMENT_ID=100;


COMMIT;



SELECT  EMPLOYEE_ID,SALARY,COMMISSION_PCT  FROM employess_copy WHERE department_id=90;





