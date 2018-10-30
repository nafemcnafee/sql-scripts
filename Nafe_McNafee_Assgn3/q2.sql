/*
File: q2
Author: Nafe McNafee
Description:  How many vehicles were sold with some kind of insurance?
*/ 
SELECT COUNT(*) 
  FROM s11.saleinv
 WHERE fire='Y' OR collision='Y' OR liability= 'Y' OR property ='Y';

/*------Output Results- start ---------------------------
  COUNT(*)
----------
       105
--------Output Results - End ----------------------------*/ 

 
 