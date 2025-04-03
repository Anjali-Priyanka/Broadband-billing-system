declare
num number(10) := 2;
begin
while num <= 20
loop
dbms_output.put_line(num);
num:=num + 2;
end loop;
end;

DECLARE
N NUMBER(2):= 1;
BEGIN
WHILE (N <= 20)
LOOP
IF MOD(N,2) = 0
THEN
DBMS_OUTPUT.PUT_LINE(N);
END IF;
N := N + 1;
END LOOP;
END;

declare
N number := 0;
begin
for N in 1..20 loop
if mod(N,2)=0 then
DBMS_OUTPUT.PUT_LINE ( N||'');
end if;
end loop;
end;