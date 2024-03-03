SELECT *FROM DEPT2 ORDER BY department_ýd;

SELECT*FROM DEPT1
UNION ALL 
SELECT*FROM DEPT2;
/*
TEKRAR EDEN KAYITLARI YAZAR
*/
select*from DEPT1
MINUS
SELECT*FROM DEPT2;

--A/B=B/A

select department_id,department_name from DEPT2
MINUS
SELECT department_id,department_name FROM DEPT1;

--A/A=0