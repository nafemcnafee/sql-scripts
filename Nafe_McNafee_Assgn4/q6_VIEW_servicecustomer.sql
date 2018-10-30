/*
File: q6_VIEW_servicecustomer.sql
Author: Nafe McNafee
Description: 6. How many customers from Toronto have brought their car for service?
*/ 

SELECT COUNT(DISTINCT cname) 
  FROM servicecustomer 
 WHERE UPPER(ccity) LIKE 'TORON%';
 
/*------Output Results- start --------------------------- 
COUNT(DISTINCT CNAME)
18
--------Output Results - End ---------------------------*/