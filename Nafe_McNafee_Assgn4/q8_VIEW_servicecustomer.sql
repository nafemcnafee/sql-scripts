/*
File: q8_VIEW_servicecustomer.sql
Author: Nafe McNafee
Description: 8. What is the average amount spent for the services of JAGUAR cars 
*/ 
SELECT ROUND(AVG(servinvtotal),2) AS "Avg Amount Spent", count(*) AS "# Of JAGUAR Cars Serviced"
  FROM servicecustomer
 WHERE UPPER(make) LIKE 'JAGUAR%';
              
              

/*------Output Results- start --------------------------- 
Avg Amount Spent, # Of JAGUAR Cars Serviced
1246.15	          92
--------Output Results - End ---------------------------*/