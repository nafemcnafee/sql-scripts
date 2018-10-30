-- The Boss
-- Q10
-- List the names of all customers who purchased cars with sunroofs.   
-- (Description has 'SUN ROOF' in it.)

SELECT cname
  FROM s11.car c, s11.baseoption bo, s11.options o 
 WHERE c.serial = bo.serial   
   AND o.ocode = bo.ocode   
   AND UPPER(odesc) LIKE UPPER('%sun roof%')
   AND cname IN (SELECT DISTINCT cname
                   FROM s11.saleinv)
UNION 
SELECT cname  
  FROM s11.saleinv si, s11.invoption io, s11.options o 
 WHERE si.saleinv = io.saleinv   
   AND io.ocode = o.ocode 
   AND UPPER(odesc) LIKE UPPER('%sun roof%')
 ORDER BY cname ASC;
