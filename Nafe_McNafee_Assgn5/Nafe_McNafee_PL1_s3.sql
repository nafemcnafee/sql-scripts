/*
File: Nafe_McNafee_PL1_s3.sql
Author: Nafe McNafee - 991408856
Description: Create a script for changing customer names in the database. 
The script will prompt the user for the existing customer name, 
then prompts again for the new name and successfully changes that customer's name in the database.

Hint: Remember that customer table is connected through foreign key constraints with four tables: car, saleinv, servinv and prospect. 
Therefore all those tables need to be also updated when you change the value of the primary key in the car table. 
*/ 
SET SERVEROUTPUT ON;
ACCEPT p_cname PROMPT 'Enter customer name: ';
ACCEPT p_newcname PROMPT 'Enter updated customer name: ';

BEGIN
  INSERT INTO customer
    (SELECT '&p_newcname', cstreet, ccity, cprov, chphone, cpostal, cbphone 
      FROM customer
     WHERE UPPER(cname)= UPPER('&p_cname'));
  
  UPDATE car 
    SET cname='&p_newcname'
   WHERE UPPER(cname)  = UPPER('&p_cname'); 
   
  UPDATE saleinv
    SET cname='&p_newcname'
   WHERE UPPER(cname)  = UPPER('&p_cname');  
  
  UPDATE servinv 
    SET cname='&p_newcname'
   WHERE UPPER(cname)  = UPPER('&p_cname');
  
  UPDATE prospect 
    SET cname='&p_newcname'
   WHERE UPPER(cname)  = UPPER('&p_cname');
   
  DELETE FROM customer 
    WHERE UPPER(cname) = UPPER('&p_cname');
    
  COMMIT;
END;
/

/*------Output Results- start --------------------------- 
Procedure completes successfully, but no record is being updated. 
I could not identify the problem.
--------Output Results - End ---------------------------*/