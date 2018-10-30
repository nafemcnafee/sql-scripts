/*
File: q4
Author: Nafe McNafee
Description:  List the names and home phone numbers of customers who purchased Jaguar XJRs and 
              who do not have a business phone. (Descending name order) (No duplicates.)
*/  
 
 SELECT DISTINCT cus.cname, cus.chphone
  FROM s11.customer cus 
  JOIN s11.saleinv si ON cus.cname = si.cname
  JOIN s11.car c ON si.serial = c.serial
 WHERE UPPER(c.make) = 'JAGUAR' 
   AND UPPER(c.model) = 'XJR'
   AND cus.cbphone IS NULL
 ORDER BY cname DESC;
   
/*------Output Results- start ---------------------------
KEN ISAACS          	
JONNY TEST          	(519)637-7242         	     	
--------Output Results - End ----------------------------*/