-- The Boss
-- Q11
-- List all 2006 cars which are not sold (serial#, make, model). Add (option#, 
-- optiondesc, option list price) if they have options.


SELECT c.serial, c.make , c.model, o.ocode, o.odesc, o.olist 
  FROM s11.car c, s11.baseoption bo, s11.options o 
 WHERE c.serial = bo.serial(+)
   AND bo.ocode = o.ocode(+) 
   AND c.cyear = '2006'
   AND c.cname IS NULL;
