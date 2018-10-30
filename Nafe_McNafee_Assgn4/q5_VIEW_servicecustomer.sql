/*
File: q5_VIEW_servicecustomer.sql
Author: Nafe McNafee
Description: 5.What is the average of the amount spent by customers from Mississauga?
*/  
SELECT ROUND(AVG(servinvtotal),2) AS "Avg Expenditure", count (*) AS "# Of Customers-Mississauga"
  FROM Servicecustomer 
 WHERE UPPER(ccity) LIKE 'MISSI%';
 
/*------Output Results- start --------------------------- 
Avg Expenditure, # Of Customers-Mississauga
1102.15	          84
--------Output Results - End ---------------------------*/

