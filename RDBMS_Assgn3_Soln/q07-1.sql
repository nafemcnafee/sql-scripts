-- The Boss
-- q7.sql
-- Print the mailing label formatted name, full address, car make and model of 
-- the person who purchased the most expensive car from us.

SELECT cu.cname || CHR(10) || 
       cstreet || CHR(10) || 
       TRIM(ccity) || ', ' || TRIM(cprov) || ' ' || cpostal || CHR(10) || 
       'Make: ' || c.make || ' Model: ' || c.model AS "Address Label"
  FROM s11.customer cu, s11.car c, s11.saleinv si
  WHERE cu.cname = si.cname 
    AND si.serial = c.serial 
    AND si.net = (SELECT MAX(net) 
                    FROM s11.saleinv);
