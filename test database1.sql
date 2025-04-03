
WHILE LOOP EXAMPLE :- 

DECLARE
V_NUM NUMBER(3):= 10; --Initialization
BEGIN
WHILE (V_NUM <= 20) -- condition
LOOP
DBMS_OUTPUT.PUT_LINE ('VALUE OF NUMBER = ' ||V_NUM);
V_NUM := V_NUM +1; --increment
END LOOP;
END;




--- WRITE A PLSQL BLOCK TO PRINT THE EVEN NUMBER BETWEEN 1 TO 20.

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
-----WRITE A PLSQL BLOCK TO CHECK WHETHER THE SIDES OF A TRIANGLE IS SCALENE OR EQUILATERAL.

declare 
x number(10):=5;
y number(10):=5;
z number(10):=5;
begin
if x = y AND y = z AND z = x then
dbms_output.put_line('equilateral');
else
dbms_output.put_line('scalene');
end if;
end;

----WRITE A PLSQL BLOCK TO FIND THE TABLE OF A NUMBER
declare
n number:=&n;
i number;
begin
for i in 1..12
loop
dbms_output.put_line(n|| ' * ' ||i|| ' = '||n * i );
end loop;
end;
----WRITE A PLSQL BLOCK TO FIND THE AREA AND PERIMETER OF A CIRCLE.
declare
radius number(20):=&r;
area number(20);
perimeter number(20);
begin
dbms_output.put_line('radius= ' || radius);
area := 3.14 * radius * radius;
dbms_output.put_line('area= ' || area);
perimeter := 2 * 3.14 * radius;
dbms_output.put_line('perimeter= ' || perimeter);
end;


