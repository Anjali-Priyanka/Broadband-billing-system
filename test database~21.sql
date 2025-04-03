declare
n number:=&n;
i number;
begin
for i in 1..12
loop
dbms_output.put_line(n|| ' * ' ||i|| ' = '||n * i );
end loop;
end;



DECLARE
TYPE
recname is RECORD
(
customer_id number,
customer_name varchar2(20));
var_rec recname;
BEGIN
var_rec.customer_id:= 20,
var_rec.customer_name:=‘SMITH',
dbms_output.put_line(var_rec.customer_id ||'var_rec.customer_name');
END;