-- The Boss	
-- q3.sql
-- Show all customer information for people interested in blue Jaguars.

SELECT DISTINCT cu.* 
  FROM customer cu, prospect pr 
 WHERE cu.cname = pr.cname 
   AND make = 'JAGUAR' 
   AND UPPER(color) = 'BLUE';
