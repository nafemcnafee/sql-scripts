/*
File: Nafe_McNafee_Assgn2_S2.sql
Author: Nafe McNafee
Description: S2 tables insertion. This script inserts customer data to Specialty Imports DataBase 
*/ 
/*Inserting three new customer data into the CUSTOMER table*/
INSERT INTO S2.customer(cname, cstreet, ccity, cprov, cpostal, cbphone)
    VALUES('Nafe McNafee', '1478 Parkhill rd', 'Oakville', 'Ontario', 'L6H 4P6','226-789-6411');

INSERT INTO S2.customer(cname, cstreet, ccity, cprov, cpostal, chphone)
    VALUES('Don Draper', '1120 Yonge street', 'Toronto', 'Ontario', 'M4W 2L6', '647-478-5789');
    
INSERT INTO S2.customer(cname, cstreet, ccity, cprov, cpostal, chphone)
    VALUES('Roger Sterling', '900 Bathurst street', 'Toronto', 'Ontario', 'M5R 3G3', '416-721-4852');  

/*Inserting two cars into the CAR table*/ 
INSERT INTO S2.car(serial#, cname, make, model, cyear, color, trim, enginetype, purchinv, purchdate, purchfrom, purchcost, freight, totalcost, listprice)
    VALUES('M15BCLS2', 'Don Draper', 'MERCEDES', 'CLSW218', '2015', 'Black','Silver', 'V8M273', 'DM0815', '2015-03-20', 'Daimler AG','83000', '2000','85000','93500');
INSERT INTO S2.car(serial#, cname, make, model, cyear, color, trim, enginetype, purchinv, purchdate, purchfrom, purchcost, freight, totalcost, listprice)
    VALUES('J15RXE76', 'Roger Sterling', 'JAGUAR', 'XE760', '2016', 'Red','Silver', '3LV6','JG1516','2016-01-18','JaguarLR', '44000', '2000','46000','50600');

/*Inserting two baseoptions   */ 
INSERT INTO S2.baseoption(serial#, ocode)
  VALUES('M15BCLS2', 'H35');
INSERT INTO S2.baseoption(serial#, ocode)
  VALUES('J15RXE76', 'SD1'); 
  
/*Inserting a record to saleinvoice to sell a car to myself */ 
INSERT INTO S2.car(serial#, cname, make, model, cyear, color, trim, enginetype, purchinv, purchdate, purchfrom, purchcost, freight, totalcost,listprice)
    VALUES('A15WMDX4','Nafe McNafee', 'ACURA', 'MDX15','2015','White', 'Silver', 'J35Y5','HD1815','2016-10-28', 'Honda', 49000,2100,51100,56210);

INSERT INTO S2.saleinvoice(inv#, cname, salesman, saledate, serial#, totalprice,discount, net, tax, licfee, commission, tradeserial#, tradeallow, fire, collision, liability, property)
  VALUES('1702NM', 'Nafe McNafee', 'Peter Campbell', '2017-02-03','A15WMDX4',56485, 485, 56000, 7280, 750, 1120, null, null, 'Y','Y','Y','Y' );

/*Inserting appropriate invoption record */ 
INSERT INTO S2.invoption(inv#, ocode, saleprice)
    VALUES('1702NM','N43', 56000);
/*prospect table */ 
INSERT INTO S2.prospect(cname, make, model, cyear, color, trim, ocode)
  VALUES('Nafe McNafee', 'ACURA', 'MDX15', '2015', null, null, 'N43');
INSERT INTO S2.prospect(cname, make, model, cyear, color, trim, ocode)
  VALUES('Nafe McNafee', 'ACURA', 'TL', '2014', null, null, 'N43'); 
 
/*Insert at least three records into the SERVINV table for cars that are currently owned */ 
INSERT INTO S2.serviceinvoice(servinv#, servdate, cname, serial#, partscost, laborcost, tax, totalcost)
  VALUES('S02NM','2017-02-07', 'Nafe McNafee', 'A15WMDX4', 500, 350, 110.50,960.50);
INSERT INTO S2.serviceinvoice(servinv#, servdate, cname, serial#, partscost, laborcost, tax, totalcost)
  VALUES('S01DD','2017-01-28', 'Don Draper', 'M15BCLS2', 700, 400, 143, 1243);
INSERT INTO S2.serviceinvoice(servinv#, servdate, cname, serial#, partscost, laborcost, tax, totalcost)
  VALUES('S02RS', '2017-02-01', 'Roger Sterling', 'J15RXE76', 600, 350, 123.50, 1073.50);
/* Insert at least one record for each SERVINV into SERVWORK */ 
INSERT INTO S2.servicework(servinv#, workdescription)
  VALUES('S02NM','Oil change');
INSERT INTO S2.servicework(servinv#, workdescription)
  VALUES('S01DD','Fix scratches at the back');
INSERT INTO S2.servicework(servinv#, workdescription)
  VALUES('S02RS','Oil change and pump tire');
/* Insert NO records into OPTIONS or EMPLOYEE */   

/*------Output Results- start ---------------------------
1 row inserted.
1 row inserted.
1 row inserted.

1 row inserted.
1 row inserted.

1 row inserted.
1 row inserted.

1 row inserted.
1 row inserted.

1 row inserted.

1 row inserted.
1 row inserted.

1 row inserted.
1 row inserted.
1 row inserted.

1 row inserted.
1 row inserted.
1 row inserted.
--------Output Results - End ----------------------------*/ 