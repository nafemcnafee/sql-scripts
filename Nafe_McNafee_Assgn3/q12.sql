/*
File: q12
Author: Nafe McNafee
Description:  Who are the customers living in Brampton who have purchased a car with $1000 or more of extra options? 
              Include the total amount of the extra options in the output. (Ascending order)

*/ 
SELECT  io.saleinv, io.saleprice, cus.cname
  FROM s11.invoption io INNER JOIN s11.saleinv si ON si.saleinv = io.saleinv 
                      INNER JOIN s11.customer cus ON si.cname = cus.cname 
                      WHERE ((saleprice >= 1000) AND (UPPER(cus.cstreet) LIKE 'BRAMP%'))
  GROUP BY io.saleinv;
 
               
                 

/*------Output Results- start ---------------------------

--------Output Results - End ----------------------------*/