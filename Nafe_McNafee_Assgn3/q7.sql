/*
File: q7
Author: Nafe McNafee
Description:  Print the mailing label formatted name, full address, car make 
            and model of the person who purchased the most expensive car from us.
*/ 
SELECT si.cname || CHR(10) || cus.cstreet || CHR(10) || TRIM(cus.ccity) || ',' || TRIM(cus.cprov) || ' ' || cus.cpostal AS "Mailing Address", ca.make, ca.model
  FROM s11.saleinv si INNER JOIN s11.car ca ON si.serial= ca.serial
                      INNER JOIN s11.customer cus ON ca.cname = cus.cname
  WHERE si.net = (SELECT MAX(net) FROM s11.saleinv);   
/*------Output Results- start ---------------------------
"CORY SVENSSON       
6240 Millers Grove  
Mississauga,ON L5N 3C8   "	MERCEDES  	FUNMOB                                                                                             
--------Output Results - End ----------------------------*/
/* Format: cname || CHR(10) || caddress || CHR(10) || TRIM(ccity) || ', ' || TRIM(cstate) || ' ' || czip */ 