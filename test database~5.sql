-----QUES 1: WRITE A PLSQL BLOCK TO FIND THE EMPLOYEE DETAILS AND IF NOT AVAILABLE SHOW AN ERROR MESSAGE.
declare
V_ENAME varchar(225);
V_SAL number(25);
begin
select ENAME,SAL INTO V_ENAME,V_SAL from EMP where EMPNO = 5643;
DBMS_OUTPUT.PUT_LINE ('ENAME = ' || V_ENAME);
DBMS_OUTPUT.PUT_LINE ('SAL = ' || V_SAL );
exception
when NO_DATA_FOUND then
dbms_output.put_line('not found');
end;
commit;
select * from EMP;



-----QUES 2: UPDATE EMP_SAL FROM EMPLOYEE TABLE AND GIVE A MESSAGE EMP_NO || SALARY UPDATED !!
DECLARE
EMP_REF EMP%ROWTYPE;
BEGIN
SELECT * INTO EMP_REF FROM EMP WHERE EMPNO =&V_EMPNO;
DBMS_OUTPUT.PUT_LINE ('EMPNO = ' || EMP_REF.EMPNO );
DBMS_OUTPUT.PUT_LINE ('ENAME = ' || EMP_REF.ENAME );
UPDATE EMP SET SAL = 15000 WHERE EMPNO=7499;
DBMS_OUTPUT.PUT_LINE ('EMPNO = ' || EMP_REF.EMPNO || 'SALARY UPDATED');
END;
commit;
select * from emp;
-----procedure-----
create or replace PROCEDURE EMP_DETAILS ( V_EMPNO IN EMP.EMPNO%TYPE)
AS
V_ENAME EMP.ENAME%TYPE;
V_SAL EMP.SAL%TYPE;
BEGIN
SELECT ENAME, SAL INTO V_ENAME,V_SAL FROM EMP WHERE EMPNO = V_EMPNO;
DBMS_OUTPUT.PUT_LINE ('EMPLOYEE DETAILS !!!');
DBMS_OUTPUT.PUT_LINE ('ENAME = '|| V_ENAME);
DBMS_OUTPUT.PUT_LINE ('EMP_SAL = '|| V_SAL);
END;

DECLARE
V_EMPNO NUMBER;
BEGIN
V_EMPNO := 7369; 
EMP_DETAILS(V_EMPNO => V_EMPNO);
END;

DECLARE
  V_EMPNO NUMBER;
BEGIN
  V_EMPNO := 1;

  EMP_DETAILS(
    V_EMPNO => V_EMPNO
  );
--rollback; 
END;



