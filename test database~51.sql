------IF THEN-------
DECLARE
V_NUM NUMBER := 9;
BEGIN
IF V_NUM < 20 THEN
DBMS_OUTPUT.PUT_LINE('THIS THE RIGHT ONE');
END IF;
DBMS_OUTPUT.PUT_LINE('THIS THE WRONG ONE');
END;
-----
DECLARE
V_EMPNO NUMBER:= 5;
V_NAME VARCHAR(20):='MAHI';
BEGIN
IF V_EMPNO = 5 AND V_NAME = 'MAHI' THEN
DBMS_OUTPUT.PUT_LINE('DONE');
END IF;
----DBMS_OUTPUT.PUT_LINE('NOT DONE');
END;
-------IF ELSE-----
DECLARE
V_NUM NUMBER(10):=&V_NUM;
V_SAL NUMBER(10):=&V_SAL;
BEGIN
IF V_NUM < 10 AND V_SAL = 1000 THEN
DBMS_OUTPUT.PUT_LINE('TRUE');
ELSE
DBMS_OUTPUT.PUT_LINE('FALSE');
END IF;
END;

DECLARE
V_NUM NUMBER(10):=&V_NUM;
V_SAL NUMBER(10):=&V_SAL;
BEGIN
IF V_NUM < 10 AND V_SAL = 1000 THEN
DBMS_OUTPUT.PUT_LINE('TRUE');
ELSE IF V_NUM < 10 AND V_SAL = 2000 THEN
DBMS_OUTPUT.PUT_LINE('2TRUE');
ELSE
DBMS_OUTPUT.PUT_LINE('FALSE');
END IF;
END IF;
END;
