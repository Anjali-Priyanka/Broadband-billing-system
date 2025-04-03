SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;

SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;
SELECT SESSIONTIMEZONE, CURRENT_TIMESTAMP FROM DUAL;
SELECT SESSIONTIMEZONE, LOCALTIMESTAMP FROM DUAL;

SELECT DBTIMEZONE FROM DUAL;
SELECT SESSIONTIMEZONE FROM DUAL;

DESC ORDERS;
INSERT INTO ORDERS VALUES (106,6,'TINU','2022-05-17',45,'PEN');

SELECT * FROM CUSTOMERS WHERE REGEXP_LIKE (CUST_NAME, 'R(A|O)');



SELECT REGEXP_INSTR('XYZ12XYZ','[[:alpha:]]') AS First_Alpha_Position FROM DUAL;
SELECT REGEXP_INSTR('121XYZ','Z') AS First_Alpha_Position FROM DUAL;

SELECT REGEXP_COUNT('KLMPLKKLMIKMKPMKLMDONKLM','KLM') AS COUNT FROM DUAL;
SELECT REGEXP_COUNT('MUMBAI','M') AS COUNT FROM CUSTOMERS;

SELECT REGEXP_SUBSTR('MUMBAI',1) FROM DUAL;


SELECT REGEXP_SUBSTR('INDIA',' [^ ]+ ') AS ADDRESS
FROM CUSTOMERS;               


SELECT SUBSTR('NEW DELHI',1,2) FROM DUAL;


SELECT LENGTH('DELHI') FROM EMP1;

SELECT INSTR('MUMBAI','AI') FROM DUAL;
SELECT INSTR('INDIA','DIA') FROM DUAL;
SELECT INSTR('PUNE','E') FROM DUAL;
COMMIT;


SELECT REGEXP_INSTR('123XYZ','[[:alpha:]]') AS First_Alpha_Position FROM DUAL;

COMMIT;

SELECT DISTINCT CUST_ID FROM(
SELECT * FROM CUSTOMERS);
COMMIT;

SELECT EMPNO,ENAME, DEPTNO, DNAME
FROM (
SELECT E.EMPNO AS EMPNO,E.ENAME AS ENAME,E.JOB,E.MGR,E.SAL, E.COMM,D.DEPTNO AS DEPTNO,D.DNAME AS DNAME,D.LOC FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND D.DEPTNO = 20);
SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE='TABLE' AND OWNER = 'SYS' AND TRUNC(CREATED) > '15-MAY-2022' ORDER BY OWNER;

SELECT * FROM CUSTOMERS;
SELECT * FROM EMP1;

create table emp1 (
empno number(4),
ename varchar2(10),
job varchar2(9),
mgr number(4),
hiredate date,
sal number(7,2),
comm number(7,2),
deptno number(2));
create table dept (
deptno number(2),
dname varchar2(14),
loc varchar2(13));

COMMIT;

SELECT * FROM EMP1;



insert all
insert into emp1 values (7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
insert into emp1 values (7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
insert into emp1 values (7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,null,20);
insert into emp1 values (7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
insert into emp1 values (7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,null,30);
insert into emp1 values (7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,null,10);
insert into emp1 values (7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,null,20);
insert into emp1 values (7839,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,null,10);
insert into emp1 values (7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
insert into emp1 values (7876,'ADAMS','CLERK',7788,to_date('13-JUL-87', 'dd-mm-rr')-51,1100,null,20);
insert into emp1 values (7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,null,30);
insert into emp1 values (7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,null,20);
insert into emp1 values (7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,null,10);
select * from dual;
commit;


select * from emp1;


desc emp1;
insert into dept values (10,'ACCOUNTING','NEW YORK');
insert into dept values (20,'RESEARCH','DALLAS');
insert into dept values (30,'SALES','CHICAGO');
insert into dept values (40,'OPERATIONS','BOSTON');
commit;

insert into emp1 values (7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,null,20);
insert into emp1 values (7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
insert into emp1 values (7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
insert into emp1 values (7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,null,20);
insert into emp1 values (7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
insert into emp1 values (7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,null,30);
insert into emp1 values (7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,null,10);
insert into emp1 values (7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,null,20);
insert into emp1 values (7839,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,null,10);
insert into emp1 values (7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
insert into emp1 values (7876,'ADAMS','CLERK',7788,to_date('13-JUL-87', 'dd-mm-rr')-51,1100,null,20);
insert into emp1 values (7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,null,30);
insert into emp1 values (7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,null,20);
insert into emp1 values (7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,null,10);


COMMIT;



INSERT ALL
WHERE EMPNO <= 7880 THEN
INTO emp1 values (7855,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30)
INTO emp1 values (7772,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,null,10)
INTO emp1 values (7765,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,null,20)
INTO emp1 values (7898,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,null,10)
INTO empl values (7834,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30)
SELECT EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO from emp1;

SELECT * FROM ALL_OBJECTS WHERE OBJECT_TYPE='TABLE' AND OWNER = 'SYS' AND TRUNC(CREATED) > '15-MAY-2022' ORDER BY OWNER;


INSERT ALL
  WHEN id <= 3 THEN
    INTO emp1 (empno,ename,job,) VALUES (101,'sonu')
  WHEN id BETWEEN 4 AND 7 THEN
    INTO dept (deptno,dname) VALUES (201,'RDBMS')
  
SELECT empno,ename
FROM  emp1;

INSERT ALL
INTO EMP1 VALUES (101,'SONI',SALESMAN,10,'2022-05-24',50000,


CREATE USER ANJALI
identified  by PASSWORD;

COMMIT;

SELECT * FROM PASSWORD;
select * from emp1;

select count(ename) from emp1 
group by deptno;

select count(ename)as count from emp1 
group by deptno;


select * from customers where cust_salary is null;

select distinct * FROM EMP;
SELECT * FROM EMP;
select deptno from emp1
union 
select deptno from dept;

selet * from customers
cross join orders;
select * from customers;
select * from orders;

select * from customers
full outer join orders
on customers.cust_id = orders.cust_id;

Create Table Emp2_copy As Select * from Emp1 where 1 = 0;
commit;

select max(mgr) from emp1;


select count(mrg) from emp1;


CREATE TABLE CHECK_EMAIL
(
CNAME VARCHAR(20),
EMAIL VARCHAR(250) CHECK (EMAIL LIKE '%@%'));


INSERT INTO CHECK_EMAIL VALUES('ANJALI','ANJALI006@GMAIL.COM');
INSERT INTO CHECK_EMAIL VALUES('PRIYANKA','PRIYANKA20@GMAIL.COM');
INSERT INTO CHECK_EMAIL VALUES('GANI','GANI28@GMAIL.COM');
COMMIT;




SELECT * FROM CHECK_EMAIL;
SELECT * FROM PERSON;
ALTER TABLE CHECK_EMAIL
  ADD CONSTRAINT EMAIL   
  CHECK(REGEXP_LIKE(EMAIL,'@')) NOVALIDATE; 

UPDATE CHECK_EMAIL SET EMAIL = 'GANI28GMAIL.COM' WHERE CNAME = 'GANI';
SELECT * FROM (SELECT * FROM (SELECT MGR,COUNT(EMPNO)AS NO_OF_EMP1 FROM EMP1 GROUP BY MGR)ORDER BY NO_OF_EMP1 DESC)
WHERE ROWNUM< =1;

commit;
select * from customers;

SELECT CUST_NAME FROM CUSTOMERS
WHERE REGEXP_LIKE ( CUST_NAME, '^A|h$');


SELECT CUST_NAME FROM CUSTOMERS
WHERE REGEXP_LIKE ( CUST_NAME, 'A$');

SELECT CUST_NAME FROM CUSTOMERS
WHERE REGEXP_LIKE ( CUST_NAME, '*A');


SELECT
  REGEXP_INSTR ('0123456789','(456)') FROM DUAL; 


SELECT CUST_ID,CUST_NAME
FROM (SELECT CUST_SALARY,CUST_ADD
FROM CUSTOMERS ORDER BY CUST_ADD desc) 
WHERE ROWNUM< 5;
-------PLSQL DATA TYPE------

DECLARE 
EMPLOYEE1_REF EMP1%ROWTYPE;
BEGIN 
SELECT * INTO EMPLOYEE1_REF FROM EMP1 
WHERE EMPNO = 7521;
DBMS_OUTPUT.PUT_LINE ('EMPNO = ' || EMPLOYEE1_REF.EMPNO ); 
DBMS_OUTPUT.PUT_LINE ('ENAME = ' || EMPLOYEE1_REF.ENAME ); 
END;



SELECT * FROM EMP1;




---------IF ELSE--------
DECLARE
V_NUM NUMBER(3) := 10;
BEGIN
IF V_NUM = 10 THEN
DBMS_OUTPUT.PUT_LINE ('NUMBER IS 10');
ELSE
DBMS_OUTPUT.PUT_LINE ('NUMBER IS NOT EQUAL 10');
END IF;

END;
COMMIT;




-----LOOP------
DECLARE
V_COUNTER NUMBER := 5;
BEGIN
LOOP
DBMS_OUTPUT.PUT_LINE('THE VALUE IS = ' || V_COUNTER);
V_COUNTER := V_COUNTER + 10;
END LOOP;
END;

COMMIT;

------EXIT LOOP-----
DECLARE
V_COUNT NUMBER(5) := 1000;
BEGIN
LOOP
DBMS_OUTPUT.PUT_LINE('THE VALUE IS = ' || V_COUNT);
V_COUNT := V_COUNT + 1000;
EXIT WHEN V_COUNT > 5000;
END LOOP;
END;

-----FOR LOOP-----
DECLARE
num number := 5;
i number;
BEGIN
FOR i IN 1..10
LOOP
--DBMS_OUTPUT.PUT_LINE('TABLE OF 5 IS ' || num * i );
DBMS_OUTPUT.PUT_LINE(num ||'*'|| i ||'='|| num * i );
END LOOP;
END;
COMMIT;

-------EVEN OR ODD----
DECLARE
N NUMBER(3) := 5;
BEGIN
IF MOD(N,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE ('NUMBER IS EVEN');
ELSE
DBMS_OUTPUT.PUT_LINE ('NUMBER IS ODD');
END IF;
END;
COMMIT;
------------NUMBER------
DECLARE
NUM NUMBER(10) := 20;
BEGIN
NUM := 20;
DBMS_OUTPUT.PUT_LINE('THE NUMBER IS ' || NUM);
END;

---------LOOP FROM 1 TO 100-----
DECLARE 
NUM NUMBER(25) :=1;
BEGIN
LOOP
DBMS_OUTPUT.PUT_LINE('THE VALUE IS ' || NUM);
NUM := NUM + 1;
EXIT WHEN NUM > 85;
END LOOP;
END;

COMMIT;

---------
DECLARE 
NUM NUMBER(25) :=1;
BEGIN
IF NUM BETWEEN 1 AND 100
LOOP
DBMS_OUTPUT.PUT_LINE('THE VALUE IS ' || NUM);
NUM := NUM + 1;
END IF;
END LOOP;
END;


DECLARE
NUM NUMBER(25) :=1;
BEGIN
FOR NUM IN 1...84 THEN
LOOP
DBMS_OUTPUT.PUT_LINE ('THE VALUE IS = ' || NUM );
NUM := NUM + 1;
END LOOP;
END;

------
DECLARE 
BEGIN
SELECT * FROM EMP1 WHERE EMPNO = 7521;


DECLARE
CUST_REF CUSTOMERS%ROWTYPE;
BEGIN
SELECT * INTO CUST_REF FROM CUSTOMERS WHERE CUST_ID = 1;
DBMS_OUTPUT.PUT_LINE ('CUST_ID = ' || CUST_REF.CUST_ID );
DBMS_OUTPUT.PUT_LINE ('CUST_NAME = ' || CUST_REF.CUST_NAME );
UPDATE CUSTOMERS SET CUST_SALARY = 10000 WHERE CUST_ID = 1;
END;

SELECT * FROM EMP1;

DECLARE 
SAL := 1250;
BEGIN
SELECT  EMP_SAL FROM EMP1
WHERE SAL = SAL * 0.10 AS INC_SAL;
TOTAL_SAL =(SAL + INC_SAL);
DBMS_OUTPUT.PUT_LINE('TOTAL SAL = ' || SAL);
END;



DECLARE
V_EMPNO NUMBER(5);
V_SAL NUMBER(6);
V_INC_SAL NUMBER(6);
V_TOT_SAL NUMBER(6);
BEGIN
SELECT EMPNO INTO V_EMPNO,
SAL INTO V_SAL,
(EMP_SAL * 0.10) INTO V_INC_SAL,
(V_SAL + V_INC_SAL) INTO V_TOT_SAL 
FROM EMP;
END;




DECLARE
V_EMPNO NUMBER(5);
V_SAL NUMBER(6);
V_INC_SAL NUMBER(6);
V_TOT_SAL NUMBER(6);
BEGIN
SELECT EMPNO,SAL,(SAL * 0.10),(V_SAL + V_INC_SAL) INTO V_EMPNO, V_SAL,V_INC_SAL,V_TOT_SAL
FROM EMP1 WHERE EMPNO = 7521;
DBMS_OUTPUT.PUT_LINE ('EMPLOYEE NUMBER = ' ||V_EMPNO);
DBMS_OUTPUT.PUT_LINE ('EMPLOYEE SALARY = ' ||V_SAL);
DBMS_OUTPUT.PUT_LINE ('EMPLOYEE INC_SAL = ' ||V_INC_SAL);
DBMS_OUTPUT.PUT_LINE ('EMPLOYEE TOTAL_SAL = ' ||V_TOT_SAL);
END;

SELECT EXTRACT (YEAR FROM SYSDATE) FROM DUAL;
SELECT EXTRACT (MONTH FROM SYSDATE) FROM DUAL;
SELECT EXTRACT (DAY FROM SYSDATE) FROM DUAL;
COMMIT;
SELECT TZ_OFFSET('US/Eastern'),
	  TZ_OFFSET('Canada/Yukon'),
	  TZ_OFFSET('Europe/London')
 FROM DUAL;

SELECT FROM_TZ(TIMESTAMP 
       '2000-07-12 08:00:00', 'Australia/North')
FROM DUAL;

-----with clause----

WITH DEPARTMENT_DETAILS(DEPTNO ,TOTAL_NO_OF_EMPLOYEES)
AS
(
SELECT DEPTNO, COUNT(*) AS TOTAL_NO_OF_EMPLOYEES FROM EMP
WHERE DEPTNO IN (10,20,30) GROUP BY DEPTNO
)
SELECT EMP.ENAME,EMP.SAL,DEPARTMENT_DETAILS.TOTAL_NO_OF_EMPLOYEES,EMP.DEPTNO
FROM EMP
INNER JOIN DEPARTMENT_DETAILS
ON EMP.DEPTNO = DEPARTMENT_DETAILS.DEPTNO;
SELECT * FROM DEPARTMENT_DETAILS;
-------------------------------------------
select * from emp;


desc emp;

EMPNO         NUMBER(4)    
ENAME         VARCHAR2(10) 
JOB           VARCHAR2(9)  
MGR           NUMBER(4)    
HIREDATE      DATE         
SAL           NUMBER(7,2)  
COMM          NUMBER(7,2)  
DEPTNO        NUMBER(2)    




------CONNECT BY----------
SELECT EMPNO,SAL,MGR,JOB,LEVEL
FROM EMP
CONNECT BY PRIOR EMPNO = MGR
START WITH MGR IS NULL;





































































































select * from emp;
commit;
desc emp1;

drop table emp1;


create table emp(
EMPNO         NUMBER(4),    
ENAME         VARCHAR2(10), 
JOB           VARCHAR2(9),  
MGR           NUMBER(4),    
HIREDATE      DATE,         
SAL           NUMBER(7,2),  
COMM          NUMBER(7,2), 
DEPTNO        NUMBER(2));   

insert into emp values (7369,'SMITH','CLERK',7902,to_date('17-12-1980','dd-mm-yyyy'),800,null,20);
insert into emp values (7499,'ALLEN','SALESMAN',7698,to_date('20-2-1981','dd-mm-yyyy'),1600,300,30);
insert into emp values (7521,'WARD','SALESMAN',7698,to_date('22-2-1981','dd-mm-yyyy'),1250,500,30);
insert into emp values (7566,'JONES','MANAGER',7839,to_date('2-4-1981','dd-mm-yyyy'),2975,null,20);
insert into emp values (7654,'MARTIN','SALESMAN',7698,to_date('28-9-1981','dd-mm-yyyy'),1250,1400,30);
insert into emp values (7698,'BLAKE','MANAGER',7839,to_date('1-5-1981','dd-mm-yyyy'),2850,null,30);
insert into emp values (7782,'CLARK','MANAGER',7839,to_date('9-6-1981','dd-mm-yyyy'),2450,null,10);
insert into emp values (7788,'SCOTT','ANALYST',7566,to_date('13-JUL-87','dd-mm-rr')-85,3000,null,20);
insert into emp values (7839,'KING','PRESIDENT',null,to_date('17-11-1981','dd-mm-yyyy'),5000,null,10);
insert into emp values (7844,'TURNER','SALESMAN',7698,to_date('8-9-1981','dd-mm-yyyy'),1500,0,30);
insert into emp values (7876,'ADAMS','CLERK',7788,to_date('13-JUL-87', 'dd-mm-rr')-51,1100,null,20);
insert into emp values (7900,'JAMES','CLERK',7698,to_date('3-12-1981','dd-mm-yyyy'),950,null,30);
insert into emp values (7902,'FORD','ANALYST',7566,to_date('3-12-1981','dd-mm-yyyy'),3000,null,20);
insert into emp values (7934,'MILLER','CLERK',7782,to_date('23-1-1982','dd-mm-yyyy'),1300,null,10);




SELECT CUSTOMERS.CUST_ID,CUSTOMERS.CUST_NAME,ORDERS.ORDER_ID,ORDERS.ORDER_DATE FROM CUSTOMERS 
INNER JOIN ORDERS ON CUSTOMERS.CUST_ID=ORDERS.CUST_ID;

INSERT INTO PERSON VALUES (137,'TINU','NANI',45,'21-05-2022');
SELECT * FROM PERSON;





