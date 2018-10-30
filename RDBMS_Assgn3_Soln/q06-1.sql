-- The Boss
-- q6.sql
-- List the name and phone number of all customers who have  purchased a car 
-- from us but have never come in for servicing.

SELECT DISTINCT cu.cname, cu.chphone, cu.cbphone 
  FROM s11.customer cu, s11.saleinv sal 
 WHERE cu.cname = sal.cname 
   AND sal.cname NOT IN (
       SELECT DISTINCT cname 
         FROM s11.servinv);
