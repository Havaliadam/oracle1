SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID FROM employees

--2
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID ,LEVEL 
FROM employees
CONNECT BY PRIOR employee_�d=manager_�d;




SELECT LAST_NAME calisan,CONNECT_BY_ROOT LAST_NAME yonetici,
LEVEL-1 seviye,SYS_CONNECT_BY_PATH(LAST_NAME,'->') path
FROM EMPLOYEES 
where DEPARTMENT_ID=110 AND LEVEL>1
CONNECT BY PRIOR EMPLOYEE_ID=MANAGER_ID;
