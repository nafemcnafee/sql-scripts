/*
File: q10
Author: Nafe McNafee
Description:  List the names of all customers who purchased cars with sunroofs. 
              (Description has 'SUN ROOF' in it.)
*/ 
SELECT DISTINCT cname
  FROM s11.saleinv si INNER JOIN s11.invoption io ON si.saleinv = io.saleinv 
                      INNER JOIN s11.options o ON io.ocode = o.ocode
 WHERE UPPER(o.odesc) = 'SUN ROOF'
 ORDER BY cname ASC;  
/*------Output Results- start ---------------------------
AUSTIN PEREIRA      
JASON               
KEN ISAACS          
MARK THIBAULT       
MATTHEW VILJAKAINEN 
MICHAEL ALAMPI      
MOHAMED             
RICHARD ELDER       
RODRIGO LIMA        
--------Output Results - End ----------------------------*/ 