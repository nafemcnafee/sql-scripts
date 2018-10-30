/*
File: q8
Author: Nafe McNafee
Description:  Print the total number and average dollar value of service visits for each of 
            Land Rovers, Mercedes and Jaguars sold between February 2013 and January 2017 inclusive.
*/ 
SELECT c.make,ROUND(AVG(partscost + laborcost), 2) AS "Avg Service Revenue", COUNT(*) AS "Total Visits"
  FROM s11.servinv si INNER JOIN s11.car c ON si.serial = c.serial
  WHERE (UPPER(c.make)= 'LAND ROVER') AND (si.serdate BETWEEN '2013-02-01' AND '2017-01-01')
  GROUP BY c.make 
UNION 
SELECT c.make, ROUND(AVG(partscost + laborcost), 2) AS "Avg Service Revenue", COUNt(*)AS "Total Visits"
  FROM s11.servinv si INNER JOIN s11.car c ON si.serial = c.serial
  WHERE (UPPER(c.make)= 'MERCEDES') AND (si.serdate BETWEEN '2013-02-01' AND '2017-01-01')
  GROUP BY c.make
UNION 
SELECT c.make, ROUND(AVG(partscost + laborcost), 2) AS "Avg Service Revenue", COUNT(*)AS "Total Visits"
  FROM s11.servinv si INNER JOIN s11.car c ON si.serial = c.serial
  WHERE (UPPER(c.make)= 'JAGUAR') AND (si.serdate BETWEEN '2013-02-01' AND '2017-01-01')
  GROUP BY c.make;
 
/*------Output Results- start ---------------------------
MAKE,  Avg Service Revenue, COUNT(*)
JAGUAR    	1496.64	      64
LAND ROVER	533.92	      14
MERCEDES  	1172.5	      76    
--------Output Results - End ----------------------------*/ 