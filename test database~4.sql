create or replace PACKAGE BODY PACK1 AS
PROCEDURE PROC1 IS
BEGIN
DBMS_OUTPUT.PUT_LINE('Hi I am in the procedure !!');
END PROC1;
FUNCTION FUNC1 RETURN VARCHAR2 is
BEGIN
DBMS_OUTPUT.PUT_LINE('This is the Function section');
END FUNC1;
END PACK1;
EXEC PACK1.PROC1;