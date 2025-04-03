CREATE OR REPLACE PROCEDURE Register_user
is
v_name customer_details.customer_name%TYPE;
v_mobile customer_details.customer_mobile_number%TYPE;
v_proof customer_proof.customer_id_proof%TYPE;
v_type customer_location.customer_type%TYPE;
v_city customer_location.customer_city%TYPE;
v_area customer_location.customer_area%TYPE;
v_pass user_login.password%TYPE;

BEGIN
SELECT CUSTOMER_NAME,CUSTOMER_MOBILE_NUMBER,customer_id_proof,customer_type,customer_city,customer_area,password INTO 
v_name,v_mobile,v_proof,v_type,v_city,v_area,v_pass FROM CUSTOMER_DEALIS,CUSTOMER_PROOF,CUSTOMER_LOCATION;













CREATE...PROC_<PROCEDURE_NAME>
AS
V_MEMBER_ID Member_Master.MEMBER_ID%TYPE;
V_MEMBER_NAME Member_Master.MEMBER_NAME%TYPE;
V_BOOK_ID Book_Master.BOOK_ID%TYPE;
V_BOOK_NAME Book_Master.BOOK_NAME%TYPE;



BEGIN
SELECT MM.MEMBER_ID,MM.MEMBER_NAME,BM.BOOK_ID,BM.BOOK_NAME
INTO V_MEMBER_ID,V_MEMBER_NAME,V_BOOK_ID,V_BOOK_NAME
FROM Book_Master BM, Book_issue_details BID, Member_Master MM
WHERE BM.BOOK_ID = BID.BOOK_ID
AND BID.MEMBER_ID = MM.MEMBER_ID AND TRUNC(BID.ISSUE_DATE) = TRUNC(SYSDATE) -1;



DBMS_OUTPUT.PUT_LINE('MEMBER_ID = ' || V_MEMBER_ID);
DBMS_OUTPUT.PUT_LINE('MEMBER_NAME = ' || V_MEMBER_NAME);
DBMS_OUTPUT.PUT_LINE('BOOK_ID = ' || V_BOOK_ID);
DBMS_OUTPUT.PUT_LINE('BOOK_NAME = ' || V_BOOK_NAME);



END;