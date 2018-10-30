 -- The Boss
 -- q5.sql
 -- What is the average cost of service visits on 2006 Mercedes?

SELECT * 
  FROM s11.servinv ser, s11.car c 
 WHERE ser.serial = c.serial 
   AND c.make = 'MERCEDES' 
   AND c.cyear = '2015';
