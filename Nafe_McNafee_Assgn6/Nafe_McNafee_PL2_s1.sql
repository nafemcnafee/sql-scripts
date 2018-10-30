/*
File: Nafe_McNafee_PL2_s1
Author: Nafe McNafee - 991408856
Description: Using the cursor approach, a script which will print mailing labels for customers who own a car of a
              given make, model and year (prompt the user to enter the values for them).
The script's output should look like the following:
make model
year
(2 Line gaps)               
customer name
street
city prov postal
*/ 
SET SERVEROUTPUT ON; 
ACCEPT p_make PROMPT 'Enter car make here: '
ACCEPT p_model PROMPT 'Enter car model here: '
ACCEPT p_year PROMPT 'Enter car year here: '
DECLARE
  c_cname customer.cname%TYPE;
  c_cstreet customer.cstreet%TYPE;
  c_ccity customer.ccity%TYPE;
  c_cprov customer.cprov%TYPE;
  c_cpostal customer.cpostal%TYPE;
  CURSOR cus_carcustomers IS 
    SELECT DISTINCT cus.cname, cstreet, ccity, cprov, cpostal 
      FROM customer cus, car c
     WHERE c.cname = cus.cname
      AND UPPER(TRIM(c.make))=UPPER('&p_make')
      AND UPPER(TRIM(c.model))= UPPER('&p_model')
      AND TRIM(c.cyear) = '&p_year';
BEGIN
  OPEN cus_carcustomers;
  LOOP
  FETCH cus_carcustomers INTO c_cname, c_cstreet, c_ccity, c_cprov, c_cpostal;    
    EXIT WHEN cus_carcustomers%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(
      '&p_make' || CHR(9)|| '&p_model' || CHR(10) || 
      '&p_year' || CHR(10) ||
      CHR(10) || CHR(10) ||
      TRIM(c_cname) || CHR(10)||
      TRIM(c_cstreet) || CHR(10)|| 
      TRIM(c_ccity) || ',' || TRIM(c_cprov) || ','|| TRIM(c_cpostal));
    
    IF cus_carcustomers%NOTFOUND THEN 
      DBMS_OUTPUT.PUT_LINE('NO RECORD FOUND!');
    END IF;
  END LOOP;
  
  CLOSE cus_carcustomers;
END;
/

/*------Output Results- start --------------------------- 
acura	INTEGRA
2013


ABDALLA FREIHAT
370 KINGSBRIDGE
MISSISSAUGA,ON,L5R1K8
acura	INTEGRA
2013


ANDREW AUBERTINSS
64 SHERWOOD AVENUE
ST. CATHARINES,ON,L2R1X5
acura	INTEGRA
2013


CARL EDWARDS
88 OLYMPIA
MISSISSAUGA,ON,L6X2V7
--------------------------------------------
JAGUAR	HSE
2012


FAIZA IFTIKHAR
123 BRIGHT LAKE DR
BRAMPTON,ON,H5R IP9
-------------------------------------------
mercedes	SLK400
2014


ANNA JIANG
100 MCLER DR
BRAMPTON,ON,L7V2F5
--------Output Results - End ---------------------------*/