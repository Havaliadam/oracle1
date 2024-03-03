--y=f(x)=3x+1
-- 3*3+1=10
--SIGN ÝSARET FONK ABS MUTLAK
-- COS SIN TAN COT TAH ATAN TAHN ACOS TRÝGOMETRÝ TERS
-- CEIL FLLOAR EN YAKIN SAYO EN YUARU VE AÞAGIDA
--EXP LN LOG LIGARITMA
--MOD
--POWWER KUVVET
--ROUND YUVARLAMA
SELECT SIGN(-3),SIGN(3)FROM DUAL;


SELECT SALARY,SIGN(SALARY)FROM employees;

SELECT ABS(-15),ABS(123.45),ABS(-100.85) FROM DUAL;

SELECT SIGN(-3*15+1),ABS(-4*3+8),ABS(6-9)FROM DUAL;

--SELECT SIGN('ABC')FROM DUAL; METÝN DEPER ALAMAZ

SELECT SIGN(-3*15+1 -ABS(-4*3+8)),ABS(-4*3+8),ABS(6-9+SIGN(-8))FROM DUAL;
--TRÝ
SELECT COS (30*(22/7)/180)FROM DUAL;

SELECT SIN(30*(22/7)/180)FROM DUAL;


SELECT COS(0)FROM DUAL;
SELECT SIN(0)FROM DUAL;


SELECT TAN(45*(22/7)/180)FROM DUAL;

-- -1<=COS ,SIN<=1 Y=COS(X) X=ARCCOS(Y)

SELECT ACOS(1) ,cos(0) from dual;

select acos(5) from dual; --cos(x)=5
select acos(1/2) from dual;

SELECT CEIL(123.456),CEIL(-465),FLOOR(125.456),FLOOR(-5.6)FROM DUAL;


SELECT EXP(1),EXP(2) FROM DUAL;

--Y=LN(X) x=e**y ýn (e) log(10,1,100) kýg(10,10**2)=2*log(10,10)=2

SELECT ln(1),ln(2) from dual;


select ln(exp(1))from dual;


select log(10,10),log(5,3),log(10,100)from dual;

select log(-2,-5)from dual;

select log(1,100) from dual;

select log(4,8)from dual;


select mod(5,2) ,mod(97,6)from dual;

select level,
mod(100,level),mod(23456,level)
from dual connect by level<12;

select power(3,2),power(2,3)from dual;

select sqrt(25),sqrt(625)from dual;

select power(1923,6),mod(power(1923,6),10),mod(power(1923,6),4)from dual;


select power(1071,10),mod(power(1071,10),5),mod(power(1071,10),3)from dual;


select round(1234.5678,0),round(1234.5678)
,round(1234.5678,1),round(1234.5678,2),
round(1234.5678,-1),round(1234.5678,-2)

from dual;

select -level+1 ,'round(1234.5678,'|| to_char(-level+1)||')',
round(1234.5678,-level+1)
from dual connect by level<6;
