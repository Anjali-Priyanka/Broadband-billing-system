use mydb;

drop table product;

create table product(
id int  PRIMARY KEY,
name varchar(20),
description varchar(100),
price decimal
);

select * from product;