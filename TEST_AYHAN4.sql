SELECT department_name ,LOWER (department_name)  FROM departments;
--lower k���k
SELECT department_name ,LOWER (department_name),UPPER(department_name)  FROM departments;
--upper b�y�k

SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)) FROM departments;
--�n�tcap ilk harfi b�y�j
SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)),SUBSTR(department_name,1,5) FROM departments;

--SUBSTACT 1,5 KISMINI G�STER�R
-- harf uzunlu�u
SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)),SUBSTR(department_name,4),LENGTH(department_name) FROM departments;
