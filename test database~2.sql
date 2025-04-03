---CONDITIONAL----
CREATE TABLE SALARY
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
COMMIT;
SELECT * FROM SALARY;
CREATE TABLE LOW_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));


CREATE TABLE HIGH_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));

CREATE TABLE MED_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
COMMIT;

INSERT INTO salary VALUES(1, 'MOUNI',3000);
INSERT INTO salary VALUES(2, 'MANI',6000);
INSERT INTO salary VALUES(3,'MOUNICA',8000);
INSERT INTO salary VALUES(4, 'mayanshi',12000);
INSERT INTO salary VALUES(5, 'MAYANK',14000);
INSERT INTO salary VALUES(6,'MEDHANSH',16000);
INSERT INTO salary VALUES(7, 'VAIBHAV',7000);
INSERT INTO salary VALUES(8, 'SHIVA',9000);
INSERT INTO salary VALUES(9,'PRIYANKA',4000);
INSERT INTO salary VALUES(10, 'LAHARI',1000);
INSERT INTO salary VALUES(11, 'MANSI',2000);
INSERT INTO salary VALUES(12,'SNEHA',5000);
COMMIT;
SELECT * FROM SALARY;
COMMIT;

INSERT FIRST
WHEN salary < 5000 THEN
INTO low_sal VALUES (emp_ID,last_name, salary)

WHEN salary between 5000 and 10000 THEN
INTO med_sal VALUES (emp_id, last_name, salary)

ELSE
INTO high_sal VALUES (emp_id, last_name, salary)
SELECT emp_id, last_name, salary
FROM salary;
COMMIT;


CREATE TABLE SALARY
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
COMMIT;
SELECT * FROM SALARY;
CREATE TABLE LOW_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
DROP TABLE MED_SAL;
CREATE TABLE HIGH_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
CREATE TABLE MED_SAL
(
EMP_ID NUMBER(30),
LAST_NAME VARCHAR2(35),
SALARY NUMBER(30));
COMMIT;
DROP TABLE SALARY;
DROP TABLE LOW_SAL;
DROP TABLE MED_SAL;
DROP TABLE HIGH_SAL;
COMMIT;INSERT INTO salary VALUES(1, 'MOUNI',3000);
INSERT INTO salary VALUES(2, 'MANI',6000);
INSERT INTO salary VALUES(3,'MOUNICA',8000);
INSERT INTO salary VALUES(4, 'mayanshi',12000);
INSERT INTO salary VALUES(5, 'MAYANK',14000);
INSERT INTO salary VALUES(6,'MEDHANSH',16000);
INSERT INTO salary VALUES(7, 'VAIBHAV',7000);
INSERT INTO salary VALUES(8, 'SHIVA',9000);
INSERT INTO salary VALUES(9,'PRIYANKA',4000);
INSERT INTO salary VALUES(10, 'LAHARI',1000);
INSERT INTO salary VALUES(11, 'MANSI',2000);
INSERT INTO salary VALUES(12,'SNEHA',5000);
COMMIT;
INSERT FIRST
WHEN salary < 5000 THEN
INTO low_sal VALUES (emp_ID,last_name, salary)
WHEN salary between 5000 and 10000 THEN
INTO med_sal VALUES (emp_id, last_name, salary)
ELSE
INTO high_sal VALUES (emp_id, last_name, salary)
SELECT emp_id, last_name, salary
FROM salary;
COMMIT;
SELECT * FROM EMPLOYEES;
SELECT * FROM HIGH_SAL;
SELECT * FROM LOW_SAL;
SELECT * FROM MED_SAL;



SELECT department_name, city
FROM   departments
NATURAL JOIN (SELECT l.location_id, l.city, l.country_id
              FROM   loc l
              JOIN   countries c
              ON(l.country_id = c.country_id)
              JOIN regions USING(region_id)
              WHERE region_name = 'Europe');
              
              
              
              
              
------PIVOTE-----
                          
              
create table sales_source
(
empno number(5),
weekid number(2),
sales_m number(8,2),
sales_tu number(8,2),
sales_w number(8,2),
sales_th number(8,2),
sales_f number(8,2));

create table sales_info
(
empid number(6),
week number(2),
SALES NUMBER(8,2));

insert into sales_source values(176,6,2000,3000,1000,5000,6000);
COMMIT;
insert all into sales_info values(employid,weekid,sales_mon)
into sales_info values(employid,weekid,sales_tu)
into sales_info values(employid,weekid,sales_wed)
into sales_info values(employid,weekid,sales_th)
into sales_info values(employid,weekid,sales_f)
select empno employid,weekid weekid,sales_m sales_mon,
sales_tu sales_tu,sales_w sales_wed,sales_th sales_th,sales_f sales_f from sales_source;



COMMIT;



SELECT * FROM SALES_SOURCE;
SELECT * FROM SALES_INFO;

SELECT versions_starttime "START_DATE",
versions_endtime "END_DATE",
SAL FROM EMP1 VERSIONS BETWEEN SCN MINVALUE
AND MAXVALUE WHERE ENAME = 'JONES';

SELECT * FROM EMP1;
SELECT EXTRACT (YEAR FROM SYSDATE) FROM DUAL;





INSERT ALL
WHEN salary < 5000 THEN
INTO low_sal VALUES (emp_ID,last_name, salary)

WHEN salary between 5000 and 10000 THEN
INTO med_sal VALUES (emp_id, last_name, salary)

ELSE
INTO high_sal VALUES (emp_id, last_name, salary)
SELECT emp_id, last_name, salary
FROM salary; 

SELECT * FROM HIGH_SAL;
SELECT * FROM LOW_SAL;
SELECT * FROM MED_SAL;

