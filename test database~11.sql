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
