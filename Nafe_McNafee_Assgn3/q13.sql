/*
File: q13
Author: Nafe McNafee
Description:  List the name, address and home phone of customers interested in any car 
              which is on the lot unsold. Match on make, model, year and color. 
              Include the matching criteria in the output.

*/ 
SELECT DISTINCT p.cname, cus.cstreet, cus.ccity, cus.cprov, cus.cpostal, cus.chphone, make, model, cyear, color   
  FROM s11.prospect p INNER JOIN s11.customer cus ON p.cname = cus.cname
 WHERE p.cname IN ((SELECT cname FROM s11.car) 
                    MINUS 
                    (SELECT cname FROM s11.saleinv))               
 ORDER BY cname ASC;

/*------Output Results- start ---------------------------
ALAA ATRI           	MERCEDES  	SLK350  	2007	BLACK       
DAMAN               	JAGUAR    	XF      	2016	WHITE       
HARUN               	MERCEDES  	GLX     	2015	WHITE       
JUSTIN BENTO        	ACURA     			
DAMAN               	MERCEDES  	C-CLASS 	2015	BLACK       
GARNER MCJANNETT    	ACURA     	TL      	2006	SILVER      
JAMES KESHAVARZI    	JAGUAR    			
JOANE WHITE         	MERCEDES  			
JOE                 	JAGUAR    	XJ40    	2006	SILVER      
MARIA VERGARA       	MERCEDES  			
AHMED KHATTAB       	JAGUAR    	RSX     	2006	RED         
ALAA ATRI           	MERCEDES  	SLK230  	2008	BLACK       
DIWASH POKHAREL     	ACURA     	A15MDX1 	2015	BLUE        
GARNER MCJANNETT    	MERCEDES  	SLR     	2008	YELLOW      
JAMES KESHAVARZI    	MERCEDES  	CLA     	2015	BLACK       
JASNOOR             	JAGUAR    	Luxury  	2010	White       
JONATHAN LEE        	MERCEDES  	MODEL   	2008	GREY        
PATRIK ROSE         	JAGUAR    	FTYPE   		
COISH               	ACURA     	SX      	2016	
GLADYS CALDERON     	JAGUAR    	COOL    	2009	BLACK       
JOHN DOE            	MERCEDES  	RS      	1980	GREEN       
ALI                 	ACURA     	RSX     		
AMANDEEP            	LAND ROVER	R70     	2006	GREEN       
AYY LMAO            	ACURA     		2010	BLUE        
BORIS AGUILAR       	JAGUAR    			
JASNOOR             	ACURA     	LMTD    	2011	Silver      
JEREMY SISON        	MERCEDES  	SLK500  	2005	SILVER      
JOSE CAMPOS         	MERCEDES  	MODEL   	2008	GREY        
MITCHELL PECK       	MERCEDES  	Mclaren 		
PATRIK ROSE         	JAGUAR    			
THOMAS NEVERS       	ACURA     			
BORIS AGUILAR       	ACURA     			
BORIS AGUILAR       	ACURA     	NSX     	2015	RED         
JONATHAN LEE        	ACURA     	MODEL   	2008	RED         
MARIA VERGARA       	JAGUAR    			BLACK       
ZAKEIR SAMSOODIN    	JAGUAR    			
AYY LMAO            	MERCEDES  		2015	BLACK       
MATHEW SLATER       	MERCEDES  			
ZAKEIR SAMSOODIN    	JAGUAR    	XJ      	1995	B           
ALI                 	ACURA     	MDX     		
CARL EDWARDS        	JAGUAR    	RMV     	2006	WHITE       
CARL EDWARDS        	ACURA     	TL      	2005	GREEN       
JAMES KESHAVARZI    	MERCEDES  			
JEREMY SISON        	ACURA     	EL      	2004	BLACK       
JOANE WHITE         	JAGUAR    			BLACK       
JOSE CAMPOS         	ACURA     	MODEL   	2008	RED         
JUSTIN BENTO        	MERCEDES  			
MATHEW SLATER       	ACURA     			
THOMAS NEVERS       	ACURA     	TLX     	2015	Silver      
--------Output Results - End ----------------------------*/