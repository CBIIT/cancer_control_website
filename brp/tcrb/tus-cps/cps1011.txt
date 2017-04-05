Options Linesize=140 pagesize=62;
/********************************************************************************/;
/* Program: cps1011.sas                                                         */;
/*    Date: April 2013                                                          */;
/*                                                                              */;
/* Purpose: SAS program to create permanent SAS data sets from the 2010 and 2011*/;
/*          survey data.  The program creates one permanent data set for each   */;
/*          survey.(May 2010, August 2010 and January 2011)                     */;
/*                                                                              */;
/*   Notes: The program is set up to read and write the data to/from the        */;
/*          'data' subdirectory.  The Filename and Libname statements may need  */;
/*          to be modified to match where the data are stored.                  */;
/*                                                                              */;
/* Modifications                                                                */;
/********************************************************************************/;
Filename CPSMAY10 "data\may10pub.dat" lrecl=1636;
Filename CPSAUG10 "data\aug10pub.dat" lrecl=1636;
Filename CPSJAN11 "data\jan11pub.dat" lrecl=1636;
Libname  CPS "data\.";

%Macro TUSCPS(Survey);
  Data CPS.CPS&Survey;
    Infile CPS&Survey Missover;
    Input @0001 HRHHID   $Char15.
          @0016 HRMONTH  2.
          @0018 HRYEAR4  4.
          @0022 HURESPLI 2.
          @0024 HUFINAL  3.
          @0027 HUSPNISH 2.
          @0029 HETENURE 2.
          @0031 HEHOUSUT 2.
          @0033 HETELHHD 2.
          @0035 HETELAVL 2.
          @0037 HEPHONEO 2.
          @0039 HEFAMINC 2.
          @0041 HUTYPEA  2.
          @0043 HUTYPB   2.
          @0045 HUTYPC   2.
          @0047 HWHHWGT  10.
          @0057 HRINTSTA 2.
          @0059 HRNUMHOU 2.
          @0061 HRHTYPE  2.
          @0063 HRMIS    2.
          @0065 HUINTTYP 2.
          @0067 HUPRSCNT 2.
          @0069 HRLONGLK 2.
          @0071 HRHHID2  $Char5.
          @0079 HUBUS    2.
          @0081 (HUBUSL1-HUBUSL4) (2.)
          @0089 GEREG    2.
          @0091 GESTCEN  2.
          @0093 GESTFIPS 2.
          @0096 GTCBSA   $Char5.
          @0101 GTCO     $Char3.
          @0104 GTCBSAST 1.
          @0105 GTMETSTA 1.
          @0106 GTINDVPC 1.
          @0107 GTCBSASZ 1.
          @0108 GTCSA    $Char3.
          @0116 PUPELIG  2. 
          @0118 PERRP    2.
          @0120 PEPARENT 2.
          @0122 PEAGE    2.
          @0124 PRTFAge  1.
          @0125 PEMARITL 2.
          @0127 PESPOUSE 2.
          @0129 PESEX    2.
          @0131 PEAFEVER 2.
          @0135 PEAFNOW  2.
          @0137 PEEDUCA  2.
          @0139 PTDTRACE 2. 
          @0141 PRDTHSP  2.
          @0143 PUCHINHH 2.
          @0147 PULINENO 2.
          @0151 PRFAMNUM 2.
          @0153 PRFAMREL 2.
          @0155 PRFAMTYP 2.
          @0157 PEHSPNON 2.
          @0159 PRMARSTA 2.
          @0161 PRPERTYP 2.
          @0163 PENATVTY 3.
          @0166 PEMNTVTY 3.
          @0169 PEFNTVTY 3.
          @0172 PRCITSHP 2.
          @0174 PRCITFLG 2.
          @0176 PRINUSYR 2.
          @0178 PUSLFPRX 2.
          @0180 PEMLR    2. 
          @0182 PUWK     2.
          @0184 PUBUS1   2.
          @0186 PUBUS2OT 2.
          @0188 (PUBUSCK1-PUBUSCK4) (2.)
          @0196 PURETOT  2.
          @0198 PUDIS    2.
          @0200 PERET1   2.
          @0202 (PUDIS1-PUDIS2) (2.)
          @0206 PUABSOT  2.
          @0208 PULAY    2.
          @0210 PEABSRSN 2.
          @0212 PEABSPDO 2.
          @0214 PEMJOT   2.
          @0216 PEMJNUM  2.
          @0218 (PEHRUSL1-PEHRUSL2) (2.)
          @0222 PEHRFTPT 2.
          @0224 PEHRUSLT 3.
          @0227 PEHRWANT 2.
          @0229 (PEHRRSN1-PEHRRSN3) (2.)
          @0235 (PUHROFF1-PUHROFF2) (2.)
          @0239 (PUHROT1-PUHROT2) (2.)
          @0243 (PEHRACT1-PEHRACT2) (2.)
          @0247 PEHRACTT 3.
          @0250 PEHRAVL  2.
          @0257 (PUHRCK1-PUHRCK7) (2.)
          @0271 PUHRCK12 2.
          @0273 PULAYDT  2.
          @0275 PULAY6M  2.
          @0277 PELAYAVL 2.
          @0279 PULAYAVR 2.
          @0281 PELAYLK  2.
          @0283 PELAYDUR 3.
          @0286 PELAYFTO 2.
          @0288 (PULAYCK1-PULAYCK3) (2.)
          @0294 PULK     2.
          @0296 PELKM1   2.
          @0298 (PULKM2-PULKM6) (2.)
          @0308 (PULKDK1-PULKDK6) (2.)
          @0320 (PULKPS1-PULKPS6) (2.)
          @0332 PELKAVL  2.
          @0334 PULKAVR  2.
          @0336 PELKLL1O 2. 
          @0338 PELKLL2O 2. 
          @0340 PELKLWO  2.
          @0342 PELKDUR  3.
          @0345 PELKFTO  2.
          @0347 PEDWWNTO 2.
          @0349 PEDWRSN  2.
          @0351 PEDWLKO  2.
          @0353 PEDWWK   2.
          @0355 PEDW4WK  2.
          @0357 PEDWLKWK 2.
          @0359 PEDWAVL  2.
          @0361 PEDWAVR  2.
          @0363 (PUDWCK1-PUDWCK5) (2.)
          @0373 PEJHWKO  2.
          @0375 PUJHDP1O 2.
          @0377 PEJHRSN  2.
          @0379 PEJHWANT 2.
          @0381 (PUJHCK1-PUJHCK2) (2.)
          @0385 PRABSREA 2.
          @0387 PRCIVLF  2.
          @0389 PRDISC   2.
          @0391 PREMPHRS 2.
          @0393 PREMPNOT 2.
          @0395 PREXPLF  2.
          @0397 PRFTLF   2.
          @0399 PRHRUSL  2.
          @0401 PRJOBSEA 2.
          @0403 PRPTHRS  2.
          @0405 PRPTREA  2.
          @0407 PRUNEDUR 3.
          @0412 PRUNTYPE 2.
          @0414 PRWKSCH  2.
          @0416 PRWKSTAT 2.
          @0418 PRWNTJOB 2.
          @0420 (PUJHCK3-PUJHCK5) (2.)        
          @0426 (PUIODP1-PUIODP3) (2.)
          @0432 PEIO1COW 2.
          @0434 PUIO1MFG 2.
          @0442 PEIO2COW 2.
          @0444 PUIO2MFG 2.
          @0452 (PUIOCK1-PUIOCK3) (2.)
          @0458 PRIOELG  2.
          @0460 PRAGNA   2.
          @0462 (PRCOW1-PRCOW2) (2.)
          @0466 PRCOWPG  2.
          @0468 (PRDTCOW1-PRDTCOW2) (2.)
          @0472 (PRDTIND1-PRDTIND2) (2.)
          @0476 (PRDTOCC1-PRDTOCC2) (2.)
          @0480 PREMP    2.
          @0482 (PRMJIND1-PRMJIND2) (2.)
          @0486 (PRMJOCC1-PRMJOCC2) (2.)
          @0490 PRMJOCGR 2.
          @0492 PRNAGPWS 2.
          @0494 PRNAGWS  2.
          @0496 PRSJMJ   2.
          @0498 PRERELG  2.
          @0500 PEERNUOT 2.
          @0502 PEERNPER 2.
          @0504 PEERNRT  2.
          @0506 PEERNHRY 2.
          @0508 PUERNH1C 4.
          @0512 PEERNH2  4.
          @0516 PEERNH1O 4.
          @0520 PRERNHLY 4.
          @0524 PTHR     1.
          @0525 PEERNHRO 2.
          @0527 PRERNWA  8.
          @0535 PTWK     1.
          @0540 PEERN    8.
          @0548 PUERN2   8.
          @0556 PTOT     1.
          @0559 PEERNWKP 2.
          @0561 PEERNLAB 2.
          @0563 PEERNCOV 2.
          @0565 PENLFJH  2.
          @0567 PENLFRET 2.
          @0569 PENLFACT 2.
          @0571 (PUNLFCK1-PUNLFCK2) (2.)
          @0575 PESCHENR 2.
          @0577 PESCHFT  2.
          @0579 PESCHLVL 2.
          @0581 PRNLFSCH 2.
          @0583 PWFMWGT  10.
          @0593 PWLGWGT  10.
          @0603 PWORWGT  10.
          @0613 PWSSWGT  10.
          @0623 PWVETWGT 10.
          @0633 PRCHLD   2.
          @0635 PRNMCHLD 2.
          @0639 PRWERNAL 2.
          @0641 PRHERNAL 2.
          @0643 HXTENURE 2.
          @0645 HXHOUSUT 2.
          @0647 HXTELHHD 2.
          @0649 HXTELAVL 2.
          @0651 HXPHONEO 2.
          @0653 PXINUSYR 2. 
          @0655 PXRRP    2. 
          @0657 PXPARENT 2. 
          @0659 PXAGE    2. 
          @0661 PXMARITL 2. 
          @0663 PXSPOUSE 2. 
          @0665 PXSEX    2. 
          @0667 PXAFWHN1 2. 
          @0669 PXAFNOW  2. 
          @0671 PXEDUCA  2. 
          @0673 PXRACE1  2.         
          @0675 PXNATVTY 2. 
          @0677 PXMNTVTY 2. 
          @0679 PXFNTVTY 2. 
          @0683 PXHSPNON 2. 
          @0685 PXMLR    2. 
          @0687 PXRET1   2. 
          @0689 PXABSRSN 2. 
          @0691 PXABSPDO 2. 
          @0693 PXMJOT   2. 
          @0695 PXMJNUM  2. 
          @0697 (PXHRUSL1-PXHRUSL2) (2.)
          @0701 PXHRFTPT 2. 
          @0703 PXHRUSLT 2. 
          @0705 PXHRWANT 2. 
          @0707 (PXHRRSN1-PXHRRSN2) (2.)
          @0711 (PXHRACT1-PXHRACT2) (2.) 
          @0715 PXHRACTT 2. 
          @0717 PXHRRSN3 2. 
          @0719 PXHRAVL  2.        
          @0721 PXLAYAVL 2. 
          @0723 PXLAYLK  2. 
          @0725 PXLAYDUR 2. 
          @0727 PXLAYFTO 2. 
          @0729 PXLKM1   2. 
          @0731 PXLKAVL  2. 
          @0733 PXLKLL1O 2. 
          @0735 PXLKLL2O 2. 
          @0737 PXLKLWO  2. 
          @0739 PXLKDUR  2. 
          @0741 PXLKFTO  2. 
          @0743 PXDWWNTO 2. 
          @0745 PXDWRSN  2. 
          @0747 PXDWLKO  2. 
          @0749 PXDWWK   2. 
          @0751 PXDW4WK  2. 
          @0753 PXDWLKWK 2. 
          @0755 PXDWAVL  2. 
          @0757 PXDWAVR  2. 
          @0759 PXJHWKO  2. 
          @0761 PXJHRSN  2. 
          @0763 PXJHWANT 2. 
          @0765 PXIO1COW 2.
          @0767 PXIO1ICD 2. 
          @0769 PXIO1OCD 2. 
          @0771 PXIO2COW 2. 
          @0773 PXIO2ICD 2. 
          @0775 PXIO2OCD 2. 
          @0777 PXERNUOT 2. 
          @0779 PXERNPER 2. 
          @0781 PXERNH1O 2. 
          @0783 PXERNHRO 2. 
          @0785 PXERN    2. 
          @0791 PXERNWKP 2. 
          @0793 PXERNRT  2. 
          @0795 PXERNHRY 2. 
          @0797 PXERNH2  2. 
          @0799 PXERNLAB 2. 
          @0801 PXERNCOV 2.  
          @0803 PXNLFJH  2. 
          @0805 PXNLFRET 2. 
          @0807 PXNLFACT 2. 
          @0809 PXSCHENR 2. 
          @0811 PXSCHFT  2. 
          @0813 PXSCHLVL 2.
          @0815 QstNum   5.
          @0820 OccurNum 2.
          @0822 PEDIPGED 2.
          @0824 PEHGCOMP 2.
          @0826 PECYC    2.
          @0828 PEGRPROF 2.
          @0830 PEGR6COR 2.
          @0832 PEMS123  2.
          @0834 PXDIPGED 2.
          @0836 PXHGCOMP 2.
          @0838 PXCYC    2.
          @0840 PXGRPROF 2.
          @0842 PXGR6COR 2.
          @0844 PXMS123  2.
          @0846 PWCMPWGT 10.
          @0856 PEIO1ICD 4.
          @0860 PEIO1OCD 4.
          @0864 PEIO2ICD 4.
          @0868 PEIO2OCD 4.
          @0872 (PRIMIND1-PRIMIND2) (2.)
          @0876 (PEAFWHN1-PEAFWHN4) (2.)        
          @0884 PXAFEVER 2.
          @0886 PELNDAD  2.
          @0888 PELNMOM  2.
          @0890 PEDADTYP 2.
          @0892 PEMOMTYP 2.
          @0894 PECOHAB  2.
          @0896 PXLNDAD  2.
          @0898 PXLNMOM  2.
          @0900 PXDADTYP 2.
          @0902 PXMOMTYP 2.
          @0904 PXCOHAB  2.  
          @0906 PEDISEAR 2.
          @0908 PEDISEYE 2.     
          @0910 PEDISREM 2.
          @0912 PEDISPHY 2.
          @0914 PEDISDRS 2.
          @0916 PEDISOUT 2.
          @0918 PRDISFLG 2.
          @0920 PXDISEAR 2.
          @0922 PXDISEYE 2.
          @0924 PXDISREM 2.
          @0926 PXDISPHY 2.
          @0928 PXDISDRS 2.
          @0930 PXDISOUT 2.
          @0932 HXFAMINC 2.                        
  
          @0951 PENXTPR  2.
          @0953 PENXTPR3 2.
          @0955 (PEA1-PEA2) (2.)
          @0959 PEA2A    2.
          @0961 PRA2B1   3.
          @0964 PRA2C1   3.
          @0967 PEA3     2.
          @0969 PTB1     2.
          @0971 PEB1a    2.
          @0973 PEB2     2.
          @0975 (PEB2A1-PEB2A4) (2.)
          @0983 PEB5aNum 2.
          @0985 PEB5aUnt 2.
          @0987 PEB5b    2.
          @0989 PEB5c    2.        
          @0991 PEBA6A   2.
          @0993 PEB6a    2.
          @0995 PEB6b    4.        
          @0999 PEB6c    5.
          @1004 PEB6d1   2.
          @1006 PEB6d2   $Char2.
          @1008 PEB6d3   2.
          @1010 PEB6dOth 2.
          @1012 PEB6e1   2.
          @1014 PEB6e2   3.
          @1017 PEB6e31  2.
          @1019 PRB6e32a $Char3.
          @1022 PEB7a    2.
          @1024 PEB7b    2.
          @1026 PRB7bSp1 $Char3.
          @1029 PEB7c    2.
          @1031 PEB7c2   2.
          @1033 PEB7c3   2.
          @1035 PTB7d    2.
          @1037 PEB8     2.
          @1039 PTB9     2.
          @1041 PEB10a   2.
          @1043 PTB10b   2.
          @1045 PEB11    2.
          @1047 PEC1     2.
          @1049 PEC1i    2.
          @1051 PTC1a    2.
          @1053 PEC2     2.
          @1055 (PEC2a1-PEC2a4) (2.)
          @1063 PEC5aNum 2.
          @1065 PEC5aUnt 2.
          @1067 PEC5b    2.
          @1069 PEC5c    2.        
          @1071 PECA6A   2.
          @1073 PEC6a    2.
          @1075 PEC6b    4.
          @1079 PEC6c    5.
          @1084 PEC6d1   2.
          @1086 PEC6d21  $Char2.
          @1088 PEC6d3   2.
          @1090 PEC6dOth 2.
          @1092 PEC6e1   2.
          @1094 PEC6e2   3.
          @1097 PEC6e31  2.
          @1099 PRC6e32a $Char3.
          @1102 PEC7a    2.
          @1104 PEC7a2   2.
          @1106 PEC7a3   2.
          @1108 PRC7a3S1 $Char3.
          @1111 PEC7d    2.
          @1113 PEC7d2   2.
          @1115 PEC7d3   2.
          @1117 PTC7e    2.
          @1119 PTC7f    2.
          @1121 PEC8     2.
          @1123 PTC9     2.
          @1125 PEC10a   2.
          @1127 PTC10b   2.
          @1129 PEC11    2.        
          @1131 PEDa     2.
          @1133 PEDb     2.
          @1135 PED1R    2.
          @1137 PED3     2.
          @1139 PED3b    2.
          @1141 PED4Num  3.
          @1144 PED4Unt  2.
          @1146 PED4b    2.
          @1148 PED4cMon 2.
          @1150 PED4cDay 2.
          @1152 PED4cYr  4.
          @1156 PED5     2.        
          @1158 PED6Num  3.
          @1161 PED6Unt  2.
          @1163 PED6b    2.
          @1165 PED7R    2.
          @1167 PED8R    2.        
          @1169 (PEE1a1-PEE1a3) (2.)        
          @1175 PEE1abN1 2.
          @1177 PEE1abU1 2.        
          @1179 PEE1a7a  2.
          @1181 PEE1a7b  2.
          @1183 PEE1a7c  2.
          @1185 PEE1acN1 2.       
          @1187 PEE1acU1 2.
          @1189 (PEE1b1-PEE1b7) (2.)
          @1203 PEE1b7a  2.
          @1205 (PEE1c1-PEE1c2) (2.)
          @1209 PEE1c2b  2.
          @1211 PEE1c3   2.        
          @1213 PEE1c3b  2.           
          @1215 PEE1c3c  2.
          @1217 PEE1c4   2.
          @1219 PEE1d    2.                                
          @1221 PEE1e    2.        
          @1223 PEF1a    2.
          @1225 PEF1b    2.
          @1227 (PEF1c1-PEF1c5) (2.)
          @1237 PEF2a    2.
          @1239 PEF2b    2.
          @1241 (PEF2c1-PEF2c5) (2.)
          @1251 (PEG1-PEG4) (2.)        
          @1259 PEH1Num  2.
          @1261 PEH1Unt  2.
          @1263 PEH2     2.
          @1265 PEH2a    2.
          @1267 PEH2b    2.
          @1269 PRH2bSp1 $Char3.
          @1272 PEH5     2.
          @1274 PTH5a    2.
          @1276 PTH5b    2.
          @1278 PEH6     2.
          @1280 PTH6a    2.
          @1282 PEH6b    2.
          @1284 PTH6c    2.
          @1286 PEH6ci   2.
          @1288 PEH6c2   2.
          @1290 (PEH6c31-PEH6c34) (2.)        
          @1298 (PEH6c4-PEH6c5) (2.)
          @1302 (PEH6d1-PEH6d3) (2.)        
          @1308 PEH6dNum 2.
          @1310 PEH6dUnt 2.
          @1312 PEH6d7a  2.        
          @1314 PEH6d7b  2.
          @1316 PEH6d7c  2.
          @1318 PEH6d7Nm 2.        
          @1320 PEH6d7Ut 2.
          @1322 (PEH6e1-PEH6e7) (2.)        
          @1336 PEH6e7a  2.        
          @1338 (PEH6fa1-PEH6fa2) (2.)
          @1342 PEH6fa2b 2.
          @1344 PEH6fa3  2.
          @1346 PEH6fa3b 2.
          @1348 PEH6fa3c 2.
          @1350 PEH6fa4  2.
          @1352 (PEH6f1-PEH6f2) (2.)
          @1356 PEH61a   2.        
          @1358 PEH61b   2.
          @1360 (PEH61c1-PEH61c5) (2.)
          @1370 PEH62a   2.        
          @1372 PEH62b   2.                
          @1374 (PEH62c1-PEH62c5) (2.)
          @1384 PEH8aNum 2.
          @1386 PEH8aUnt 2.
          @1388 PEH8b    2.
          @1390 PEH8c    2.        
          @1392 PEH11a   2.
          @1394 (PEH11b1-PEH11b4) (2.)
          @1402 PEH11c   2.
          @1404 PEH11d   2.
          @1406 (PEJ1a1-PEJ1a4) (2.)
          @1414 PEJ2a1   2.
          @1416 PEJ2b1   2.
          @1418 PEJ2a2   2.
          @1420 PEJ2b2   2.
          @1422 PEJ2a3   2.
          @1424 PEJ2b3   2.
          @1426 PEJ2a4   2.
          @1428 PEJ2b4   2.
          @1430 PEJa     2.
          @1432 PEJb     2.        
          @1434 PEJc     2.
          @1436 PEJcPro  2.   
          @1438 PEJcFlvr 2.   
          @1440 PEJd11   2.
          @1442 PEJd21   2.
          @1444 PEJd12   2.
          @1446 PEJd22   2.
          @1448 PEJd13   2.
          @1450 PEJd23   2.
          @1452 PEJd14   2.        
          @1454 PEJd24   2.
          @1456 (PEJd31-PEJd34) (2.)
          @1464 (PEJ3a1-PEJ3a2) (2.)
          @1468 PEJ3d    2.
          @1470 PEJ3e    2.
          @1472 (PEJ3f1-PEJ3f2) (2.)
          @1476 PEJ3g    2.
          @1478 PEJ3h    2.
          @1480 PEJ4     2.
          @1482 PEJ5Num  2.
          @1484 PEJ5Unt  2.
          @1486 PEJ6a    2.
          @1488 PEJ6bNum 2.
          @1490 PEJ6bUnt 2.
          @1492 (PEJ7a1-PEJ7a3) (2.)
          @1498 PEJ7a7a  2.
          @1500 PEJ7a7b  2.
          @1502 PEJ7a7c  2.
          @1504 (PEJ7b1-PEJ7b6) (2.)
          @1516 PEJ7b6b  2.
          @1518 PEJ7b6c  2.
          @1520 PEJ7b7   2.
          @1522 PEJ7b7a  2.
          @1524 (PEJ7c1-PEJ7c2) (2.)
          @1528 PEJ7c2a  2.
          @1530 PEJJ1    2.        
          @1532 PEK1a    2.
          @1534 PEK1b    2.
          @1536 PEK1b11  2.
          @1538 PEK1b2   2.        
          @1540 PEK1c1   $Char2.
          @1542 PEK2a    2.
          @1544 PEK3a    2.
          @1546 PEK3b    2.
          @1548 PEK3c    2.
          @1550 PEK3d    2.
          @1552 PEK4     2.
          @1554 PEK6c    2.
          @1556 PEK6f    2.
          @1558 PEK6g    2.
          @1560 PEK6h    2.
          @1562 PEK6h2   2.
          @1564 PEK7     2.                
          @1566 PRKST1   3.
          @1569 PES78    2.
          @1571 PESINTTP 2.
          @1573 PES81A   2.
          @1575 INTRVIEW 2. 
          @1577 HRMODE   2.
          @1579 SMOKSTAT 2.
          @1581 PRS35    2.
          @1583 PRS60    2.
          @1585 (PRS64-PRS66) (2.)
          @1591 PRJ3a1f  2.
          @1593 PRJ3df   2.
          @1595 PRJ3f1af 2.
          @1597 PRJ3f1f  2.
          @1599 PRJ3hf   2.                
          @1601 PRJ3gf   2.
          @1603 PRJ4f    2.
          @1605 PRJ5Numf 2.
          @1607 PRJ6af   2.
          @1609 PRJ6bNmf 2.
          @1611 PRJ7a1f  2.
          @1613 PRJ7b1f  2.                                  
          @1615 PRJ7c1f  2.
          @1617 PWNRWGT  10.
          @1627 PWSRWGT  10.;        
    HWHHWGT=HWHHWGT/10000;
    If PUERNH1C Not In (-3,-2,-1) Then PUERNH1C=PUERNH1C/100;
    If PEERNH2^=-1 Then PEERNH2=PEERNH2/100;
    If PEERNH1O Not In (-3,-2,-1) Then PEERNH1O=PEERNH1O/100;
    If PRERNHLY^=-1 Then PRERNHLY=PRERNHLY/100;      
    If PRERNWA^=-1 Then PRERNWA=PRERNWA/100;    
    If PEERN^=-1 Then PEERN=PEERN/100;      
    If PUERN2^=-1 Then PUERN2=PUERN2/100;      
    PWFMWGT=PWFMWGT/10000;
    PWLGWGT=PWLGWGT/10000; 
    PWORWGT=PWORWGT/10000;
    PWSSWGT=PWSSWGT/10000;
    PWVETWGT=PWVETWGT/10000;
    PWCMPWGT=PWCMPWGT/10000;        
    If PEB6B Not In (-9,-3,-2,-1) Then PEB6B=PEB6B/100;
    If PEB6C Not In (-9,-3,-2,-1) Then PEB6C=PEB6C/100;
    If PEB6E2 Not In (-9,-3,-2,-1) Then PEB6E2=PEB6E2/100;
    If PEC6B Not In (-9,-3,-2,-1) Then PEC6B=PEC6B/100;
    If PEC6C Not In (-9,-3,-2,-1) Then PEC6C=PEC6C/100;
    If PEC6E2 Not In (-9,-3,-2,-1) Then PEC6E2=PEC6E2/100;
    PWNRWgt=PWNRWgt/10000;       
    PWSRWgt=PWSRWgt/10000;
  
    Label HRHHID   = "Household identifier (part 1)"
          HRMONTH  = "Month of interview"
          HRYEAR4  = "Year of interview"
          HURESPLI = "Line number of the current respondent"
          HUFINAL  = "Final outcome code"
          HUSPNISH = "Is spanish the only language spoken by all members of this household who are 15 years of age or older?"
          HETENURE = "Are your living quarters..."
          HEHOUSUT = "Type of housing unit"
          HETELHHD = "Is there a telephone in this house/apartment? "
          HETELAVL = "Is there a telephone elsewhere on which people in this household can be contacted?"
          HEPHONEO = "Is a telephone interview acceptable?"
          HEFAMINC = "Family income"
          HUTYPEA  = "Type A non-interview reason"
          HUTYPB   = "Type B non-interview reason"
          HUTYPC   = "Type C non-interview reason"
          HWHHWGT  = "Household weight"
          HRINTSTA = "Interview status"
          HRNUMHOU = "Total number of persons living in the household (household members)"
          HRHTYPE  = "Household type"
          HRMIS    = "Month-in-sample"
          HUINTTYP = "Type of interview"
          HUPRSCNT = "Number of actual and attempted personal contacts"
          HRLONGLK = "Longitudinal link indicator"
          HRHHID2  = "Household identifier (part 2)"
          HUBUS    = "Does anyone in this household have a business or a farm?"
          HUBUSL1  = "Enter line number for hubus = 1"
          HUBUSL2  = "Enter line number for hubus = 1"
          HUBUSL3  = "Enter line number for hubus = 1"
          HUBUSL4  = "Enter line number for hubus = 1"
          GEREG    = "Region"
          GESTCEN  = "Census state code"
          GESTFIPS = "Federal information processing standards (FIPS) state code"
          GTCBSA   = "Metropolitan CBSA FIPS code"
          GTCO     = "FIPS county code"
          GTCBSAST = "Principal city/balance status"
          GTMETSTA = "Metropolitan status"
          GTINDVPC = "Individual principal city"
          GTCBSASZ = "Metropolitan area (CBSA) size"
          GTCSA    = "Consolidated statistical area (CSA) FIPS code"
          PUPELIG  = "Interview status of each person in the household"
          PERRP    = "Relationship to reference person"
          PEPARENT = "Line number of parent"
          PEAGE    = "Persons age as of the end of survey week"
          PRTFAGE  = "Top code flag for age"
          PEMARITL = "Marital status"
          PESPOUSE = "Line number of spouse"
          PESEX    = "Sex"
          PEAFEVER = "Did you ever serve on active duty in the U.S. armed forces?"
          PEAFNOW  = "Are you now in the armed forces"
          PEEDUCA  = "Highest level of school completed or degree received"
          PTDTRACE = "Race"
          PRDTHSP  = "Detailed Hispanic origin group"        
          PUCHINHH = "Change in household composition"
          PULINENO = "Person's line number"
          PRFAMNUM = "Family number recode"
          PRFAMREL = "Family relationship recode"
          PRFAMTYP = "Family type recode"
          PEHSPNON = "Hispanic or non-Hispanic"
          PRMARSTA = "Marital status based on armed forces participation"
          PRPERTYP = "Type of person record recode"
          PENATVTY = "Country of birth"
          PEMNTVTY = "Mother's country of birth"
          PEFNTVTY = "Father's country of birth"
          PRCITSHP = "Citizenship status"
          PRCITFLG = "Citizenship allocation flag"
          PRINUSYR = "Immigrant' s year of entry"
          PUSLFPRX = "Labor force information collected by self or proxy response"
          PEMLR    = "Monthly labor force recode"
          PUWK     = "Last week, did you do any work for (either) pay (or profit)?"
          PUBUS1   = "Last week, did you do any unpaid work in the family business or farm?"
          PUBUS2OT = "Do you receive any payments or profits from the business?"
          PUBUSCK1 = "Check item 1 filter for questions on unpaid work"
          PUBUSCK2 = "Check item 2 skips owners of family busines who did not work last week"
          PUBUSCK3 = "Check item 3"
          PUBUSCK4 = "Check item 4"
          PURETOT  = "Retirement status (last month you were reported to be retired, are you still retired this month?)"
          PUDIS    = "Disability status (last month you were reported to have a disability.) Does your disability continue to prevent you from doing any kind of work for the next 6 months?"
          PERET1   = "Do you currently want a job, either full or part-time?"
          PUDIS1   = "Does your disability prevent you from accepting any kind of work during the next six months?"
          PUDIS2   = "Do you have a disability that prevents you from accepting any kind of work during the next six months?"
          PUABSOT  = "Last week did you have a job either full or part-time?"
          PULAY    = "Last week, were you on layoff from a job?"
          PEABSRSN = "What is the main reason you were absent from work last week?"
          PEABSPDO = "Are you being paid by your employer for any of the time off last week?"
          PEMJOT   = "Do you have more than one job?"
          PEMJNUM  = "Altogether, how many jobs did you have?"
          PEHRUSL1 = "How many hours per week do you usually work at your main job?"
          PEHRUSL2 = "How many hours per week do you usually work at your other (job/jobs)?"
          PEHRFTPT = "Do you usually work 35 hours or more per week?"
          PEHRUSLT = "Sum of HRUSL1 and HRUSL2."
          PEHRWANT = "Do you want to work a full-time workweek of 35 hours or more per week?"
          PEHRRSN1 = "What is your main reason for working part-time?"
          PEHRRSN2 = "What is the main reason you do not want to work full-time?"
          PEHRRSN3 = "What is the main reason you worked less than 35 hours last week?"
          PUHROFF1 = "Last week, did you lose or take off any hours from your job, for any reason such as illness, slack work, vacation, or holiday?"
          PUHROFF2 = "How many hours did you take off?"
          PUHROT1  = "Last week, did you work any overtime or extra hours (at your main job) that you do not usually work?"
          PUHROT2  = "How many additional hours did you work?"
          PEHRACT1 = "Last week, how many hours did you actually work at your job?"
          PEHRACT2 = "Last week, how many hours did you actually work at your other (job/jobs)"
          PEHRACTT = "Sum of PEHRACT1 and PEHRACT2"
          PEHRAVL  = "Last week, could you have worked full-time if the hours had been available?"
          PUHRCK1  = "Check item 1"
          PUHRCK2  = "Check item 2 skips persons responding yes to HRFTPT out of PT series"
          PUHRCK3  = "Check item 3"
          PUHRCK4  = "Check item 4"
          PUHRCK5  = "Check item 5"
          PUHRCK6  = "Check item 6"
          PUHRCK7  = "Check item 7"
          PUHRCK12 = "Check item 12"
          PULAYDT  = "Has your employer given you a date to return to work?"
          PULAY6M  = "Have you been given any indication that you will be recalled to work within the next 6 months?"
          PELAYAVL = "Could you have returned to work last week if you had been recalled?"
          PULAYAVR = "Why is that?"
          PELAYLK  = "Even though you are to be called back to work, have you been looking for work during the last 4 weeks."
          PELAYDUR = "Duration of layoff"
          PELAYFTO = "FT/PT status of job from which sample person was on layoff from"
          PULAYCK1 = "Check item 1"
          PULAYCK2 = "Check item 2 screen for dependent layoff"
          PULAYCK3 = "Check item 3 filter for dependent I & O"
          PULK     = "Have you been doing anything to find work during the last 4 weeks?"
          PELKM1   = "What are all of the things you have done to find work during the last 4 weeks? (first method)"
          PULKM2   = "Anything else? (second method)"
          PULKM3   = "Anything else? (third method)"
          PULKM4   = "Anything else? (fourth method)"
          PULKM5   = "Anything else? (fifth method)"
          PULKM6   = "Anything else? (sixth method)"
          PULKDK1  = "You said you have been trying to find work. How did you go about looking? (first method)"
          PULKDK2  = "Anything else? (second method)"
          PULKDK3  = "Anything else? (third method)"
          PULKDK4  = "Anything else? (fourth method)"
          PULKDK5  = "Anything else? (fifth method)"
          PULKDK6  = "Anything else? (sixth method)"
          PULKPS1  = "Can you tell me more about what you did to search for work? (first method)"
          PULKPS2  = "Anything else? (second method)"
          PULKPS3  = "Anything else? (third method)"
          PULKPS4  = "Anything else? (fourth method)"
          PULKPS5  = "Anything else? (fifth method)"
          PULKPS6  = "Anything else? (sixth method)"
          PELKAVL  = "Last week, could you have started a job if one had been offered?"
          PULKAVR  = "Why is that?"
          PELKLL1O = "Before you started looking for work, what were you doing: working, going to school, or something else?"
          PELKLL2O = "Did you lose or quit that job, or was it a temporary job that ended?"
          PELKLWO  = "When last worked"
          PELKDUR  = "Duration of job seeking"
          PELKFTO  = "FT/PT status of jobseeker"
          PEDWWNTO = "Do you currently want a job, either full or part time?"
          PEDWRSN  = "What is the main reason you were not looking for work during the last 4 weeks?"
          PEDWLKO  = "Did you look for work at any time in the last 12 months"
          PEDWWK   = "Did you actually work at a job or business during the last 12 months?"
          PEDW4WK  = "Did you do any of this work during the last 4 weeks?"
          PEDWLKWK = "Since you left that job or business have you looked for work?"
          PEDWAVL  = "Last week, could you have started a job if one had been offered?"
          PEDWAVR  = "Why is that?"
          PUDWCK1  = "Screen for discouraged workers"
          PUDWCK2  = "Screen for disabled"
          PUDWCK3  = "Filter for retired"
          PUDWCK4  = "Filter for passive job seekers"
          PUDWCK5  = "Filter for passive job seekers"
          PEJHWKO  = "Have you worked at a job or business at any time during the past 12 months?"
          PUJHDP1O = "Did you do any of this work in the last 4 weeks?"
          PEJHRSN  = "What is the main reason you left your last job?"
          PEJHWANT = "Do you intend to look for work during the next 12 months?"
          PUJHCK1  = "Filter for outgoing rotations"
          PUJHCK2  = "Filter for persons going through the I and O series"
          PRABSREA = "Reason not at work and pay status"
          PRCIVLF  = "Civilian labor force"
          PRDISC   = "Discouraged worker recode"
          PREMPHRS = "Reason not at work or hours at work"
          PREMPNOT = "MLR - employed, unemployed, or NILF"
          PREXPLF  = "Experienced labor force employment"
          PRFTLF   = "Full time labor force" 
          PRHRUSL  = "Usual hours worked weekly"
          PRJOBSEA = "Job search recode"
          PRPTHRS  = "At work 1-34 by hours at work"
          PRPTREA  = "Detailed reason for part-time"
          PRUNEDUR = "Duration of unemployment for layoff and looking records"
          PRUNTYPE = "Reason for unemployment"
          PRWKSCH  = "Labor force by time worked or lost"
          PRWKSTAT = "Full/part-time work status"
          PRWNTJOB = "NILF recode - want a job or other NILF"
          PUJHCK3  = "Job history check item"
          PUJHCK4  = "Screen for dependent NILF"
          PUJHCK5  = "Screen for dependent NILF"
          PUIODP1  = "Last month, it was reported that you worked for (employer's name). Do still work for (employer's name) (at your main job)?"
          PUIODP2  = "Have the usual activities and duties of your job changed since last month?"
          PUIODP3  = "Last month you were reported as (a/an) (occupation) and your usual activities were (description). Is this an accurate description of your current job?"
          PEIO1COW = "Individual class of worker code on first job"
          PUIO1MFG = "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else?"
          PEIO2COW = "Individual class of worker on second job."
          PUIO2MFG = "Is this business or organization mainly manufacturing, retail trade, wholesale trade, or something else?"
          PUIOCK1  = "I & O check item 1 screen for dependent I and O"
          PUIOCK2  = "I & O check item 2 screen for previous months I and O cases"
          PUIOCK3  = "I & o check item 3"
          PRIOELG  = "Industry and occupation eligibility flag"
          PRAGNA   = "Agriculture/ non-agriculture industry"
          PRCOW1   = "Class of worker recode - job 1"
          PRCOW2   = "Class of worker recode - job 2"
          PRCOWPG  = "COW - private or government"
          PRDTCOW1 = "Detailed class of worker recode - job 1"
          PRDTCOW2 = "Detailed class of worker recode - job 2"
          PRDTIND1 = "Detailed industry recode - job 1"
          PRDTIND2 = "Detailed industry recode - job 2"
          PRDTOCC1 = "Detailed occupation recode - job 1"
          PRDTOCC2 = "Detailed occupation recode - job 2"
          PREMP    = "Employed persons (non-farm & non-private hhld) recode"
          PRMJIND1 = "Major industry recode - job 1"
          PRMJIND2 = "Major industry recode - job 2"
          PRMJOCC1 = "Major occupation recode - job 1"
          PRMJOCC2 = "Major occupation recode - job 2"
          PRMJOCGR = "Major occupation categories"
          PRNAGPWS = "Non-agriculture, private wage and salary workers recode"
          PRNAGWS  = "Non-agriculture wage and salary workers recode"
          PRSJMJ   = "Single/multiple jobholder"
          PRERELG  = "Earnings eligibility flag"
          PEERNUOT = "Do you usually receive overtime pay, tips, or commissions at your job?"
          PEERNPER = "Periodicity"
          PEERNRT  = "(Even though you told me it is easier to report your earnings (periodicity); Are you paid at an hourly rate on your (main/this) job?"
          PEERNHRY = "Hourly/nonhourly status"
          PUERNH1C = "What is your hourly rate of pay on this job, excluding overtime pay, tips or commission?"
          PEERNH2  = "(Excluding overtime pay, tips and commissions) what is your hourly rate of pay on your (main/this) job?"
          PEERNH1O = "Out variable for hourly rate of pay"
          PRERNHLY = "Recode for hourly rate"
          PTHR     = "Hourly pay - top code"
          PEERNHRO = "Usual hours"
          PRERNWA  = "Weekly earnings recode"
          PTWK     = "Weekly earnings - top code"
          PEERN    = "Calculated weekly overtime amount"
          PUERN2   = "Calculated weekly overtime amount"
          PTOT     = "Weekly overtime amount - top code"
          PEERNWKP = "How many weeks a year do you get paid for?"
          PEERNLAB = "On this job, are you a member of a labor union or of an employee association similar to a union?"
          PEERNCOV = "On this job are you covered by a union or employee association contract?"
          PENLFJH  = "When did you last work at a job or business?"
          PENLFRET = "Are you retired from a job or business?"
          PENLFACT = "What best describes your situation at this time? For example, are you disabled, ill, in school, taking care of house or family, or something else?"
          PUNLFCK1 = "Not in labor force check item - 1"
          PUNLFCK2 = "Not in labor force check item - 2"
          PESCHENR = "Last week, were you enrolled in a high school, college, or university?"
          PESCHFT  = "Are you enrolled in school as a full-time or part-time student?"
          PESCHLVL = "Would that be high school, college, or university?"
          PRNLFSCH = "NLF activity - in school or not in school"
          PWFMWGT  = "Family weight"
          PWLGWGT  = "Longitudinal weight" 
          PWORWGT  = "Outgoing rotation weight"
          PWSSWGT  = "Final weight"
          PWVETWGT = "Veterans weight"
          PRCHLD   = "Presence of own children < 18 years of age by selected age group"
          PRNMCHLD = "Number of own children < 18 years of age"
          PRWERNAL = "Allocation flag weekly earnings recode (PRERNWA)"
          PRHERNAL = "Allocation flag hourly earnings recode (PRERNHLY)"
          HXTENURE = "Allocation flag"
          HXHOUSUT = "Allocation flag"
          HXTELHHD = "Allocation flag"
          HXTELAVL = "Allocation flag"  
          HXPHONEO = "Allocation flag"                                        
          PXINUSYR = "Allocation flag"
          PXRRP    = "Allocation flag"
          PXPARENT = "Allocation flag"
          PXAGE    = "Allocation flag"
          PXMARITL = "Allocation flag"
          PXSPOUSE = "Allocation flag"
          PXSEX    = "Allocation flag"
          PXAFWHN1 = "Allocation flag"
          PXAFNOW  = "Allocation flag"
          PXEDUCA  = "Allocation flag"
          PXRACE1  = "Allocation flag"        
          PXNATVTY = "Allocation flag"
          PXMNTVTY = "Allocation flag"
          PXFNTVTY = "Allocation flag"
          PXHSPNON = "Allocation flag"
          PXMLR    = "Allocation flag"
          PXRET1   = "Allocation flag"
          PXABSRSN = "Allocation flag"
          PXABSPDO = "Allocation flag"
          PXMJOT   = "Allocation flag"
          PXMJNUM  = "Allocation flag"
          PXHRUSL1 = "Allocation flag"
          PXHRUSL2 = "Allocation flag"
          PXHRFTPT = "Allocation flag"
          PXHRUSLT = "Allocation flag"
          PXHRWANT = "Allocation flag"
          PXHRRSN1 = "Allocation flag"
          PXHRRSN2 = "Allocation flag"
          PXHRACT1 = "Allocation flag"
          PXHRACT2 = "Allocation flag"
          PXHRACTT = "Allocation flag"
          PXHRRSN3 = "Allocation flag"
          PXHRAVL  = "Allocation flag"        
          PXLAYAVL = "Allocation flag" 
          PXLAYLK  = "Allocation flag" 
          PXLAYDUR = "Allocation flag" 
          PXLAYFTO = "Allocation flag" 
          PXLKM1   = "Allocation flag" 
          PXLKAVL  = "Allocation flag" 
          PXLKLL1O = "Allocation flag" 
          PXLKLL2O = "Allocation flag" 
          PXLKLWO  = "Allocation flag" 
          PXLKDUR  = "Allocation flag" 
          PXLKFTO  = "Allocation flag" 
          PXDWWNTO = "Allocation flag" 
          PXDWRSN  = "Allocation flag" 
          PXDWLKO  = "Allocation flag" 
          PXDWWK   = "Allocation flag" 
          PXDW4WK  = "Allocation flag" 
          PXDWLKWK = "Allocation flag" 
          PXDWAVL  = "Allocation flag" 
          PXDWAVR  = "Allocation flag" 
          PXJHWKO  = "Allocation flag" 
          PXJHRSN  = "Allocation flag" 
          PXJHWANT = "Allocation flag" 
          PXIO1COW = "Allocation flag"
          PXIO1ICD = "Allocation flag" 
          PXIO1OCD = "Allocation flag" 
          PXIO2COW = "Allocation flag" 
          PXIO2ICD = "Allocation flag" 
          PXIO2OCD = "Allocation flag" 
          PXERNUOT = "Allocation flag" 
          PXERNPER = "Allocation flag" 
          PXERNH1O = "Allocation flag" 
          PXERNHRO = "Allocation flag" 
          PXERN    = "Allocation flag" 
          PXERNWKP = "Allocation flag" 
          PXERNRT  = "Allocation flag" 
          PXERNHRY = "Allocation flag" 
          PXERNH2  = "Allocation flag" 
          PXERNLAB = "Allocation flag" 
          PXERNCOV = "Allocation flag"  
          PXNLFJH  = "Allocation flag" 
          PXNLFRET = "Allocation flag" 
          PXNLFACT = "Allocation flag" 
          PXSCHENR = "Allocation flag" 
          PXSCHFT  = "Allocation flag" 
          PXSCHLVL = "Allocation flag"        
          QSTNUM   = "Unique household identifier."
          OCCURNUM = "Unique person identifier."
          PEDIPGED = "How did...get...'s high school diploma?"
          PEHGCOMP = "What was the highest grade of regular school...completed before receiving...'s GED?"
          PECYC    = "How many years of college credit has...completed?"
          PEGRPROF = "Since completing...bachelor's degree, have you taken any graduate or professional school courses for credit?"
          PEGR6COR = "Did...complete 6 or more graduate or professional school courses?"
          PEMS123  = "Was ... master's degree program a 1 year, 2 year, or 3 year program?"
          PXDIPGED = "Allocation flag"
          PXHGCOMP = "Allocation flag"
          PXCYC    = "Allocation flag"
          PXGRPROF = "Allocation flag"
          PXGR6COR = "Allocation flag"
          PXMS123  = "Allocation flag"
          PWCMPWGT = "Composited final weight. Used to create BLS's published labor force statistics"
          PEIO1ICD = "Industry code for primary job"
          PEIO1OCD = "Occupation code for primary job."
          PEIO2ICD = "Industry code for second job."
          PEIO2OCD = "Occupation code for second job."
          PRIMIND1 = "Intermediate industry recode (job 1)"
          PRIMIND2 = "Intermediate industry recode (job 2)"
          PEAFWHN1 = "When did you serve?"
          PEAFWHN2 = "When did you serve?"
          PEAFWHN3 = "When did you serve?"
          PEAFWHN4 = "When did you serve?"
          PXAFEVER = "Allocation flag"    
          PELNDAD  = "Line number of father"            
          PELNMOM  = "Line number of mother"      
          PEDADTYP = "Type of father" 
          PEMOMTYP = "Type of mother" 
          PECOHAB  = "Line number of cohabiting partner"
          PXLNDAD  = "Allocation flag"
          PXLNMOM  = "Allocation flag"
          PXDADTYP = "Allocation flag"
          PXMOMTYP = "Allocation flag"
          PXCOHAB  = "Allocation flag"
          PEDISEAR = "Is...deaf or does ...have serious difficulty hearing?"
          PEDISEYE = "Is...blind or does...have serious difficulty seeing even when wearing glasses?"
          PEDISREM = "Because of a physical, mental, or emotional condition, does...have serious difficulty concentrating, remembering, or making decisions?"
          PEDISPHY = "Does...have serious difficulty walking or climbing stairs?"
          PEDISDRS = "Does...have difficulty dressing or bathing?"
          PEDISOUT = "Because of a physical, mental, or emotional condition, does...have difficulty doing errands alone such as visiting a doctor’s office or shopping?"
          PRDISFLG = "Does this person have any of these disability conditions?"
          PXDISEAR = "Allocation flag"
          PXDISEYE = "Allocation flag"
          PXDISREM = "Allocation flag"
          PXDISPHY = "Allocation flag"
          PXDISDRS = "Allocation flag"
          PXDISOUT = "Allocation flag"        
          HXFAMINC = "Allocation flag"        
          
          PENXTPR = "Line number of person being interviewed"        
          PENXTPR3 = "Is this self or proxy?"
          PEA1     = "(Have/Has) (you/ name) smoked at least 100 cigarettes in (your/his/her) entire life? (FR NOTE: 100 CIGARETTES = APPROXIMATELY 5 PACKS)"
          PEA2     = "How old (were/was) (you/name) when (you/he/she) first started smoking cigarettes FAIRLY REGULARLY?"
          PEA2A    = "You said that (you/name) never smoked regularly. How old (were/was) (you/name) the first time (you/he/she) smoked part or all of a cigarette?"
          PRA2B1   = "In what state or country did (you/name) live when (you/he/she) started to smoke cigarettes fairly regularly?"
          PRA2C1   = "In what state or country did (you/name) live when (you/he/she) FIRST smoked part or all of a cigarette?"        
          PEA3     = "(Do/Does) (you/name) now smoke cigarettes every day, some days, or not at all?"        
          PTB1     = "On the average, about how many cigarettes do you now smoke each day?"        
          PEB1a    = "Would you say that, on average, you now smoke more or less than 20 cigarettes each day?"
          PEB2     = "Do you usually smoke menthol or non-menthol cigarettes?"
          PEB2A1   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEB2) cigarettes. Please answer yes or no for each. They are less"
" harmful than (Fill opposite of PEB2) cigarettes."
          PEB2A2   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEB2) cigarettes? Please answer yes or no for each. They have a "
" better flavor than (Fill opposite answer from PEB2) cigarettes"
          PEB2A3   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEB2) cigarettes? Please answer yes or no for each. They are less "
"harsh on your THROAT than (Fill opposite answer from PEB2) cigarettes."
          PEB2A4   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEB2) cigarettes? Please answer yes or no for each. They are less "
"harsh on your CHEST than (Fill opposite answer from PEB2) cigarettes."        
          PEB5aNum = "How soon after you wake up do you typically smoke your first cigarette of the day? (number)"
          PEB5aUnt = "How soon after you wake up do you typically smoke your first cigarette of the day? (unit)"
          PEB5b    = "Would you say you smoke your first cigarette of the day within the first 30 minutes?"
          PEB5c    = "Do you sometimes awaken during the night to have a cigarette?"
          PEBA6A   = "Do you usually buy your own cigarettes?"
          PEB6a    = "Do you USUALLY buy your cigarettes by the pack or by the carton?"
          PEB6b    = "What price did you pay for the LAST pack of cigarettes you bought? Please report the cost after using discounts or coupons."
          PEB6c    = "What price did you pay for the LAST carton of cigarettes you bought? Please report the cost after using discounts or coupons."
          PEB6d1   = "Did you buy your LAST (pack/carton) of cigarettes in (fill respondent's state of residence) or in some other state?"
          PEB6d2   = "In what other state did you buy your LAST (pack/carton) of cigarettes?"
          PEB6d3   = "Did you buy you LAST (pack/carton) of cigarettes from an Indian reservation?"
          PEB6DOTH = "Was the Other Way in which you purchased your LAST (pack/carton) of cigarettes:"
          PEB6e1   = "In the LAST 2 months, have you bought any SINGLE or INDIVIDUAL cigarettes?"
          PEB6e2   = "What price did you pay for the LAST “single or individual” cigarette you bought?"
          PEB6e31  = "Did you buy your LAST SINGLE or INDIVIDUAL cigarette in [fill respondent’s state of residence] or in some other state or country?"
          PRB6e32a = "In what OTHER state or country did you buy your LAST SINGLE OR INDIVIDUAL cigarette?"
          PEB7a    = "At what age did you first start to smoke cigarettes EVERY DAY?"
          PEB7b    = "When you first started to smoke EVERY DAY, were you living in (Fill state or country name from PRA2b1 or PRA2c1) or somewhere else?"
          PRB7bSp1 = "Specifically, which other state or country were you living in when you started to smoke every day?"
          PEB7c    = "For how long have you smoked EVERY DAY?"
          PEB7c2   = "Have you EVER smoked MENTHOL cigarettes for 6 months or more?"
          PEB7c3   = "For how long have you smoked MENTHOL cigarettes?"
          PTB7d    = "Think of the time during your life when you SMOKED THE MOST. During that time, how many cigarettes did you smoke each day?"        
          PEB8     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
          PTB9     = "Around this time 12 months ago, on the average about how many cigarettes did you smoke each day?"
          PEB10a   = "Around this time 12 months age, on how many of 30 days in the month did you smoke cigarettes?"
          PTB10b   = "On the average, on those (fill entry B10a) days, how many cigarettes did you usually smoke each day?"
          PEB11    = "Around this time 12 MONTHS AGO, were you usually smoking menthol or non-menthol cigarettes?"        
          PEC1     = "On how many of the past 30 days did you smoke cigarettes?"
          PEC1i    = "Would you say you smoked on at least 12 days in the past 30 days?"
          PTC1a    = "On the average, on those [fill entry C1] days, how many cigarettes did you usually smoke each day?"
          PEC2     = "Do you usually smoke menthol or non-menthol cigarettes?"
          PEC2A1   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEC2) cigarettes? Please answer yes or no for each. They are less "
"harmful than (Fill opposite answer from PEC2) cigarettes."
          PEC2A2   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEC2) cigarettes? Please answer yes or no for each. They have a better "
"flavor than (Fill opposite answer from PEC2) cigarettes."
          PEC2A3   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEC2) cigarettes? Please answer yes or no for each. They are less harsh "
"on your THROAT than (Fill opposite answer from PEC2) cigarettes."
          PEC2A4   = "For each of the following, please tell me whether it's a reason you usually smoke (Fill answer from PEC2) cigarettes? Please answer yes or no for each. They are less harsh "
"on your CHEST than (Fill opposite answer from PEC2) cigarettes."
          PEC5aNum = "On the days that you smoke, how soon after you wake up do you typically smoke your first cigarette of the day? (number)"        
          PEC5aUnt = "On the days that you smoke, how soon after you wake up do you typically smoke your first cigarette of the day? (unit)"
          PEC5b    = "On the days that you smoke, would you say you smoke your first cigarette of the day within the first 30 minutes?"
          PEC5C    = "Do you sometimes awaken during the night to have a cigarette?"
          PECA6A   = "Do you usually buy your own cigarettes?"
          PEC6a    = "Do you USUALLY buy your cigarettes by the pack or by the carton?"
          PEC6b    = "What price did you pay for the LAST pack of cigarettes you bought? Please report the cost after using discounts or coupons."
          PEC6c    = "What price did you pay for the LAST carton of cigarettes you bought? Please report the cost after using discounts or coupons."
          PEC6d1   = "Did you buy your LAST (pack/carton) of cigarettes in (fill respondent's state of residence) or in some other state?"
          PEC6d21  = "In what other state did you buy your LAST (pack/carton) of cigarettes?"
          PEC6D3   = "Did you buy your LAST (pack/carton) of cigarettes from an Indian reservation?"
          PEC6DOTH = "Was the 'Other Way' in which you purchased your Last (pack/carton) of cigarettes."        
          PEC6e1   = "In the LAST 2 months, have you bought any SINGLE or INDIVIDUAL cigarettes?"
          PEC6e2   = "What price did you pay for the LAST “single or individual” cigarette you bought?"
          PEC6e31  = "Did you buy your LAST SINGLE or INDIVIDUAL cigarette in [fill respondent’s state of residence] or in some other state?"
          PRC6e32a = "In what OTHER state did you buy your LAST SINGLE OR INDIVIDUAL cigarette?"
          PEC7a    = "Have you EVER smoked cigarettes EVERY DAY for at least 6 months?"
          PEC7A2   = "At what age did you first start to smoke cigarettes EVERY DAY?"
          PEC7A3   = "When you first started to smoke EVERY DAY, were you living in (fill state or country name from PRA2b1 or PRA2c1) or somewhere else?"
          PRC7A3S1 = "Please specify the other state or country you were living in when you started to smoke every day."
          PEC7D    = "For how long did you smoke EVERY DAY?"
          PEC7D2   = "Have you EVER smoked MENTHOL cigarettes for 6 months or more?"
          PEC7D3   = "For how long have you smoked MENTHOL cigarettes?"
          PTC7E    = "When you last smoked every day, on average how many cigarettes did you smoke each day?"
          PTC7F    = "Think of the time during your life when you SMOKED THE MOST. During that time, how many cigarettes did you smoke each day?"
          PEC8     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
          PTC9     = "Around this time 12 months ago, on the average about how many cigarettes did you smoke each day?"
          PEC10a   = "Around this time 12 months age, on how many of 30 days in the month did you smoke cigarettes?"
          PTC10b   = "On the average, on those (fill entry c10a) days, how many cigarettes did you usually smoke each day?"
          PEC11    = "Around this time 12 MONTHS AGO, were you usually smoking menthol or non-menthol cigarettes?"
          PEDa     = "During the PAST 12 MONTHS, have you TRIED to QUIT smoking COMPLETELY?"
          PEDb     = "Have you EVER TRIED to QUIT smoking COMPLETELY?"
          PED1R     = "During the PAST 12 MONTHS, have you stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
          PED3     = "How many TIMES during the past 12 months have you stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
          PED3b    = "Would you say that during the past 12 months it was MORE THAN 3 TIMES that you have stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
          PED4Num  = "The LAST TIME you stopped smoking during the PAST 12 months because you were TRYING to quit, how long did you stop for? (number)"
          PED4Unt  = "The LAST TIME you stopped smoking during the PAST 12 months because you were TRYING to quit, how long did you stop for? (unit)"
          PED4b    = "Was it more or less than one week?"
          PED4cMon = "When was the approximate END date of this LAST QUIT ATTEMPT that lasted (Fill response from D4num, D4unt or D4b; month)?"
          PED4cDay = "When was the approximate END date of this LAST QUIT ATTEMPT that lasted (Fill response from D4num, D4unt or D4b; day)?"
          PED4cYr  = "When was the approximate END date of this LAST QUIT ATTEMPT that lasted (Fill response from D4num, D4unt or D4b; year)?"
          PED5     = "Was (Fill entries from D4num and D4unt or D4b) the LONGEST you went without smoking in the past 12 months?"
          PED6Num  = "During the PAST 12 MONTHS, what is the LENGTH/LONGEST length of time you stopped smoking because you were TRYING to quit smoking? (number)"
          PED6Unt  = "During the PAST 12 MONTHS, what is the LENGTH/LONGEST length of time you stopped smoking because you were TRYING to quit smoking? (unit)"
          PED6b    = "Was it more or less than one week?"
          PED7R    = "DURING THE PAST 12 MONTHS, have you made a serious attempt to stop smoking because you were TRYING to quit – even if you stopped for less than a day?"        
          PED8R    = "Have you EVER made a serious attempt to stop smoking because you were TRYING to quit even if you stopped for less than a day?"        
          PEE1A1   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: A nicotine patch?"
          PEE1A2   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: A nicotine gum or nicotine lozenge?"
          PEE1A3   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: A nicotine nasal spray or nicotine inhaler?"
          PEE1ABN1 = "In total, during the (last time/time) you tried to QUIT smoking, how long did you use (fill with answers from PEE1a1 and/or PEE1a2 and/or PEE1a3) (number)?"
          PEE1ABU1 = "In total, during the (last time/time) you tried to QUIT smoking, how long did you use (fill with answers from PEE1a1 and/or PEE1a2 and/or PEE1a3) (unit)?"
          PEE1A7A  = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: A prescription pill, called Chantix or Varenicline?"        
          PEE1A7B  = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: A prescription pill, called Zyban, Bupropion, or Wellbutrin?"        
          PEE1A7C  = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following PRODUCTS: Another prescription pill?"
          PEE1ACN1 = "In total, during the (last time/time) you tried to QUIT smoking, how long did you use (Fill response from PEE1a7a and/or PEE1a7b and/or PEE1a7c) (number)?"
          PEE1ACU1 = "In total, during the (last time/time) you tried to QUIT smoking, how long did you use (Fill response from PEE1a7a and/or PEE1a7b and/or PEE1a7c) (unit)?"
          PEE1B1   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: A telephone help line or quit line?"
          PEE1B2   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: One on one counseling?"
          PEE1B3   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: A stop smoking clinic, class, or support group?"
          PEE1B4   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: Help or support from friends or family?"
          PEE1B5   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: Internet or web based program?"
          PEE1B6   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: Books, pamphlets, videos or other materials?"
          PEE1B7   = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: Acupuncture or hypnosis?"
          PEE1B7A  = "Thinking back to the (last time/time) you tried to QUIT smoking in the past 12 months. Did you use ANY of the following: Acupuncture or hypnosis or both?"
          PEE1C1   = "The (last time/time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: Try to quit by GRADUALLY cutting back on cigarettes?"
          PEE1C2   = "The (last time/time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: Try to quit by SWITCHING to smokeless tobacco such as chewing tobacco, snuff, or snus?"
          PEE1C2B  = "The (last time/time) you tried to QUIT smoking in the past 12 months. Did you do ANY of the following: Try to quit by SWITCHING to regular cigars, cigarillos, little filtered cigars or pipes filled with tobacco?"
          PEE1C3   = "The (last time/time) you tried to QUIT smoking in the past 12 months. Did you do ANY of the following: Did you SWITCH to a 'lighter' cigarette in order to TRY TO QUIT?"
          PEE1C3B  = "Did you SWITCH to menthol cigarettes in order to TRY TO QUIT?"
          PEE1C3C  = "Did you switch to non-menthol cigarettes order to TRY TO QUIT?"
          PEE1C4   = "The (last time/time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: Did you try to give up cigarettes ALL at ONCE?"
          PEE1D    = "Please tell me which one statement is true about this most recent quit attempt where you tried to give up cigarettes all at once:"
          PEE1E    = "When you tried to quit all at once, would you say you TRIED TO QUIT 'cold turkey'?"
          PEF1a    = "In the PAST 12 MONTHS, have you seen a medical doctor?"
          PEF1b    = "During the PAST 12 MONTHS, did any medical doctor ADVISE you to stop smoking?"
          PEF1c1   = "In the PAST 12 MONTHS, when a medical doctor advised you to stop smoking, did the doctor also: suggest that you call or use a telephone help line or quit line?"
          PEF1c2   = "In the PAST 12 MONTHS, when a medical doctor advised you to quit smoking, did the doctor also: Suggest that you use a smoking cessation class, program, or counseling?"
          PEF1C3   = "In the PAST 12 MONTHS, when a medical doctor advised you to quit smoking, did the doctor also: Recommend or Prescribe a nicotine product such as a patch, gum, lozenge, nasal spray or inhaler?"        
          PEF1C4   = "In the PAST 12 MONTHS, when a medical doctor advised you to quit smoking, did the doctor also: Prescribe a pill such as Chantix, Varenicline, Zyban, Bupropion, or Wellbutrin?"
          PEF1C5   = "In the PAST 12 MONTHS, when a medical doctor advised you to quit smoking, did the doctor also: Suggest that you set a specific date to stop smoking?"
          PEF2a    = "In the PAST 12 MONTHS, have you seen a dentist?"
          PEF2b    = "During the PAST 12 MONTHS, did any dentist ADVISE you to stop smoking?"
          PEF2c1   = "In the PAST 12 MONTHS, when a dentist advised you to stop smoking, did the dentist also: Suggest that you call or use a telephone help line or quit line?"
          PEF2c2   = "In the PAST 12 MONTHS, when a dentist advised you to quit smoking, did the dentist also: Suggest that you use a smoking cessation class, program, or counseling?"
          PEF2C3   = "In the PAST 12 MONTHS, when a dentist advised you to quit smoking, did the dentist also: Recommend or Prescribe a nicotine product such as a patch, gum, lozenge, nasal spray or inhaler?"        
          PEF2C4   = "In the PAST 12 MONTHS, when a dentist advised you to quit smoking, did the dentist also: Prescribe a pill such as Chantix, Varenicline, Zyban, Bupropion, or Wellbutrin?"
          PEF2C5   = "In the PAST 12 MONTHS, when a dentist advised you to quit smoking, did the dentist also: Suggest that you set a specific date to stop smoking?"        
          PEG1     = "Are you seriously considering quitting smoking within the next 6 months?"
          PEG2     = "Are you planning to quit within the next 30 days?"
          PEG3     = "Overall, on a scale from 1 to 10 where 1 is NOT AT ALL interested and 10 is EXTREMELY interested, how interested are you in quitting smoking?"
          PEG4     = "If you did try to quit smoking altogether in the next 6 months, how LIKELY do you think you would be to succeed --not at all, a little likely, somewhat likely or very likely?"
          PEH1NUM  = "About how long has it been since you COMPLETELY quit smoking cigarettes? (number)"
          PEH1UNT  = "About how long has it been since you COMPLETELY quit smoking cigarettes? (unit)"
          PEH2     = "Have you EVER smoked cigarettes EVERY DAY for at least 6 months?"
          PEH2a    = "At what age did you first start to smoke cigarettes EVERY DAY?"
          PEH2b    = "When you first started to smoke EVERY DAY, were you living in (Fill state or country name from PRA2b1 or PRA2c1) or somewhere else?"
          PRH2bSp1 = "Please specify the other state or country you were living in when you first started to smoke EVERY DAY."
          PEH5     = "For how long did you smoke EVERY DAY?"
          PTH5A    = "When you last smoked every day, on average how many cigarettes did you smoke each day?"
          PTH5B    = "Think of the time during your life when you SMOKED THE MOST. During that time, how many cigarettes did you smoke each day?"
          PEH6     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
          PTH6A    = "Around this time 12 MONTHS AGO, on the average, about how many cigarettes did you smoke each day?"
          PEH6B    = "Around this time 12 MONTHS AGO, on how many of 30 days in the month did you smoke cigarettes?"
          PTH6C    = "On the average, on those (Fill PEH6b entry) days, how many cigarettes did you usually smoke each day?"
          PEH6CI   = "Around this time 12 MONTHS AGO, were you usually smoking menthol or non-menthol cigarettes?"
          PEH6C2   = "Thinking back to the 12 MONTHS BEFORE YOU QUIT SMOKING CIGARETTES, during that time, did you usually smoke menthol or nonmenthol cigarettes?"
          PEH6C31  = "For each of the following, please tell me whether it's a reason you usually smoked (If PEH6C2=1 or PEH6Ci=1,menthol Else if PEH6C2=2 or PEH6Ci=2,"
"non-menthol) cigarettes?  They were less harmful than (Fill opposite answer from PEH6Ci or PEH6C2) cigarettes?"
          PEH6C32  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH6Ci or PEH6C2) cigarettes?  Please answer yes or no for "
"each. They had a better flavor than (Fill opposite answer from PEH6Ci or PEH6C2) cigarettes?"
          PEH6C33  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH6Ci or PEH6C2) cigarettes?  Please answer yes or no for "
"each. They were less harsh on your THROAT than (opposite answer from PEH6Ci/PEH6C2) cigarettes?"
          PEH6C34  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH6Ci or PEH6C2) cigarettes?  Please answer yes or no for "
"each. They were less harsh on your CHEST than (opposite answer from PEH6Ci/PEH6C2) cigarettes?"
          PEH6C4   = "Have you EVER smoked MENTHOL cigarettes for 6 months or more?"
          PEH6C5   = "For how long have you smoked MENTHOL cigarettes?"
          PEH6D1   = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine patch?"
          PEH6D2   = "When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine gum or nicotine lozenge?"
          PEH6D3   = "When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine nasal spray or nicotine inhaler?"
          PEH6DNUM = "In total, how long did you use (Fill product from PEH6d1 and/or PEH6d2 and/or PEH6d3) during your last quit attempt when you stopped smoking completely? (number)"
          PEH6DUNT = "In total, how long did you use (Fill product from PEH6d1 and/or PEH6d2 and/or PEH6d3) during your last quit attempt when you stopped smoking completely? (unit)"
          PEH6D7A  = "When you quit smoking completely, did you use ANY of the following PRODUCTS: A prescription pill, called Chantix or Varenicline?"
          PEH6D7B  = "When you quit smoking completely, did you use ANY of the following PRODUCTS: A prescription pill, called Zyban, Bupropion, or Wellbutrin?"
          PEH6D7C  = "When you quit smoking completely, did you use ANY of the following PRODUCTS: Another prescription pill?"
          PEH6D7NM = "In total, how long did you use (Fill with response from PEH6d7a and/or PEH6d7b and/or PEH6d7c) during your last quit attempt when you stopped smoking completely? (number)"
          PEH6D7UT = "In total, how long did you use (Fill with response from PEH6d7a and/or PEH6d7b and/or PEH6d7c) during your last quit attempt when you stopped smoking completely? (unit)"
          PEH6E1   = "When you quit smoking completely, did you use ANY of the following: A telephone help line or quit line?"
          PEH6E2   = "When you quit smoking completely, did you use ANY of the following: One-on-one counseling?"
          PEH6E3   = "When you quit smoking completely, did you use ANY of the following: A stop smoking clinic, class, or support group?"
          PEH6E4   = "When you quit smoking completely, did you use ANY of the following: Help or support from friends or family?"
          PEH6E5   = "When you quit smoking completely, did you use ANY of the following: The Internet or a web-based program?"
          PEH6E6   = "When you quit smoking completely, did you use ANY of the following: Books, pamphlets videos or other materials?"
          PEH6E7   = "When you quit smoking completely, did you use ANY of the following: Acupuncture or hypnosis?"
          PEH6E7A  = "When you quit smoking completely, did you use ANY of the following: Acupuncture or hypnosis? Which? Acupuncture or hypnosis or both?"
          PEH6FA1  = "When you quit smoking completely, did you do ANY of the following: Please mention ALL methods, whether or not you think they were effective: Try to quit by GRADUALLY cutting back on cigarettes?"
          PEH6FA2  = "When you quit smoking completely, did you do ANY of the following: Please mention ALL methods, whether or not you think they were effective: Try to quit by SWITCHING to smokeless tobacco such as chewing tobacco, snuff, or snus?"
          PEH6FA2B = "When you quit smoking completely, did you do ANY of the following: Please mention ALL methods, whether or not you think they were effective: Try to quit by SWITCHING to "
"regular cigars, cigarillos, little filtered cigars or pipes filled with tobacco?"
          PEH6FA3  = "When you quit smoking completely, did you do ANY of the following: Please mention ALL methods, whether or not you think they were effective: Did you SWITCH to a 'lighter' cigarette in order to TRY TO QUIT?"
          PEH6FA3B = "Did you SWITCH to menthol cigarettes in order to TRY TO QUIT?"
          PEH6FA3C = "Did you SWITCH to non-menthol cigarettes in order to TRY TO QUIT?"
          PEH6FA4  = "When you quit smoking completely, did you do ANY of the following: Please mention ALL methods, whether or not you think they were effective: Did you try to give up cigarettes all at once?"
          PEH6F1   = "Please tell me which is true about when you completely quit smoking by giving up cigarettes all at once:"
          PEH6F2   = "When you completely stopped smoking by quitting ALL AT ONCE, would you say you QUIT 'COLD TURKEY'?"
          PEH61A   = "In the 12 MONTHS BEFORE you COMPLETELY quit smoking, did you SEE a medical doctor?"
          PEH61B   = "During the 12 MONTHS BEFORE you completely quit smoking, did any medical doctor ADVISE you to stop smoking?"
          PEH61C1  = "In the 12 MONTHS BEFORE you quit smoking, when a medical doctor advised you to quit smoking, did the doctor also: suggest that you call or use a telephone help line or quit line?"
          PEH61C2  = "In the 12 MONTHS BEFORE you quit smoking, when a medical doctor advised you to quit smoking, did the doctor also: suggest that you use a smoking cessation class, program, or counseling?"
          PEH61C3  = "In the 12 MONTHS BEFORE you quit smoking, when a medical doctor advised you to quit smoking, did the doctor also: recommend or prescribe a nicotine product such as a patch, gum, lozenge, nasal spray or inhaler?"
          PEH61C4  = "In the 12 MONTHS BEFORE you quit smoking, when a medical doctor advised you to quit smoking, did the doctor also: prescribe a pill such as Chantix, Varenicline, Zyban, Bupropion, or Wellbutrin?"
          PEH61C5  = "In the 12 MONTHS BEFORE you quit smoking, when a medical doctor advised you to quit smoking, did the doctor also: suggest that you set a specific date to stop smoking?"
          PEH62A   = "In the 12 MONTHS BEFORE you COMPLETELY quit smoking, did you SEE a dentist?"
          PEH62B   = "During the 12 MONTHS BEFORE you completely quit smoking, did any dentist ADVISE you to stop smoking?"
          PEH62C1  = "In the 12 months before you quit smoking, when a dentist advised you to quit smoking, did the dentist also: suggest that you call or use a telephone help line or quit line?"
          PEH62C2  = "In the 12 months before you quit smoking, when a dentist advised you to quit smoking, did the dentist also: suggest that you use a smoking cessation class, program, or counseling?"
          PEH62C3  = "In the 12 months before you quit smoking, when a dentist advised you to quit smoking, did the dentist also: recommend or prescribe a nicotine product such as a patch, gum, lozenge, nasal spray or inhaler?"
          PEH62C4  = "In the 12 months before you quit smoking, when a dentist advised you to quit smoking, did the dentist also: prescribe a pill such as Chantix, Varenicline, Zyban, Bupropion, or Wellbutrin?"
          PEH62C5  = "In the 12 months before you quit smoking, when a dentist advised you to quit smoking, did the dentist also: suggest that you set a specific date to stop smoking?"
          PEH8ANUM = "During the 12 MONTHS before you quit smoking, how soon after you woke up did you typically smoke your first cigarette of the day? (number)"
          PEH8AUNT = "During the 12 MONTHS before you quit smoking, how soon after you woke up did you typically smoke your first cigarette of the day? (unit)"
          PEH8B    = "During the 12 months before you quit smoking, would you say you smoked your first cigarette of the day within the first 30 minutes of awakening?"
          PEH8C    = "During the 12 months before you quit smoking, did you sometimes awaken during the night to have a cigarette?"
          PEH11A   = "Thinking back to the 12 MONTHS BEFORE YOU COMPLETELY QUIT SMOKING CIGARETTES. During that time, DID YOU USUALLY SMOKE menthol or non-menthol cigarettes?"
          PEH11B1  = "For each of the following, please tell me whether it's a reason you usually smoked (PEH11a=1 'menthol'/PEH11a=2 'non-menthol') cigarettes? Please "
"answer yes or no for each. They were less harmful than(PEH11a=1 'non-menthol'/PEH11a=2 'menthol') cigarettes?"
          PEH11B2  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH11a) cigarettes? Please answer yes or no for each. They had a better"
" flavor than (Fill opposite answer from PEH11a) cigarettes?"
          PEH11B3  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH11a) cigarettes? Please answer yes or no for each. They were less "
"harsh on your THROAT than (Fill opposite answer from PEH11a) cigarettes?"
          PEH11B4  = "For each of the following, please tell me whether it's a reason you usually smoked (Fill answer from PEH11a) cigarettes? Please answer yes or no for each. They were less "
"harsh on your CHEST than (Fill opposite answer from PEH11a) cigarettes?"
          PEH11C   = "Have you EVER smoked MENTHOL cigarettes for 6 months or more?"
          PEH11D   = "For how long had you smoked MENTHOL cigarettes?"  
          PEJ1a1   = "(Have/Has) (you/name) EVER used any of the following EVEN ONE TIME? ... A regular cigar or cigarillo OR a little filtered cigar?"
          PEJ1a2   = "(Have/Has) (you/name) EVER used any of the following EVEN ONE TIME? ... A regular pipe filled with tobacco?"
          PEJ1A3   = "(Have/Has) (you/name) EVER used any of the following EVEN ONE TIME? ... a water pipe or hookah (who-kah) pipe filled with tobacco?"
          PEJ1A4   = "(Have/Has) (you/name) EVER used any of the following EVEN ONE TIME? ... Smokeless tobacco, such as moist snuff, dip, spit, chew tobacco or snus?"        
          PEJ2A1   = "(Do you/Does name) NOW smoke regular cigars or cigarillos or little filtered cigars every day, some days or not at all?"
          PEJ2B1   = "On how many of the past 30 days did you smoke regular cigars or cigarillos or little filtered cigars?"
          PEJ2A2   = "(Do you/Does name) NOW smoke a regular pipe every day, some days or not at all?"
          PEJ2B2   = "On how many of the past 30 days did you smoke a regular pipe?"
          PEJ2A3   = "(Do you/Does name) NOW use a water pipe or hookah pipe filled with tobacco every day, some days or not at all?"
          PEJ2B3   = "On how many of the past 30 days did you use a water pipe or hookah pipe filled with tobacco?"
          PEJ2A4   = "(Do you/Does name) NOW use smokeless tobacco every day, some days or not at all?"
          PEJ2B4   = "On how many of the past 30 days did you use smokeless tobacco?"
          PEJA     = "During the past 30 days, what BRAND of smokeless tobacco (FR Note: moist snuff, dip, spit, chew or snus) did you use MOST OFTEN?"
          PEJB     = "During the PAST 30 days, what type of CIGAR did you use MOST OFTEN?"
          PEJC     = "During the PAST 30 days, what BRAND of CIGAR did you smoke MOST OFTEN?"
          PEJCPRO  = "Is that a regular or little cigar?"
          PEJCFLVR = "During the past 30 days, did you USUALLY smoke flavored cigars? By flavored, we mean fruit, candy, alcohol, clove or any other flavorings."
          PEJD11   = "About how long has it been since you COMPLETELY quit smoking cigars, cigarillos or little filter cigars? (number)"
          PEJD21   = "About how long has it been since you COMPLETELY quit smoking cigars, cigarillos or little filter cigars? (unit)"
          PEJD12   = "About how long has it been since you COMPLETELY quit smoking a regular pipe filled with tobacco? (number)"
          PEJD22   = "About how long has it been since you COMPLETELY quit smoking a regular pipe filled with tobacco? (unit)"
          PEJD13   = "About how long has it been since you COMPLETELY quit smoking a water pipe or hookah pipe filled with tobacco? (number)"
          PEJD23   = "About how long has it been since you COMPLETELY quit smoking a water pipe or hookah pipe filled with tobacco? (unit)"
          PEJD14   = "About how long has it been since you COMPLETELY quit using a smokeless tobacco? (number)"
          PEJD24   = "About how long has it been since you COMPLETELY quit using a smokeless tobacco? (unit)"
          PEJD31   = "In total, how many years (have you smoked/did you smoke) cigars or cigarillos or little filtered cigars?"
          PEJD32   = "In total, how many years (did you smoke/have you smoked) a regular pipe?"
          PEJD33   = "In total, how many years (did you smoke/have you smoked) a water pipe or hookah pipe filled with tobacco?"
          PEJD34   = "In total, how many years (did you use/have you used) smokeless tobacco?"        
          PEJ3A1   = "How soon after you wake up do you typically (fill text from PRJ3A1F recode)? (number)"
          PEJ3A2   = "How soon after you wake up do you typically (fill text from PRJ3A1F recode)? (unit)"
          PEJ3D    = "Would you say you first (fill text from PRJ3DF recode) within the first 30 minutes of awakening?"
          PEJ3E    = "Do you sometimes awaken during the night to use tobacco?"
          PEJ3F1   = "In the 12 months BEFORE YOU COMPLETELY QUIT (Fill text from PRJ3F1F recode), how soon after you woke up did you typically (Fill text from PRJ3F1AF recode)? (number)"
          PEJ3F2   = "In the 12 months BEFORE YOU COMPLETELY QUIT (Fill text from PRJ3F1F recode), how soon after you woke up did you typically (Fill text from PRJ3F1AF recode)? (unit)"
          PEJ3G    = "Would you say you first used (Fill text from PRJ3GF recode) within the first 30 minutes of awakening?"
          PEJ3H    = "During the 12 months BEFORE YOU COMPLETELY QUIT (Fill text from PRJ3HF recode), DID you sometimes awaken at night to use tobacco?"
          PEJ4     = "During the PAST 12 MONTHS, have you stopped (Fill text from PRJ4F recode) for one day or longer BECAUSE YOU WERE TRYING TO QUIT?"
          PEJ5NUM  = "The LAST TIME you stopped (fill text from PRJ5numf recode) in the past 12 months BECAUSE YOU WERE TRYING TO QUIT, how long did you stop for? (number)"
          PEJ5UNT  = "The LAST TIME you stopped (fill text from PRJ5numf recode) in the past 12 months BECAUSE YOU WERE TRYING TO QUIT, how long did you stop for? (unit)"
          PEJ6A    = "Was (Fill response from PEJ5num and PEJ5unt) the LONGEST you went without (Fill text from PRJ6af recode) in the past 12 months?"
          PEJ6BNUM = "During the past 12 MONTHS, what is the LONGEST length of time you stopped (Fill text from PRJ6bnmF recode) because you were trying to quit? (number)"
          PEJ6BUNT = "During the past 12 MONTHS, what is the LONGEST length of time you stopped (Fill text from PRJ6bnmF recode) because you were trying to quit? (unit)"        
  
          PEJ7A1   = "(Now I would like to ask about HOW you went about completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit)(PRJ7a1f) in the past 12 months): Did you use any of the following PRODUCTS: A nicotine patch?"        
          PEJ7A2   = "(Now I would like to ask about HOW you went about completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit)(PRJ7a1f) in the past 12 months): Did you use ... PRODUCTS: A nicotine gum or lozenge?" 
          PEJ7A3   = "(Now I would like to ask about HOW you went about completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit)(PRJ7a1f) in the past 12 months): Did you use ... PRODUCTS: A nicotine nasal spray or inhaler?"
          PEJ7A7a  = "(Now I would like to ask about HOW...completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit)(PRJ7a1f) in the past 12 months): Did you use ... PRODUCTS: A prescription pill called Chantix or Varenicline?"
          PEJ7A7b  = "(Now I would like to ask about HOW...completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit (PRJ7a1f) in the past 12 months): Did you use...PRODUCTS: A prescription pill...Zyban,Bupropion,or Wellbutrin?"
          PEJ7A7c  = "(Now I would like to ask about HOW...completely quitting (PRJ7a1f)/When you COMPLETELY quit)"
"/Thinking back about the last time you tried to quit (PRJ7a1f) in the past 12 months): Did you use ... PRODUCTS: Another prescription pill?"
          PEJ7B1   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: A telephone help line or quit line?"
          PEJ7B2   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: One on one counseling?"
          PEJ7B3   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: A stop smoking clinic, class, or support group?"
          PEJ7B4   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: Help or support from friends or family?"
          PEJ7B5   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: The internet or a web based program?"
          PEJ7B6   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: Books, pamphlets, videos, or other materials?"
          PEJ7B6b  = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: Acupuncture or hypnosis?"
          PEJ7B6c  = "Which one? Acupuncture or hypnosis?"        
          PEJ7B7   = "(When you COMPLETELY quit (fill applicable PRJ7b1f recode text)/The LAST TIME you tried to quit (PRJ7b1f)) Did you use ANY of the following: Advice from a medical doctor,dentist, or other health professional?"
          PEJ7B7a  = "Which one? medical doctor, dentist, or other health professional"
          PEJ7C1   = "(When you COMPLETELY quit (fill applicable PRJ7C1F recode text)/The LAST TIME you tried to QUIT (PRJ7C1F) in the past 12 months) Did you do ANY of the following: Stop by gradually cutting back on (PRJ7C1F) in order to TRY TO QUIT?"
          PEJ7C2   = "(When you COMPLETELY quit (fill applicable PRJ7C1F recode text)/The LAST TIME you tried to QUIT (PRJ7C1F) in the past 12 months) Did you do ANY of the following: Did you TRY GIVING IT UP ALL AT ONCE?"
          PEJ7C2A  = "Would you say you TRIED TO QUIT 'cold turkey'?"
          PEJJ1    = "Tobacco companies are developing new smokeless tobacco products, in various shapes, such as a pellet,a toothpick "
"size stick and a film strip, made from finely ground flavored tobacco that dissolves... Have you tried any new smokeless tobacco products?"
          PEK1A    = "Do you mainly work indoors or outdoors?"
          PEK1B    = "Do you mainly work in an office building, your own home, in someone else's home, or in another indoor place?"
          PEK1B11  = "In which State (including DC), do you work?"
          PEK1B2   = "When you work INDOORS: Do you mainly work in an office building, in your own home, in someone else's home, or in another indoor place?"
          PEK1C1   = "In which State (including DC), do you work on your main indoor job or business?"
          PEK2A    = "Is smoking restricted in ANY WAY at your place of work?"
          PEK3A    = "Which of these best describes the smoking policy at your place of work for INDOOR PUBLIC OR COMMON AREAS, such as lobbies, rest rooms, and lunch rooms?"
          PEK3B    = "Which of these best describes the smoking policy at your place of work for INDOOR WORK AREAS?"
          PEK3C    = "During the PAST TWO WEEKS, has anyone smoked in the area in which you work?"
          PEK3D    = "Within the PAST 12 MONTHS, has your employer offered any stop smoking program or any other help to employees who want to quit smoking?"
          PEK4     = "Which statement best describes the rules about smoking INSIDE YOUR HOME?"
          PEK6C    = "In bars, cocktail lounges, and clubs, do you THINK that smoking SHOULD be allowed in all areas, allowed in some areas, or not allowed at all?"
          PEK6F    = "On outdoor children's playgrounds and outdoor children's sports fields, do you THINK that smoking SHOULD be allowed in all areas, allowed in some areas, or not allowed at all?"
          PEK6G    = "Inside casinos, do you THINK that smoking SHOULD be allowed in all areas, allowed in some areas, or not allowed at all?"
          PEK6H    = "Inside a car, when there are other people present, do you THINK that smoking SHOULD..."
          PEK6H2   = "IF children are present inside the car, do you think that smoking SHOULD..."
          PEK7     = "If menthol cigarettes were no longer sold, which of the following would you MOST LIKELY do:"
          PRKST1   = "In what state or country (were/was you/name) born?" 
          PES78    = "Respondent relationship recode- relationship of respondent to the sample person"
          PESINTTP = "In what language was the interview conducted for this person?"
          PES81A   = "Method of Interview"
          INTRVIEW = "Interview Status Recode"
          HRMODE   = "Method of Interview"
          SMOKSTAT = "Type of smoker recode"
          PRS35    = "Respondent and Smoker Type"
          PRS60    = "Self responding 'Not at all' smokers- smoking less than or equal to 1 year"
          PRS64    = "Who is responding for the supplement"
          PRS65    = "Monthly Labor Force recode of Self respondents"
          PRS66    = "Employed self respondents' class of worker on first job"
          PRJ3A1F  = "Recode from fill in PEJ3a1 and PEJ3a2 to determine which tobacco product is being discussed in PEJ3a1 and PEJ3a2"
          PRJ3DF   = "Recode from fill in PEJ3d to determine which tobacco product is being discussed in PEJ3d"
          PRJ3F1AF = "Recode from fill in PEJ3f1 and PEJ3f2 to determine which tobacco product is being discussed in PEJ3f1 and PEJ3f2"
          PRJ3F1F  = "Recode from fill in PEJ3f1 and PEJ3f2 to determine which tobacco product is being discussed in PEJ3f1 and PEJ3f2"
          PRJ3HF   = "Recode from fill in PEJ3h to determine which tobacco product is being discussed in PEJ3h"
          PRJ3GF   = "Recode from fill in PEJ3g to determine which tobacco product is being discussed in PEJ3g"
          PRJ4F    = "Recode from fill in PEJ4 to determine which tobacco product is being discussed in PEJ4"
          PRJ5NUMF = "Recode from fill in PEJ5num and PEJ5unt to determine which tobacco product is being discussed in PEJ5num and PEJ5unt"
          PRJ6AF   = "Recode from fill in PEJ6a to see which tobacco product is being discussed in PEJ6a"
          PRJ6BNMF = "Recode from fill in PEJ6bnum and PEJ6bunt to see which tobacco product is being discussed in PEJ6bnum and PEJ6bunt"
          PRJ7A1F  = "Recode identifying which tobacco product the respondent has quit or has tried to quit in PEJ7a1, PEJ7a2, PEJ7a3, PEJ7a7a, PEJ7a7b, PEJ7a7c"
          PRJ7B1F  = "Recode identifying which tobacco product the respondent has quit or has tried to quit in PEJ7b1, PEJ7b2, PEJ7b3, PEJ7b4, PEJ7b5, PEJ7b6, PEJ7b6b, PEJ7b6c, PEJ7b7, and PEJ7b7a"
          PRJ7C1F  = "Recode identifying which product the respondent has quit or has tried to quit tobacco in PEJ7c1 and PEJ7c2"
          PWNRWGT  = "Nonresponse weight"
          PWSRWGT  = "Self response weight";
%Mend TUSCPS;
          
%TUSCPS(May10); Run;
%TUSCPS(Aug10); Run;
%TUSCPS(Jan11); Run;