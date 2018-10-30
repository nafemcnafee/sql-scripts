/*
File: Nafe_McNafee_PL2_s2
Author: Nafe McNafee - 991408856
Description: A script that would require a make and a model as inputs and prints out the number of cars sold,
            and the average of the sale price before taxes (net) of the cars for that make and model.

    To handle exceptional cases use exceptions that will be raised in two different circumstances
        1. when no cars of the inputed make and model are sold -> just display a message;
        2. when only one car is sold -> print only the price (net) and NOT the average; 
*/ 
SET SERVEROUTPUT ON; 
ACCEPT p_make PROMPT 'Enter the make of the car:'
ACCEPT p_model PROMPT 'Enter the model of the car:'
DECLARE
  c_cnum INTEGER;
  c_cavg NUMBER(10,2);
  ex_notfound EXCEPTION;
  ex_onesale EXCEPTION;
  CURSOR cus_carnumbers IS
    SELECT DISTINCT COUNT(c.serial), ROUND(AVG(net),2)
      FROM saleinv si, car c
     WHERE si.serial = c.serial
       AND UPPER(TRIM(c.make))=UPPER('&p_make')
       AND UPPER(TRIM(c.model))= UPPER('&p_model')
     GROUP BY c.make, c.model;
    
BEGIN
  OPEN cus_carnumbers;
  FETCH cus_carnumbers INTO c_cnum, c_cavg;
    IF c_cnum <1 THEN 
      EXIT cus_carnumbers; 
      RAISE ex_notfound;
    ELSE          
      DBMS_OUTPUT.PUT_LINE('Number of car sold for the inputted make and model: ' || c_cnum);
      CASE 
        WHEN (c_cnum =1) THEN RAISE ex_onesale;
        WHEN (c_cnum>=2) THEN DBMS_OUTPUT.PUT_LINE('Average sale price: ' || c_cavg);
      END CASE;
    END IF;
  CLOSE cus_carnumbers;
EXCEPTION 
  WHEN ex_notfound THEN 
    DBMS_OUTPUT.PUT_LINE('NO CARS WERE SOLD FOR THIS MAKE AND MODEL.');
  WHEN ex_onesale THEN 
    DBMS_OUTPUT.PUT_LINE('Price of the only sold car: ' || c_cavg);
END;
/

/*------Output Results- start --------------------------- 
----I Couldn't Identify the Error-----
Error report -
ORA-06550: line 28, column 7:
PLS-00441: EXIT/CONTINUE statement may have a label here; 'CUS_CARNUMBERS' is not a label
ORA-06550: line 28, column 7:
PL/SQL: Statement ignored
06550. 00000 -  "line %s, column %s:\n%s"
*Cause:    Usually a PL/SQL compilation error.
--------Output Results - End ---------------------------*/