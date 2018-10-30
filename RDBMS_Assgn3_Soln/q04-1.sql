-- The Boss	
-- q4.sql
-- List the names and home phone numbers of customers who purchased Jaguar XJRs 
-- and who do not have a business phone. (Descending name order) (No duplicates.)

SELECT DISTINCT cu.cname , chphone
  FROM s11.customer cu, s11.saleinv sa, s11.car c
 WHERE cu.cname = sa.cname 
   AND sa.serial = c.serial 
   AND c.make = 'JAGUAR' 
   AND c.model = 'XJR' 
   AND cu.cbphone IS NULL 
 ORDER BY cname DESC;
