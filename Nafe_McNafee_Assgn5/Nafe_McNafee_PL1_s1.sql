/*
File: Nafe_McNafee_PL1_s1
Author: Nafe McNafee - 991408856
Description: Create the first script which prompts for the name of a salesman and finds out how many cars he/she has sold. 
            Use an IF or CASE statement to display three different messages based on the outcome. 
              If the result is greater than 1, display something like "JACK SPRATT has sold 27 cars", 
              if the result is zero display something like "JOHN JOHNSON has sold no cars", and 
              if the result is one display something like "SAM SLICKER has sold only one car".
Hint: salesman name is kept in the saleinv, and is a foreign key to the employee table.
*/ 
SET SERVEROUTPUT ON;
ACCEPT p_name  PROMPT 'Enter salesman name here: ';

DECLARE 
  v_numsales Number :=0;
  
BEGIN 
  SELECT COUNT(salesman)
  INTO v_numsales
    FROM Saleinv
   WHERE UPPER(salesman) = UPPER('&p_name');
  
  CASE v_numsales
    when 0 then DBMS_OUTPUT.PUT_LINE('&p_name' || ' has sold no cars.');
    when 1 then DBMS_OUTPUT.PUT_LINE('&p_name' || ' has sold only one car.');
    else DBMS_OUTPUT.PUT_LINE('&p_name' || ' has sold ' || v_numsales || ' cars.'); 
  END CASE;
END;
/

/*------Output Results- start --------------------------- 
trim 
Error report -
ORA-01403: no data found
ORA-06512: at line 5
01403. 00000 -  "no data found"
*Cause:    No data was found from the objects.
*Action:   There was no data from the objects which may be due to end of fetch.
-----
I could not detect the error. 
--------Output Results - End ---------------------------*/
