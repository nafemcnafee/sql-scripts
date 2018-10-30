/*
File: q5
Author: Nafe McNafee
Description:  What is the average cost of service visits on 2015 Mercedes?
*/                  
SELECT ROUND(AVG(partscost+laborcost),2) AS avgservicecost
  FROM s11.servinv si
  JOIN s11.car c ON si.serial = c.serial 
 WHERE UPPER(make)='MERCEDES' 
   AND cyear='2015'; 
/*------Output Results- start ---------------------------
AVGSERVICECOST
--------------
1925.72
--------Output Results - End ----------------------------*/