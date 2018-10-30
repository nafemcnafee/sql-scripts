/*
File: q6
Author: Nafe McNafee
Description:  List the name and phone number of all customers who have purchased 
              a car from us but have never come in for servicing.
*/ 
SELECT DISTINCT cus.cname, chphone, cbphone 
  FROM s11.customer cus 
  JOIN saleinv si ON cus.cname = si.cname
 WHERE si.cname  NOT IN (SELECT DISTINCT cname FROM s11.servinv)
  ORDER BY cname ASC;  
 
/*------Output Results- start ---------------------------
ADAM PLEBIAN        	(905)654-0934	(416)999-1452
ADAM SMITH          	(352)125-3251	(352)723-2141
ADEL                	(647)221-1455	(647)114-4577
ADRIEN GIROUD       	(905)726-8129	(647)909-4040
ALBERTO MORENO      	(905)467-9432	(905)224-2249
ALEK NAHA           	(567)123-9876	(999)222-4444
ALEK NAHARIS        	(567)123-9876	(999)222-4444
ALEKSANDR KOMOV     	(416)858-0000	(905)858-5555
ALESSANDRO          	(416)555-5555	
ALEX JONES          	(585)395-6948	(585)553-9649
AMAN                	(647)437-6936	
AMRITPAL            	(647)870-1220	             
ANDREW              	(416)510-5417	(416)521-7129
ANDREW ADDLER       	(419)683-4958	(419)784-5849
ANDREW AUBERTIN12   	(905)845-6546	(905)685-7659
ANDREW CHANDLER     	(780)447-9088	
ANDREW NACEVSKI     		
ANGE JOLI           	(905)510-6571	(905)123-1234
ANGELA MERKIL       	(998)565-8694	(452)558-6589
ANMOL SANDHU        	(657)234-872 	(905)678-9876
ANN BITTNER         	(222)2-      	(222)2-      
ANNA AHONE          	(905)578-2314	(416)081-3902
ANNA JIANG          	(416)588-2516	(416)121-3472
ANNE BONNY          	(905)777-5555	(905)777-0000
ANSHITA             	(647)667-3612	
ANTHONY BACHMEIER   	(416)555-9683	
ANTONIO BANDERAS    	(416)546-0898	(416)343-9900
ANUKARAN            	(647)324-9874	(647)324-9874
ANUKARAN KATHURIA   	(647)521-4895	(235)897-0015
ARANPREET KAUR BRAR 	(987)654-3210	(905)234-5678
AROGYA              	(647)008-1111	(436)632-4356
ART VANDELAY        	(416)721-8379	(416)824-9998
ASDA                	(123)098-7654	(432)654-9685
AUSTIN AUGER        	(905)335-3233	(289)828-0925
AUSTIN BURNLEY      	(705)267-6883	(705)267-5892
BAILEY HAMMOND      	(905)333-1234	(416)654-7543
BALPREET            		(123)456-7895
BARNEY RUBBLE       	(523)645-3214	(523)235-2457
BART SIMPSON        	(666)6-      	(666)6-      
BARTHOLOMEW ROBERTS 	(905)777-3333	(905)777-4444
BATMAN              	(313)396-3030	(313)134-3030
BETTY               	(555)555-5522	(555)555-5523
BIG LONG JOHN       	(905)333-4444	(416)333-444 
BILL HILL           	(999)999-9999	(888)888-8888
BILL SINGH          	(905)222-2222	(647)222-2222
BILL TEST           	(111)111-1111	(333)333-3333
BILLY BOB           	(416)626-1111	
BILLY COSTIGAN      	(905)890-1234	(905)678-9012
BILLY JOEL          	(905)822-9043	(905)634-5573
BISHANDEEP SINGH    	(647)860-0564	(647)860-0538
BOB                 	(647)555-5555	
BOB DOE             	(289)555-1093	(905)543-1123
BOB HILL            	(555)999-9999	(777)888-8888
BOB JOE             	(905)432-4857	
BOB SMITH           	(123)456-789 	
BOB SMITHE          	(905)454-3797	(647)555-5555
BOBBY               	(905)845-9430	(905)845-9430
BOBBY1              	(905)845-9430	(905)845-9430
BRAD PITT           	(416)899-8455	(416)896-3456
BRADY MIX           	(416)443-4552	(416)656-8442
BRANDON JOE         	(905)416-7781	(647)871-1389
BRIAN PALMER        	(905)615-4274	(416)325-6911
BUGS BUNNY          	(905)416-8791	(647)456-1029
BURT REYNOLDS       	(987)654-3210	(789)456-0123
CARL EDSON          	(905)334-6786	(416)234-5677
CARMELO HARPE       	(905)674-8345	(416)647-3849
CASEY PALMER        	(647)895-4259	(416)525-1511
CATY                	(905)653-2314	(647)890-1243
CHARITH SENARATNE   	(905)529-5465	(905)921-2216
CHARLES JAVELONA    	(905)662-4426	(289)385-9284
CHARLES PAN         	(999)321-7890	(999)765-4321
CHIN CHONG CHA X    	(614)866-1140	(614)866-1140
CHIRAG ARORA        	(647)999-2222	(289)334-5555
CHRIS OSGOOD        	(313)396-3030	(313)134-3030
CHRISTIAN MUELLER   	(905)875-8813	(416)451-8080
CHUCK               	(905)616-1838	
CHUI KIM            	(905)123-3423	(123)123-4321
CLARA GREEN         	(250)722-2412	
CORNELIA SCHWANN    	(905)111-2222	(333)444-5555
CREST PHIPMAN       	(234)342-2344	
DAFFY DUCK          	(905)000-1111	(905)000-1112
DAISEY DUKE         	(555)867-4916	(555)967-8526
DAN DENNIS          	(905)652-2254	(416)858-5545
DAN MACIEL          	(345)942-9954	(343)342-4564
DANIEL JANG         		
DANIEL MACIEL       	(905)905-9055	(416)416-4166
DANIEL ROSALES      	(904)506-0798	(647)890-9876
DARREN DYER         	(905)656-2383	(905)234-3424
DARTH VADER JR.     	(905)666-6666	(508)999-9999
DAVID               	(905)616-1839	
DAVID BLAND         	(123)555-3777	(905)345-6765
DAVID HALL          		(607)883-5691
DAVID MILLSSS       	(416)798-1035	(416)798-1035
DAVID NYUGEN        	(416)882-0405	(416)802-5040
DAVID SMITHBOY      	(444)242-2222	(123)321-1111
DEMARE DEROZAN      		
DEXTER              	(416)555-5555	
DILBERT             	(987)987-9876	(777)777-7777
DIRK DIRKELAH       	(123)456-7890	(098)765-4321
DON DRAPER          	(647)478-5789	
EDDIE D. HEAD       	(647)648-9456	(905)789-5674
EDDIE THOMPSON      	(905)429-3223	(416)943-9323
EDNEYLON ANG        		
ELMER BEFUDD        	(905)845-9431	(647)456-1829
ERIC CARTMAN        	(999)9-      	(999)9-      
ERIC SHARMA         	(905)111-9999	
ERIKA MASTERS       		
ERWIN DIAZ          	(905)616-3421	(905)123-4562
ERZA SCRALET        	(123)456-7890	(123)456-7890
FARVA               	(905)662-5858	
FATIMA MUNIR        	(905)542-7656	(905)524-5346
FAYERUNNER          	(905)678-2985	(581)345-2849
FELICIA ROSE        	(905)335-0716	(647)891-3571
FETICHA             	(905)319-4555	(416)363-6636
FRANCIS UNDERWOOD   	(123)123-1221	(123)123-4123
FRED FREAK          		(416)450-4205
FRED JONES          	(647)222-4957	(905)412-7900
FRED SNOW           	(705)313-2317	(705)867-4094
FRED TURNER         	(416)639-0000	(416)555-1110
FRED XIE            	(905)812-1337	(647)235-1469
FREDERICK RALPH     	(419)765-4444	(419)345-5675
GAGANJOT SINGH      	(647)281-4413	(286)665-4410
GEORGE BROWN        	(905)785-1140	(416)800-3521
GEORGE FLANKER      	(905)633-7441	(289)772-4532
GHARDEEP            	(647)621-1053	
GOKU                	(213)141-123 	(905)599-9932
GURMIT KAUR         	(905)784-4593	(905)654-1543
GURPREET BHACHU     	(905)524-2454	
GUY                 	(123)098-7654	(432)654-9685
GUYBRUSH THREEPWOOD 	(905)555-0541	(289)555-9352
HAN SOLO            	(905)432-1234	(232)475-8323
HANNA               	(123)-       	(123)-       
HARAMBE WINSTON     	(647)666-6666	(416)777-7777
HARJOT VERMA        	(647)999-3333	(289)345-6666
HARMAN              	(647)832-1950	             
HARPREET SINGH      	(647)860-0528	(647)860-0587
HARRY               	(905)381-4852	(416)183-2345
HARSH SANKHYAN      		(647)771-9239
HASSAN              	(725)478-2675	
HEISEI POMPOCO      	(905)333-3333	(416)444-4444
HENRY               	(519)352-1047	(519)354-7519
HENRY MORGAN        	(905)777-1111	(905)777-2222
HERP                	(905)666-1223	(416)999-1234
IAN LEUNG           	(905)832-0192	(649)889-3011
IAN PAUL FREELEY    	(905)665-5411	(905)443-3221
IREN                	(611)000-222 	(416)229-6656
JACK BLACK          	(905)123-2311	(905)222-9877
JACK JOHNSON        	(416)892-1915	(123)451-31  
JACK TOM            	(647)223-4430	(643)343-2243
JACOB               	(647)456-1234	(647)456-1234
JAIDKA              	(416)123-1232	
JAINESH             	(456)456-1234	(789)456-7895
JAINESH KANT        	(905)733-8424	
JAKE CHOMSKY        	(200)200-2000	(020)020-0202
JAKE SHAKE          	(694)845-5566	(894)214-1674
JAMAL HOOK          	(647)637-2849	(647)849-3562
JAMES DOE           	(905)555-9432	(289)405-943 
JAMES FRENCH        	(905)274-9709	(647)991-6371
JAMES HOWLETT       	(905)456-7890	(975)086-3142
JAMES KELLING       	(323)232-5656	(999)388-1212
JAMES M             		
JAMES MENDEZ        	(929)675-1923	(345)213-9282
JAMES STONE         	(416)729-4183	(416)729-4287
JANE SMITH          	(416)234-5678	(289)555-5555
JANET JACKSON       	(905)873-8726	(416)389-4937
JAS.B               	(905)985-3259	(647)629-0498
JASMEET             	(289)242-6031	
JEBADIAH SPRINGFEILD	(547)454-4455	(123)212-2211
JEFFREY             	(905)229-4495	(905)920-1923
JEFFREY MCLEAN      	(905)229-4495	(905)920-1923
JEFFRY              	(416)759-5555	(985)857-5847
JESSE JAMES         	(416)892-1915	
JESSICA             	(905)985-3259	(647)629-0498
JESSICA MINNICH     	(250)423-4034	(778)344-7964
JESSICA WART        	(416)773-4527	(416)738-2038
JESSIE ROGERS       	(905)002-1213	(647)024-8982
JILL JACKS          	(416)345-6789	
JIM BOB             	(123)456-7890	(123)456-7890
JIM BOD             	(647)493-919 	(416)843-0333
JIM JOHNSON         	(693)386-2851	(693)529-3851
JIM LOVELL          	(905)569-1712	(647)687-5497
JIMMM               	(555)555-5555	
JIMMM1              	(555)555-5555	
JIMMY JOHN          	(905)465-3382	(647)112-1920
JIMMYBOY DAWG       	(519)444-4444	(222)222-2222
JOAN                	(905)346-2323	(416)352-6383
JOE BLACK           	(416)555-6523	(416)555-2377
JOE BOB             		
JOE JOHNSON         	(905)123-4321	(416)321-0987
JOE SCHMO           	(905)265-8787	(905)867-8582
JOHN                	(647)698-4556	
JOHN ADAMS          	(126)673-1346	(126)643-6331
JOHN LEUNG          	(292)222-    	(992)295-5   
JOHN MCDONALD       	(905)322-8900	(289)329-0033
JOHN MCGUIRE        	(647)432-7863	(781)456-0579
JOHN MCLANE         	(416)908-5866	(416)905-9933
JOHN PAN            	(345)678-9012	(456)789-0123
JOHN SMITH          	(289)343-1311	(289)260-0772
JOHNDOE             	(905)690-4545	(208)281-3445
JOHNNY LAW          	(416)555-6565	(416)897-9954
JONATHAN            	(905)456-6843	(416)693-1734
JONATHAN PEFHANY    	(647)767-0802	(905)542-7644
JONNY TEST          	(519)637-7242	
JOON STURN          		
JORDAN ORLANDO      	(123)123-3456	(234)123-4321
JOSELLE GO          	(647)855-2418	(905)223-4456
JOSEPH GORUN        	(435)647-8188	
JOSEPH HARTWELL     	(514)757-7392	(514)690-9892
JOSEPH LA VIE       	(123)976-1221	(123)123-8693
JOSH FLANNEL        	(905)313-3131	(905)232-3232
JUAN TOMASINO       	(905)339-0415	(416)231-9997
JUDE                	(905)846-726 	(647)667-465 
JUMPMAN             	(908)880-6395	
JUSTIN ALLEN        	(905)669-8013	(647)416-9996
KAPOOR              	(289)400-1196	(289)400-1196
KAPUR               	(289)400-1196	(289)400-1196
KAREN YOUNG         	(907)333-9282	
KATE PERRY          	(905)555-5554	(905)555-5557
KATHURIA            	(647)324-9874	(647)324-9874
KATHURIAA           	(647)324-9874	(647)324-9874
KEISHA WALLACE      		
KEN ISAACS          		
KEN SHAMROCK        	(322)555-0503	(919)455-0101
KENNETH ISAACS      		
KENNY               	(905)000-0911	(903)827-9988
KEVIN               	(845)487-1248	(456)285-1596
KIM MONTES          	(456)456-4567	(654)654-7654
KING RYAN           	(604)551-2245	(604)235-9771
KYLE HUNTER         	(647)787-9999	(289)345-5555
LAURA               	(416)510-4835	(416)521-4726
LAURA MONROSE       	(123)123-1543	(123)763-4123
LAUREN CHIN-YOU     	(416)216-5465	
LEIA ORGANA         	(905)815-5855	(416)357-1337
LENNY LEONARD       	(905)828-2828	(647)123-4567
LEO MANCILLAS       	(555)555-5555	(836)483-7849
LINK NOTZELDA       	(333)333-3333	(777)777-7777
LOGAN LALWAH        	(647)999-1111	(905)785-1111
LOVEBIRD DRAGON     		
LUCAS               	(416)800-3231	
LUCY EVERHEART      	(123)456-7890	(123)456-7890
LUKE SKYWALKER      	(905)321-2312	(416)742-9123
MACHO MAN           	(555)554-6689	(525)485-6595
MADHUMITA DAS       	(321)389-3423	(921)345-9765
MALCOLM MACAULAY    	(905)555-6458	
MALORY ARCHER       	(555)111-2222	(555)222-1111
MANDIP              	(647)608-0331	(416)659-4456
MARCUS ALONSO       	(905)484-3607	(905)444-1497
MARIA CARMEN        	(125)925-1221	(120)631-4123
MARK                	(905)510-2647	(519)380-0550
MARK ANG            	(905)567-1234	(647)333-444 
MARTIN CLARE        	(123)333-5555	(111)333-4444
MARY OLSEN          	(905)555-5555	(905)555-5556
MARY POPPINS        	(905)111-1212	(416)222-3333
MARY UEMATSU        	(416)444-4444	(647)666-6666
MATS HUMMELS        	(905)555-0143	(289)555-4781
MATT VILLY          	(905)123-9999	(647)500-1234
MICHAEL DAKIN       	(905)842-8400	
MICHAEL JACKSON     	(905)515-6544	
MICHAEL JORDAN      	(905)505-1923	(647)393-0087
MICHAEL JORDAN MJ   	(905)327-9744	(416)846-8820
MICHAEL LAMP        		(416)420-4200
MIKE                	(417)356-726 	(647)726-876 
MIKE CONLEY         	(416)518-6603	(415)276-6603
MILDRED PIERCE      	(905)111-5555	(333)555-7777
MISHA DRAZEVIC      	(416)500-2454	(555)123-4567
MONTY HACKER        	(901)001-1010	(101)111-0011
MOORE               	(709)758-2000	(709)758-2001
MSCOTT              	(905)678-3920	
MUGIE ANANDARAJAH   	(416)123-4567	
MUHAMMAD            		(647)123-2345
MUKHTAR AMAN        	(905)467-8432	(905)827-8410
MURLEY MAY          	(647)734-8573	(647)895-8065
NAEEM MUSSAJI       	(416)555-2222	(416)222-1111
NATALIE LI          	(416)973-4562	(905)656-8462
NIKHIL              	(289)952-3805	(289)952-3806
NISARG PATEL        		
OBAID G             	(905)789-4567	(905)456-4567
OLUWABIYI           	(840)627-1923	(840)895-1723
OMAR ALI            	(905)345-2913	(647)327-9325
OSAMA               	(647)887-9778	(416)547-867 
PAM                 	(647)123-1234	(647)123-1234
PATRICK DENNIS      	(519)444-4444	(222)222-2222
PATRICK GREENE      	(647)338-4441	(289)400-7099
PATRICK STEVENSON   	(905)373-3817	(416)612-4582
PAUL JASEK          	(905)592-1934	
PETER ANDERSON      	(416)785-4567	(905)653-1111
PETER GRIFFIN       	(444)4-      	(444)4-      
PETER PAN           	(905)331-3176	(905)331-5596
PHILIP J FRY        	(333)555-5656	(444)555-5656
POI POI             		
POOR GAL            		
POPEYE              	(987)654-3210	(369)852-7411
POTATO HEAD         	(905)234-567 	(416)456-7896
PUNEET              		(345)678-9512
QUANZHI HUANG       	(905)790-1234	(416)790-4321
QWERTY              	(905)123-1234	(905)234-2345
RADHA BHAMBWANI     	(905)736-5879	
RAFAEL BATTESTI RB  	(647)859-9934	(905)869-4567
RAGANJOT SINGH      	(647)281-4445	(286)665-4434
RANDY LAHEY         	(172)789-1236	(264)713-4367
REINHARD KARP       	(519)881-4098	(905)209-8664
RETEP               	(416)789-1011	
RIAZ                		(647)333-2345
RICARDO ML          	(123)123-1221	(123)123-4123
RICH GUY            	(123)456-7890	
RICHARD SIMMONS     	(135)246-7980	(111)111-1111
RICHARD THOMAS      	(647)999-3333	(289)345-6666
RICK GARDENER       	(416)882-1595	
ROB BAK             	(905)224-0715	(416)221-9787
ROB MARKHAM         	(905)339-0415	(416)231-9997
ROBERT              	(905)123-4118	(416)959-1234
ROBERT GARCIA       	(647)321-6972	(416)198-7726
ROGER STERLING      	(416)721-4852	
RON SWANSON         	(123)456-7891	(111)111-1111
RONAL DIEP          	(519)824-5160	(647)388-3437
RONALDO NAZARIO RN  	(905)098-2376	
RYAN                	(905)911-9119	(519)967-8324
RYAN CHANG          	(905)432-1145	(416)314-7844
SABEEH SHAH         	(905)916-1479	(647)607-4013
SABRINA ARAUJO      	(416)402-7280	(N/A)-       
SAKSHI KAPOOR       	(654)789-1230	(289)985-6621
SALLY HANSEN        	(905)838-3828	(416)283-8382
SAM                 	(905)234-8475	(416)859-4859
SAM ADAMS           	(905)123-1234	
SAM LATTER          	(905)819-2347	(416)590-3547
SAM SMITH           	(905)111-4557	(905)122-1222
SAM WINCHESTER      	(905)855-5055	
SAMANTHA JONES      		(123)456-7890
SAMUEL REEES        	(666)666-4621	(777)444-8759
SANTA CLAUS         	(905)392-8382	(416)392-8382
SARA CALVER         	(416)823-5555	(647)888-1223
SEAN KANE           	(416)999-9999	
SEON HAN            	(443)576-5413	(546)788-7653
SEONG HAN           	(443)576-5412	(546)788-7654
SHABAZ SINGH        	(647)345-6668	(905)678-2345
SHAWN ABBOTT        	(519)631-2274	(555)595-3314
SHAWN WATOSAN       	(519)789-3254	(555)556-6655
SHERLOCK HOLMES     	(905)452-6542	
SHERRY WINE         	(416)818-8983	(416)456-4264
SILVANA             	(905)555-9432	(289)405-943 
SIMER               	(647)456-7896	
SIMERPAL            	(647)689-5656	
SIMMRAN KAUR        	(647)787-9999	(289)345-5555
STEVE AUSTIN        	(905)862-4293	(416)827-8524
STEVEN              	(905)616-1837	
STREETLAMP LEMOOSE  	(340)958-2038	(348)923-0942
SUHAVI              	(647)729-1990	
SUKHVEER            	(905)321-8376	(416)736-3694
SUNITA              	(647)677-8582	
SUSHANT KATHURIA    	(647)647-6470	(289)987-5640
TAKUTA              	(905)592-1244	(289)675-2765
TAMAKI SUOU         	(905)555-2834	(289)555-7104
TERRY CREWS         	(905)833-9201	(416)322-8390
TEST ONE            	(123)123-1234	(123)123-1234
THOMAS IRWIN        	(905)827-2207	(905)334-6633
TIM                 	(416)876-8765	(416)876-2853
TIM FAKE            	(226)868-2354	(519)716-5194
TOBIAS EATON        	(905)123-456 	(905)444-4444
TOBY BARKER         	(905)690-0683	(905)690-1234
TOM KING            	(905)378-2293	(647)889-1239
TONY MONTANA        	(905)795-5646	(416)564-5545
TREVOR DANGELO      	(905)343-4467	(416)543-1234
TUPAC               	(647)223-3444	(647)334-4556
TUPAC SHAKUR        	(905)453-5633	(647)535-6578
UMAYR               	(905)450-9542	(416)824-6518
USMAN AVIL          	(905)888-7777	
VAISH PRASAD        	(289)981-0633	(905)212-6985
WENDY PAN           	(905)331-3176	(905)331-5596
WESAM               	(905)854-3295	(416)824-6502
WILLIAM ANDERS      	(905)555-1424	(416)789-2131
WILLIAM SMITH       	(905)541-1125	(647)639-0010
WILLIAM VALLEAU     	(905)796-7293	(416)598-8567
WILLIAM ZIELER      	(905)315-6790	(647)823-8246
WILLIS DEROSE       	(532)255-9884	
WILMA FLINSTONE     	(523)856-7895	(617)396-9863
XANDER BOURG        	(519)875-2123	(519)711-1999
YASH ARISHBHAI PATEL		
YOGI BEAR           	(905)213-3334	(905)232-5646
YOSHIKO OKAMOTO     	(905)529-5465	(905)921-2216
ZARA FREEMAN        	(416)581-7488	
ZHIXUAN             	(111)222-3333	(222)333-4444       	     	
--------Output Results - End ----------------------------*/