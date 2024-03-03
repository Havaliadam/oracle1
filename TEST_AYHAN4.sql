SELECT department_name ,LOWER (department_name)  FROM departments;
--lower küçük
SELECT department_name ,LOWER (department_name),UPPER(department_name)  FROM departments;
--upper büyük

SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)) FROM departments;
--ýnýtcap ilk harfi büyüj
SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)),SUBSTR(department_name,1,5) FROM departments;

--SUBSTACT 1,5 KISMINI GÖSTERÝR
-- harf uzunluðu
SELECT department_name ,LOWER (department_name),UPPER(department_name),INITCAP(LOWER(department_name)),SUBSTR(department_name,4),LENGTH(department_name) FROM departments;
