/*
File: q3
Author: Nafe McNafee
Description:  Show all customer information for people interested in blue Jaguars. 
*/ 
SELECT *
  FROM s11.customer 
 WHERE cname IN (SELECT DISTINCT cname
                              FROM s11.prospect 
                              WHERE UPPER(make) = 'JAGUAR' AND UPPER(color) = 'BLUE');
SELECT DISTINCT cus.* 
  FROM s11.customer cus INNER JOIN s11.prospect p ON cus.cname = p.cname 
 WHERE UPPER(make) = 'JAGUAR' AND UPPER(color) = 'BLUE';
/*------Output Results- start --------------------------------------------------------------------------------------------------
EDDY CROWDER        	44 MAIN ST E        	HAMILTON      	      ON                  	L8H5Z6    	(289)333-4444	(905)543-1123
CRAIG CARTER        	88 MC CRANEY ST     	OAKVILLE            	ON                  	L6H1H4    	(906)453-6543	(954)765-5435
GLADYS CALDERON     	LAKESHORE RD        	OAKVILLE            	ON                  	L6K 1E8   	(416)630-2020	(416)555-1020
DANNY HANDA         	WINDMILL BLVD.      	BRAMPTON            	ON                  	L6Y3G3    	(905)452-5845	(905)454-5586
JOANE WHITE         	101 SOME STREET     	SOMECITY            	ON                  	J1H 2P1   	(666)444-3333	(444)222-3333
KANISHK SAHNI       	NORTH AVENUE        	LONDON              	ON                  	L6Y3Z6    	(905)446-9087	
KASSANDRA FRIAS     	123 FAKE STREET     	KITCHENER           	ON                  	N2C1X1    	(123)321-1000	(000)000-0000
MARIA VERGARA       	100 SESAME STREET   	ANYCITY             	ON                  	J1H 2P1   	(555)444-3333	(555)222-3333
SUKHVEER.D          	23 Brisdale         	BRAMPTON            	ON                  	L6X3Y2    	(905)321-8376	(416)736-3694
REBECCA SONG        	FAKE STREET         	OAKVILLE            	ON                  	A1A 1A1   	(905)123-4567	(905)111-1111
SAM PENNELLS        	255 EGLINTON AVE    	MISSISSAUGA         	ON                  	L5M 48N   	(905)644-5768	(416)603-2333
VSEVOLOD            	109 Roxton road     	Oakville            	ON                  	L6H-6V3   	(813)8-      	(764)9-      
TYLER               	NEW STREET          	BURLINGTON          	ON                  	H0H0H0    	(905)555-5555	(905)555-5557
--------Output Results - End -----------------------------------------------------------------------------------------------------*/