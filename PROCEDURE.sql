CREATE SEQUENCE CUST_SEQ_VAL
START WITH 1011
INCREMENT BY 1
MINVALUE 0
MAXVALUE 2000
CYCLE;


create or replace procedure REGISTER_USER
(
V_NAME in CUSTOMER_DETAILS.CUSTOMER_NAME%type,
V_MOBILE in CUSTOMER_DETAILS.CUSTOMER_MOBILE_NUMBER%type,
V_PROOF in CUSTOMER_PROOF.CUSTOMER_ID_PROOF%type,
V_CITY in CUSTOMER_LOCATION.CUSTOMER_CITY%type,
V_AREA in CUSTOMER_LOCATION.CUSTOMER_AREA%type,
V_TYPE in CUSTOMER_DETAILS.CUSTOMER_TYPE%type,
V_USERNAME in USER_LOGIN.USER_ID%type,
V_PASSWORD in USER_LOGIN.password%type)
is
ID_NUMBER CUSTOMER_DETAILS.CUSTOMER_ID%type;
begin
-- id_number is used to generate a random number for customer id using SEQUENCE cust_seq_val
ID_NUMBER := CUST_SEQ_VAL.NEXTVAL;
-- The following details are inserted into it's respective tables and registers the user.
insert into CUSTOMER_DETAILS values (ID_NUMBER, V_NAME, V_MOBILE, V_AREA,V_TYPE);
insert into CUSTOMER_PROOF values (ID_NUMBER, V_PROOF);
insert into USER_LOGIN values (ID_NUMBER, V_USERNAME, V_PASSWORD);
DBMS_OUTPUT.PUT_LINE('---------------User successfully registered---------------------');
DBMS_OUTPUT.PUT_LINE('Available plans for ' || V_AREA || ', ' || V_CITY);
EXCEPTION
when NO_DATA_FOUND then
DBMS_OUTPUT.PUT_LINE('Registration Failed. Incorrect data entered. Please enter proper details');
end REGISTER_USER;


