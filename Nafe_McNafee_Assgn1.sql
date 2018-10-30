/*
File: Nafe_McNafee_Assignment1.sql
Author: Nafe McNafee
Description: This script creates tables for Specialty Imports database. 
              DROP TABLE statements clear the existing table
*/ 

DROP TABLE employee;
DROP TABLE prospect;
DROP TABLE servwork;
DROP TABLE servinv;
DROP TABLE invoption;
DROP TABLE baseoption;
DROP TABLE options;
DROP TABLE saleinv;
DROP TABLE car;
DROP TABLE customer; 

CREATE TABLE customer
(cname CHAR(20)
, cstreet CHAR(20)
, ccity CHAR(20)
, cprov CHAR(10)
, cpostal CHAR(6)
, chphone CHAR(13)
, cbphone CHAR(13)
, CONSTRAINT pkcustomer PRIMARY KEY (cname)
);

CREATE TABLE car
(serial# CHAR(8)
, cname CHAR(20) 
, make CHAR(10) NOT NULL
, model CHAR(8) NOT NULL 
, cyear CHAR(4) NOT NULL
, color CHAR(12) NOT NULL
, trim CHAR(16) NOT NULL
, enginetype CHAR(10) NOT NULL
, purchinv CHAR(6)
, purchdate DATE
, purchfrom CHAR(12)
, purchcost NUMBER (9,2)
, freight NUMBER (7,2) 
, totalcost NUMBER (9,2)
, listprice NUMBER (9,2)
, CONSTRAINT pkcar PRIMARY KEY (serial#) 
, CONSTRAINT fkcar_cname  FOREIGN KEY(cname)  REFERENCES customer(cname)
, CONSTRAINT nlcar_make CHECK (make IS NOT NULL)
, CONSTRAINT nlcar_model CHECK (model IS NOT NULL)
, CONSTRAINT nlcar_cyear CHECK (cyear IS NOT NULL)
, CONSTRAINT nlcar_color CHECK (color IS NOT NULL)
, CONSTRAINT nlcar_trim CHECK (trim IS NOT NULL)
, CONSTRAINT nlcar_enginetype CHECK (enginetype IS NOT NULL)
);

CREATE TABLE saleinvoice
(inv# CHAR(6)
, cname CHAR (20)
, salesman CHAR(20)
, saledate DATE 
, serial# CHAR(8) 
, totalprice NUMBER(9,2)
, discount NUMBER(9,2)
, net NUMBER(9,2)
, tax NUMBER(8,2)
, licfee NUMBER(6,2)
, commission NUMBER(8,2)
, tradeserial# CHAR(8) 
, tradeallow NUMBER(9,2)
, fire CHAR(1)
, collision CHAR(1)
, liability CHAR(1) 
, property CHAR(1)
, CONSTRAINT pksaleinv_inv# PRIMARY KEY (inv#) 
, CONSTRAINT fksaleinv_cname FOREIGN KEY (cname) REFERENCES customer(cname)
, CONSTRAINT fksalesinv_serial# FOREIGN KEY (serial#) REFERENCES car(serial#) 
, CONSTRAINT fksalesinv_tradeserial# FOREIGN KEY (tradeserial#) REFERENCES car(serial#) 
, CONSTRAINT nlsaleinvoice_cname CHECK (cname IS NOT NULL)
, CONSTRAINT nlsaleinvoice_saledate CHECK (saledate IS NOT NULL)
, CONSTRAINT nlsaleinvoice_serial# CHECK (serial# IS NOT NULL)
, CONSTRAINT chksaleinvoice_saledate CHECK (saledate > TO_DATE('01-JAN-1990','DD-MON-YYYY'))
, CONSTRAINT chksaleinvoice_fire CHECK (fire IN ('Y', 'N'))
, CONSTRAINT chksaleinvoice_collision CHECK (collision IN ('Y','N'))
, CONSTRAINT chksaleinvoice_liability CHECK (liability IN ('Y','N'))
, CONSTRAINT chksaleinvoice_property CHECK (property IN ('Y', 'N'))
, CONSTRAINT chknotsame_serial_tradeserial CHECK (tradeserial# != serial#)
);

CREATE TABLE options 
(ocode CHAR(4) 
, description CHAR(30)
, cost NUMBER(7,2) 
, listprice NUMBER (7,2) 
, CONSTRAINT pkoptions PRIMARY KEY (ocode) 
);


CREATE TABLE baseoption
(serial# CHAR(8)
, ocode CHAR(4)
, CONSTRAINT pkbaseoption_serial#_ocode PRIMARY KEY (serial#, ocode)
, CONSTRAINT fkbaseoption_serial# FOREIGN KEY (serial#) REFERENCES car(serial#) 
, CONSTRAINT fkbaseiotion_ocode FOREIGN KEY (ocode) REFERENCES options(ocode)
);

CREATE TABLE invoption
(inv# CHAR(6) 
, ocode CHAR(4) 
, saleprice NUMBER(7,2) 
, CONSTRAINT pkinvoption_inv#_ocode PRIMARY KEY (inv#, ocode) 
, CONSTRAINT fkinvoption_inv# FOREIGN KEY (inv#) REFERENCES saleinvoice(inv#) 
, CONSTRAINT fkinvoption_ocode FOREIGN KEY (ocode) REFERENCES options(ocode)
);

CREATE TABLE serviceinvoice
(servinv# CHAR(5) 
, servdate DATE 
, cname CHAR(20)
, serial# CHAR(8) 
, partscost NUMBER(7,2)
, laborcost NUMBER(7,2)
, tax NUMBER(6,2)
, totalcost NUMBER(8,2)
, CONSTRAINT pkserviceinvoice_servinv# PRIMARY KEY (servinv#)
, CONSTRAINT fkserviceinvoice_cname FOREIGN KEY (cname) REFERENCES customer(cname)
, CONSTRAINT fkserviceinvoice_serial# FOREIGN KEY (serial#) REFERENCES car(serial#) 
, CONSTRAINT nlserviceinvoice_cname CHECK(cname IS NOT NULL)
, CONSTRAINT nlserviceinvoice_serial# CHECK(serial# IS NOT NULL) 
);

CREATE TABLE servicework
(servinv# CHAR(5) 
, workdescription CHAR(50) 
, CONSTRAINT pkservicework_servinv_workdesc PRIMARY KEY(servinv#, workdescription)
, CONSTRAINT fkservicework_servinv# FOREIGN KEY (servinv#) REFERENCES serviceinvoice(servinv#)
);

CREATE TABLE prospect
(cname CHAR(20) 
, make CHAR(10)
, model CHAR(8)
, cyear CHAR(4) 
, color CHAR(12)
, trim CHAR(16)
, ocode CHAR(4)
, CONSTRAINT uqprospect UNIQUE(cname,make,model,cyear,color,trim,ocode)
, CONSTRAINT fkprospect_cname FOREIGN KEY (cname) REFERENCES customer(cname)
, CONSTRAINT fkprospect_ocode FOREIGN KEY (ocode) REFERENCES options(ocode)
, CONSTRAINT nlprospect_make CHECK ((make IS NOT NULL) AND (make IN ('ACURA', 'MERCEDES','LAND ROVER','JAGUAR')))
);

CREATE TABLE employee
(empname CHAR(20) 
, startdate DATE 
, manager CHAR(20) 
, commissionrate NUMBER(2) 
, title CHAR(26) 
, CONSTRAINT pkemployee_empname PRIMARY KEY (empname)
, CONSTRAINT fkemployee_manager FOREIGN KEY (manager) REFERENCES employee(empname)
, CONSTRAINT nlemployee_startdate CHECK (startdate IS NOT NULL)
);
/*------Output Results- start ---------------------------
Table CUSTOMER created.
Table CAR created.
Table SALEINVOICE created.
Table OPTIONS created.
Table BASEOPTION created.
Table INVOPTION created.
Table SERVICEINVOICE created.
Table SERVICEWORK created.
Table PROSPECT created.
Table EMPLOYEE created.
--------Output Results - End ----------------------------*/
