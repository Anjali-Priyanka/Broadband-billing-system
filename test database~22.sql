DECLARE
  V_EMPNO NUMBER;
BEGIN
  V_EMPNO := 7369;

  EMP_DETAILS(
    V_EMPNO => V_EMPNO
  );
--rollback; 
END;
