/*
File: Nafe_McNafee_PL1_s2.sql
Author: Nafe McNafee - 991408856
Description: Create a script to input a servinv # and print the service information 
              coresponding to that servinv.
Hint: Use one of methods described in this module to declare the 
variables and assign values to them using an SQL statement. 
Then, concatenate those values for easy printing.
*/ 
SET SERVEROUTPUT ON;
ACCEPT p_servinv PROMPT 'Enter service invoice# here: ' 

DECLARE
  v_serdate servinv.serdate%TYPE;
  v_cname servinv.cname%TYPE;
  v_serial servinv.serial%TYPE;
  v_partscost servinv.partscost%TYPE; 
  v_laborcost servinv.laborcost%TYPE;
  v_tax servinv.tax%TYPE;
  v_workdesc servwork.workdesc%TYPE;
BEGIN 
  SELECT si.serdate, si.cname, si.serial,si.partscost, si.laborcost, si.tax, sw.workdesc
    INTO v_serdate, v_cname,v_serial,v_partscost,v_laborcost, v_tax, v_workdesc
    FROM servinv si, servwork sw
   WHERE si.servinv = sw.servinv 
    AND UPPER(si.servinv) = UPPER('&p_servinv');
  DBMS_OUTPUT.PUT_LINE('&p_servinv' || CHR(9) || v_serdate || CHR(10)
  || 'Customer Name: ' || v_cname || CHR(10)
  || 'Serial no: ' || v_serial || CHR(10)
  || 'Parts Cost: ' || v_partscost ||';' || CHR(9) || 'Labor Cost: ' ||v_laborcost ||';' || CHR(9) || 'Tax: ' || v_tax ||';' || CHR(10)
  || 'Service Description: ' || v_workdesc);
END;
/

/*------Output Results- start --------------------------- 
W0038	2005-02-16
Customer Name: MARK DENNIS         
Serial no: M16RSL15
Parts Cost: 50;	Labor Cost: 50;	Tax: 13;
Service Description: SOME CAR STUFF
-----------------------------------
W0042	2006-03-16
Customer Name: STEVEN BAN          
Serial no: M16BSLK1
Parts Cost: 300;	Labor Cost: 500;	Tax: 104;
Service Description: TRANSMISSION SERVICE
-------------------------------------
W0045	2008-05-16
Customer Name: JOSEPH HARTWELL     
Serial no: J16RF-T1
Parts Cost: 450;	Labor Cost: 50.5;	Tax: 65.07;
Service Description: Snow Tires
--------Output Results - End ---------------------------*/