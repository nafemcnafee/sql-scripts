/*
File: q9
Author: Nafe McNafee
Description:  Print a list of salespersons names who have sold less than 3 cars.
*/ 
SELECT DISTINCT salesman
  FROM s11.saleinv
 GROUP BY salesman
 HAVING ((COUNT(*)<3) AND (salesman IS NOT NULL))
 ORDER BY salesman ASC; 

/*------Output Results- start ---------------------------
Maurice Risner      
Mike Mechanic       
Noreen Newbie       
Sam Slicker         
--------Output Results - End ----------------------------*/ 