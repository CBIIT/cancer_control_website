/********************************************************************************/;
/* Program: cps03.sas                                                           */;
/*    Date: June 2011                                                           */;
/*                                                                              */;
/* Purpose: SAS program to create permanent SAS data dets from the 2003 survey  */;
/*          data.  The program creates one permanent data set for each of the   */;
/*          three surveys (February, June, November).                           */;
/*                                                                              */;
/*   Notes: The program is set up to read and write the data to/from the        */;
/*          'data' subdirectory.  The Filename and Libname statements may need  */;
/*          to be modified to match where the data are stored.                  */;
/*                                                                              */;
/* Modifications                                                                */;
/*                                                                              */;
/*                                                                              */;
/********************************************************************************/;
Filename CPSFeb03  "data\cpsfeb03.dat" Lrecl=1386;
Filename CPSJun03  "data\cpsjun03.dat" Lrecl=1386;
Filename CPSNov03  "data\cpsnov03.dat" Lrecl=1386;

Libname  CPS "data\.";

%Macro TUSCPS03(Survey);
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
          @0039 HUFAMINC 2.
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
          @0071 HRSAMPLE $Char4.
          @0075 HRSERSUF $Char2.
          @0077 HUHHNUM  2.
          @0079 HUBUS    2.
          @0081 (HUBUSL1-HUBUSL4) (2.)
          @0089 GEREG    2.
          @0091 GESTCEN  2.        
          @0093 GESTFIPS 2.
          @0095 GECMSA   2.
          @0097 GEMSA    4.
          @0101 GECO     3.
          @0104 GEMSAST  1.
          @0105 GEMETSTA 1.
          @0106 GEINDVCC 1.
          @0107 GEMSASZ  1.
          @0108 GECMSASZ 1.
          @0109 HULENSEC 5.
          @0114 PROLDRRP 2.
          @0116 PUPELIG  2.
          @0118 PERRP    2.
          @0120 PEPARENT 2.
          @0122 PRTAGE   2.
          @0124 PRTFAge  1.
          @0125 PEMARITL 2.
          @0127 PESPOUSE 2.
          @0129 PESEX    2.
          @0131 PUAFEVER 2.
          @0133 PEAFWHEN 2.
          @0135 PEAFNOW  2.
          @0137 PEEDUCA  2.
          @0139 PTDTRACE 2.
          @0141 PRDTHSP  2.
          @0143 PUCHINHH 2.
          @0145 PURELFLG 2.
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
          @0252 PULBHSEC 5.
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
          @0410 PRUSFTPT 2.
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
          @0667 PXAFWHEN 2. 
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

          @0879 (PEA1-PEA3) (2.)
          @0885 PEB1     2.
          @0887 PEB1A    2.
          @0889 (PEB2-PEB3) (2.)
          @0893 (PEB41-PEB43) (2.)
          @0899 PEB4D    2.
          @0901 PEB5ANUM 2.
          @0903 PEB5AUNT 2.
          @0905 PEB5B    2.
          @0907 (PEB5C1-PEB5C4) (2.)
          @0915 PEB6A    2.
          @0917 PEB6B    4.
          @0921 PEB6C    5.
          @0926 PEB6D    2.
          @0928 PEB6D2   $Char2.
          @0930 (PEB7-PEB9) (2.)
          @0936 (PEB10A1-PEB10A3) (2.)
          @0942 PEB10B   2.
          @0944 (PEB111-PEB113) (2.)
          @0950 PEC1     2.
          @0952 PEC1A    2.
          @0954 (PEC2-PEC3) (2.)
          @0958 (PEC41-PEC43) (2.)
          @0964 PEC4D    2.
          @0966 PEC5ANUM 2.
          @0968 PEC5AUNT 2.
          @0970 PEC5B    2.
          @0972 PEC6A    2.
          @0974 PEC6B    4.
          @0978 PEC6C    5.
          @0983 PEC6D    2.
          @0985 PEC6D2   $Char2.
          @0987 PEC7A    2.
          @0989 PEC7BNUM 2.
          @0991 PEC7BUNT 2.
          @0993 PEC7C    2.
          @0995 PEC7D    2.
          @0997 (PEC8-PEC9) (2.)
          @1001 (PEC10A1-PEC10A3) (2.)
          @1007 PEC10B   2.
          @1009 (PEC111-PEC113) (2.)
          @1015 PEDA     2.
          @1017 (PED1-PED3) (2.)
          @1023 PED3B    2.
          @1025 PED4NUM  2.
          @1027 PED4UNT  2.
          @1029 PED5     2.
          @1031 PED6NUM  2.
          @1033 PED6UNT  2.
          @1035 PED6B    2.
          @1037 (PED7-PED8) (2.)
          @1041 (PEE1A1-PEE1A7) (2.)
          @1055 (PEE1B1-PEE1B7) (2.)
          @1069 PEE1B7A  2.
          @1071 (PEE1C1-PEE1C4) (2.)
          @1079 PEE1C4A  2.
          @1081 PEE2     2.
          @1083 (PEF1-PEF2) (2.)
          @1087 (PEF31-PEF35) (2.)
          @1097 (PEF4-PEF5) (2.)
          @1101 (PEG1-PEG4) (2.)
          @1109 PEH1NUM  2.
          @1111 PEH1UNT  2.
          @1113 PEH2     2.
          @1115 PEH3NUM  2.
          @1117 PEH3UNT  2.
          @1119 (PEH4-PEH6) (2.)
          @1125 PEH6A    2.
          @1127 PEH6B    2.
          @1129 PEH7A    2.
          @1131 PEH7B    2.
          @1133 (PEH7C1-PEH7C3) (2.)
          @1139 PEH7D    2.
          @1141 PEH8NUM  2.
          @1143 PEH8UNT  2.
          @1145 PEH8B    2.
          @1147 (PEH91-PEH94) (2.)
          @1155 (PEH10A1-PEH10A7) (2.)
          @1169 (PEH10B1-PEH10B7) (2.)
          @1183 PEH10B7A 2.
          @1185 (PEH10C1-PEH10C4) (2.)
          @1193 PEH10C4A 2.
          @1195 PEH11A   2.
          @1197 PEH12    2.
          @1199 (PEH131-PEH133) (2.)
          @1205 PEH13D   2.
          @1207 PEJ1A    2.
          @1209 (PEJ1BB1-PEJ1BB4) (2.)
          @1217 PEJ2A1   2.
          @1219 PEJ2B1   2.
          @1221 PEJ2A2   2.
          @1223 PEJ2B2   2.
          @1225 PEJ2A3   2.
          @1227 PEJ2B3   2.
          @1229 PEJ2A4   2.
          @1231 PEJ2B4   2.
          @1233 (PEJ3A1-PEJ3A3) (2.)
          @1239 (PEJ3B1-PEJ3B3) (2.)
          @1245 (PEJ3C1-PEJ3C3) (2.)
          @1251 (PEJ3D1-PEJ3D3) (2.)
          @1257 PEJ4     2.
          @1259 PEJ5NUM  2.
          @1261 PEJ5UNT  2.
          @1263 PEJ6A    2.
          @1265 PEJ6BNUM 2.
          @1267 PEJ6BUNT 2.
          @1269 (PEJ7A1-PEJ7A7) (2.)
          @1283 (PEJ7B1-PEJ7B7) (2.)
          @1297 PEJ7B7A  2.
          @1299 PEJ7B8   2.
          @1301 PEJ7B8A  2.
          @1303 (PEJ7C1-PEJ7C2) (2.)
          @1307 PEJ7C2A  2.
          @1309 PEJ7D1   2.
          @1311 (PEJJ11-PEJJ17) (2.)
          @1325 PEK1     2.
          @1327 PEK1B    2.
          @1329 PEK1C    $Char2.
          @1331 PEK2A    2.
          @1333 PEK3     2.
          @1335 PEK3B    2.
          @1337 (PEK4-PEK5) (2.)
          @1341 PES78    2.
          @1343 PESINTTP 2.
          @1345 PES81A   2.
          @1347 INTRVIEW 2.
          @1349 HRMODE   2.
          @1351 SMOKSTAT 2.
          @1353 PRS35    2.
          @1355 PRS60    2.
          @1357 (PRS64-PRS66) (2.)
          @1363 PWNRWGT  10.
          @1373 PWSRWGT  10.
          @1383 PRTOBTYP 2.;

    If HWHHWGT^=-1 Then HWHHWGT=HWHHWGT/10000;
    If PUERNH1C^=-1 Then PUERNH1C=PUERNH1C/100;
    If PEERNH2^=-1 Then PEERNH2=PEERNH2/100;
    If PEERNH1O Not In (-3,-2,-1) Then PEERNH1O=PEERNH1O/100;
    If PRERNHLY^=-1 Then PRERNHLY=PRERNHLY/100;
    If PRERNWA^=-1 Then PRERNWA=PRERNWA/100;
    If PEERN^=-1 Then PEERN=PEERN/100;
    If PUERN2^=-1 Then PUERN2=PUERN2/100;
    If PWFMWGT^=-1 Then PWFMWGT=PWFMWGT/10000;
    If PWLGWGT^=-1 Then PWLGWGT=PWLGWGT/10000; 
    If PWORWGT^=-1 Then PWORWGT=PWORWGT/10000;
    If PWSSWGT^=-1 Then PWSSWGT=PWSSWGT/10000;
    If PWVETWGT^=-1 Then PWVETWGT=PWVETWGT/10000;              
    If PWCMPWGT^=-1 Then PWCMPWGT=PWCMPWGT/10000;                  
    If PEB6B Not In (-9,-3,-2,-1) Then PEB6B=PEB6B/100;
    If PEB6C Not In (-9,-3,-2,-1) Then PEB6C=PEB6C/100;
    If PEC6B Not In (-9,-3,-2,-1) Then PEC6B=PEC6B/100;
    If PEC6C Not In (-9,-3,-2,-1) Then PEC6C=PEC6C/100;    
    If PWNRWGT^=-1 Then PWNRWGT=PWNRWGT/10000;              
    If PWSRWGT^=-1 Then PWSRWGT=PWSRWGT/10000;              

    Label HRHHID   = "Household identifier"
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
        HUFAMINC = "Family income"
        HUTYPEA  = "Type a non-interview reason"
        HUTYPB   = "Type b non-interview reason"
        HUTYPC   = "Type c non-interview reason"
        HWHHWGT  = "Household weight"
        HRINTSTA = "Interview status"
        HRNUMHOU = "Total number of persons living in the household (household members)"
        HRHTYPE  = "Household type"
        HRMIS    = "Month-in-sample"
        HUINTTYP = "Type of interview"
        HUPRSCNT = "Number of actual and attempted personal contacts"
        HRLONGLK = "Longitudinal link indicator"
        HRSAMPLE = "Sample identifier"
        HRSERSUF = "Serial suffix"
        HUHHNUM  = "Household number"          
        HUBUS    = "Does anyone in this household have a business or a farm?"
        HUBUSL1  = "Enter line number for hubus = 1"
        HUBUSL2  = "Enter line number for hubus = 1"
        HUBUSL3  = "Enter line number for hubus = 1"
        HUBUSL4  = "Enter line number for hubus = 1"
        GEREG    = "Region"
        GESTCEN  = "Census state code"
        GESTFIPS = "Federal information processing standards (FIPS) state code"
        GECMSA   = "CMSA FIPS code"
        GEMSA    = "MSA/PMSA FIPS code"
        GECO     = "FIPS county code"
        GEMSAST  = "Central city/balance status"
        GEMETSTA = "Metropolitan status"
        GEINDVCC = "Individual central city"
        GEMSASZ  = "MSA/PMSA size"
        GECMSASZ = "CMSA/MSA size"
        HULENSEC = "Cumulative interview time in seconds"
        PROLDRRP = "Relationship to reference person (recode)"
        PUPELIG  = "Interview status of each person in the household"
        PERRP    = "Relationship to reference person"
        PEPARENT = "Line number of parent"          
        PRTAGE   = "Persons age as of the end of survey week"          
        PRTFAGE  = "Top code flag for age"
        PEMARITL = "Marital status"
        PESPOUSE = "Line number of spouse"
        PESEX    = "Sex"
        PUAFEVER = "Did you ever serve on active duty in the U.S. armed forces?"
        PEAFWHEN = "When did you serve?"          
        PEAFNOW  = "Are you now in the armed forces"          
        PEEDUCA  = "Highest level of school completed or degree received"
        PTDTRACE = "Race"
        PRDTHSP  = "Detailed Hispanic origin group"        
        PUCHINHH = "Change in household composition"          
        PURELFLG = "Flag for relationship to the owner of a business"
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
        PRINUSYR = "Immigrant's year of entry"
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
        PULBHSEC = "Total seconds to complete labor force items."
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
        PREMPNOT = "MLR - employed, unemployed, or nilf"
        PREXPLF  = "Experienced labor force employment"
        PRFTLF   = "Full time labor force" 
        PRHRUSL  = "Usual hours worked weekly"       
        PRJOBSEA = "Job search recode"
        PRPTHRS  = "At work 1-34 by hours at work"
        PRPTREA  = "Detailed reason for part-time"
        PRUNEDUR = "Duration of unemployment for layoff and looking records"
        PRUSFTPT = "Usual fulltime/parttime status"
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
        PUIOCK3  = "I & O check item 3"          
        PRIOELG  = "Industry and occupation eligibility flag"
        PRAGNA   = "Agriculture/ non-agriculture industry"
        PRCOW1   = "Class of worker recode - job 1"
        PRCOW2   = "Class of worker recode - job 2"
        PRCOWPG  = "Cow - private or government"
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
        PRWERNAL = "Allocation flag weekly earnings recode (prernwa)"
        PRHERNAL = "Allocation flag hourly earnings recode (prernhly)"
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
        PXAFWHEN = "Allocation flag"
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
        PEA1     = "(Have/Has) (you/ name) smoked at least 100 cigarettes in (your/his/her) entire life? (FR NOTE: 100 CIGARETTES = APPROXIMATELY 5 PACKS)"
        PEA2     = "How old (were/was) (you/name) when (you/he/she) first started smoking cigarettes FAIRLY REGULARLY?"
        PEA3     = "(Do/Does) (you/name) now smoke cigarettes every day, some days, or not at all?"                  
        PEB1     = "On the average, about how many cigarettes do you now smoke each day?"        
        PEB1a    = "Would you say that, on average, you now smoke more or less than 20 cigarettes each day?"
        PEB2     = "Is your usual cigarette brand menthol or non-menthol?"   
        PEB3     = "What type of cigarette do you now smoke most often -- a regular, a light, an ultralight, or some other type?"
        PEB41    = "(A) You NOW smoke (lights/ultralights -- fill entry from B3) because you feel that they are less harmful to your health than regular cigarettes"
        PEB42    = "(B) You NOW smoke (lights/ultralights fill entry from B3) as a way to try to quit smoking."
        PEB43    = "(C) You NOW smoke (lights/ultralights -- fill entry from B3) because they have a smoother flavor or lighter taste than regular cigarettes?"
        PEB4d    = "Which is the more important reason that you smoke (lights/ultralights fill entry from B3) - because you feel they are less harmful to your health, or because you're trying to quit?"
        PEB5aNum = "How soon after you wake up do you typically smoke your first cigarette of the day? (number)"
        PEB5aUnt = "How soon after you wake up do you typically smoke your first cigarette of the day? (unit)"
        PEB5b    = "Would you say you smoke your first cigarette of the day within the first 30 minutes?"
        PEB5c1   = "(A) You have trouble going more than a few hours without smoking."
        PEB5c2   = "(B) Even in a bad rainstorm, if you ran out of cigarettes, you would probably go to the store to get some more."
        PEB5c3   = "(C) When you go without smoking for a few hours, you experience craving."
        PEB5c4   = "(D) If you were in a public place where smoking isn't allowed, you'd probably go outside to smoke a cigarette, even in cold or rainy weather."
        PEB6a    = "Do you USUALLY buy your cigarettes by the pack or by the carton?"
        PEB6b    = "What price did you pay for the LAST pack of cigarettes you bought? Please report the cost after using discounts or coupons."
        PEB6c    = "What price did you pay for the LAST carton of cigarettes you bought? Please report the cost after using discounts or coupons."
        PEB6d    = "Did you buy your LAST (pack/carton) of cigarettes in (____ Insert respondent's state of residence) or in some other state?"
        PEB6d2   = "In what other state did you buy your LAST (pack/carton) of cigarettes?"
        PEB7     = "What is the total number of years you have smoked EVERY DAY? Do not include any time you stayed off cigarettes for 6 months or longer."
        PEB8     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
        PEB9     = "Have you EVER SWITCHED from a stronger cigarette to a lighter cigarette for at least 6 months?"
        PEB10a1  = "(A) You switched because you felt that a lighter cigarette would be less harmful to your health."
        PEB10a2  = "(B) You switched as a way to try to quit smoking."
        PEB10a3  = "(C) You switched to get a smoother or lighter flavor."
        PEB10b   = "Which is the MAIN reason you switched from a stronger to a lighter cigarette as a way to try to quit smoking, or in order to smoke a less harmful cigarette?"
        PEB111   = "(A) Light cigarettes give you less tar or nicotine than regular cigarettes."
        PEB112   = "(B) Light cigarettes are safer to smoke."
        PEB113   = "(C) Light cigarettes feel smoother and easier on your chest."
        PEC1     = "On how many of the past 30 days did you smoke cigarettes?"
        PEC1a    = "On the average, on those [fill entry C1] days, how many cigarettes did you usually smoke each day?"        
        PEC2     = "Is your usual cigarette brand menthol or non-menthol?"
        PEC3     = "What type of cigarette do you now smoke most often -- a regular, a light, an ultralight, or some other type?"
        PEC41    = "(A) You NOW smoke [fill entry C3] because you feel that they are less harmful to your health than regular cigarettes"
        PEC42    = "(B) You NOW smoke [fill entry C3] as a way to try to quit smoking."
        PEC43    = "(C) You NOW smoke [fill entry C3] because they have a smoother flavor or lighter taste than regular cigarettes?"
        PEC4d    = "Which is the more important reason that you smoke [fill entry C3] - because you feel they are less harmful to your health, or because you're trying to quit?"
        PEC5aNum = "On the days that you smoke, how soon after you wake up do you typically smoke your first cigarette of the day? (number)"
        PEC5aUnt = "On the days that you smoke, how soon after you wake up do you typically smoke your first cigarette of the day? (unit)"
        PEC5b    = "On the days that you smoke, would you say you smoke your first cigarette of the day within the first 30 minutes?"        
        PEC6a    = "Do you USUALLY buy your cigarettes by the pack or by the carton?"
        PEC6b    = "What price did you pay for the LAST pack of cigarettes you bought? Please report the cost after using discounts or coupons."
        PEC6c    = "What price did you pay for the LAST carton of cigarettes you bought? Please report the cost after using discounts or coupons."
        PEC6d    = "Did you buy your LAST (pack/carton) of cigarettes in (____ Insert respondent's state of residence) or in some other state?"
        PEC6d2   = "In what other state did you buy your LAST (pack/carton) of cigarettes?"
        PEC7a    = "Have you EVER smoked cigarettes EVERY DAY for at least 6 months?"
        PEC7bNum = "About how long has it been since you last smoked cigarettes EVERY DAY? (number)"
        PEC7bUnt = "About how long has it been since you last smoked cigarettes EVERY DAY? (unit)"
        PEC7c    = "When you last smoked every day, on average how many cigarettes did you smoke each day?"
        PEC7d    = "What is the total number of years you smoked EVERY DAY? Do not include any time you stayed off cigarettes for 6 months or longer."
        PEC8     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
        PEC9     = "Have you EVER SWITCHED from a stronger cigarette to a lighter cigarette for a period of 6 months or longer?"
        PEC10a1  = "(A) You switched because you felt that a lighter cigarette would be less harmful to your health."
        PEC10a2  = "(B) You switched as a way to try to quit smoking."
        PEC10a3  = "(C) You switched to get a smoother or lighter flavor."
        PEC10b   = "Which is the MAIN reason you switched from a stronger to a lighter cigarette as a way to try to quit smoking, or in order to smoke a less harmful cigarette?"
        PEC111   = "(A) Light cigarettes give you less tar or nicotine than regular cigarettes."
        PEC112   = "(B) Light cigarettes are safer to smoke."
        PEC113   = "(C) Light cigarettes feel smoother and easier on your chest."
        PEDa     = "During the PAST 12 MONTHS, have you TRIED to QUIT smoking COMPLETELY?"
        PED1     = "Have you EVER stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
        PED2     = "During the PAST 12 MONTHS, have you stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
        PED3     = "How many TIMES during the past 12 months have you stopped smoking for one day or longer BECAUSE YOU WERE TRYING TO QUIT SMOKING?"
        PED3b    = "Would you say that it was more than 3 times?"
        PED4NUM  = "The LAST TIME you stopped smoking during the past 12 months because you were TRYING to quit, how long did you stop for? (number)"
        PED4UNT  = "The LAST TIME you stopped smoking during the past 12 months because you were TRYING to quit, how long did you stop for? (unit)"
        PED5     = "Was [fill entry D4 NUM AND D4UNT] the LONGEST you went without smoking in the past 12 months?"
        PED6Num  = "During the PAST 12 MONTHS, what is the LONGEST length of time you stopped smoking because you were TRYING to quit smoking? (number)"
        PED6Unt  = "During the PAST 12 MONTHS, what is the LONGEST length of time you stopped smoking because you were TRYING to quit smoking? (unit)"
        PED6b    = "Was it more or less than one week?"    
        PED7     = "Have you EVER made a serious attempt to stop smoking because you were TRYING to quit even if you stopped for less than a day?"
        PED8     = "DURING THE PAST 12 MONTHS, have you made a serious attempt to stop smoking because you were TRYING to quit?"            
        PEE1a1   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine gum"
        PEE1a2   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine patch"
        PEE1a3   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine nasal spray"
        PEE1a4   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine inhaler"
        PEE1a5   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine lozenge"
        PEE1a6   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a nicotine tablet"
        PEE1a7   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months. Did you use a prescription pill, such as Zyban, Buproprion, or Wellbutrin?"
        PEE1b1   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (A) a telephone help line or quit line?"
        PEE1b2   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (B) a stop smoking clinic, class, or support group?"
        PEE1b3   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (C) One-on-one counseling?"
        PEE1b4   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (D) Help or support from friends or family?"
        PEE1b5   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (E) The Internet or World Wide Web?"
        PEE1b6   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (F) Books, pamphlets, videos, or other materials?"
        PEE1b7   = "Thinking back to the (LAST TIME/time) you tried to QUIT smoking in the past 12 months: Did you use (G) Acupuncture or hypnosis?"
        PEE1b7a  = "[IF YES] Which - (1) Acupuncture (2) Hypnosis (3) Both?"
        PEE1c1   = "The (LAST TIME / time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: (A)Try to quit by gradually cutting back on cigarettes?"
        PEE1c2   = "The (LAST TIME / time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: (B) Try to quit by switching to chewing tobacco, snuff, cigars, or pipes?"
        PEE1c3   = "The (LAST TIME / time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: (C) Did you switch to a 'lighter' cigarette in order to TRY TO QUIT?"
        PEE1c4   = "The (LAST TIME / time) you tried to QUIT smoking in the past 12 months: Did you do ANY of the following: (D) Did you try to give up cigarettes all at once?"
        PEE1c4a  = "[IF YES] Would you say you TRIED TO QUIT 'cold turkey' or in some other way?"               
        PEE2     = "The (LAST TIME / time) you tried to QUIT smoking in the past 12 months: Did you use ANY OTHER methods or products?"
        PEF1     = "In the PAST 12 MONTHS, have you seen a doctor, dentist, nurse, or other health professional?"
        PEF2     = "During the PAST 12 MONTHS, did any doctor, dentist, nurse, or other health professional ADVISE you to quit smoking?"
        PEF31    = "In the PAST 12 MONTHS, when any of these health professionals advised you to quit smoking, did they also: (A) Prescribe a nicotine nasal spray, a patch, an inhaler, a lozenge or pills such as Zyban?"
        PEF32    = "In the PAST 12 MONTHS, when any of these health professionals advised you to quit smoking, did they also: (B) Recommend nicotine gum, a patch, or other non-prescription product containing nicotine?"
        PEF33    = "In the PAST 12 MONTHS, when any of these health professionals advised you to quit smoking, did they also: (C) Suggest that you set a specific date to stop smoking?"
        PEF34    = "In the PAST 12 MONTHS, when any of these health professionals advised you to quit smoking, did they also: (D) Suggest that you use a smoking cessation class, program, quit line or counseling?"
        PEF35    = "In the PAST 12 MONTHS, when any of these health professionals advised you to quit smoking, did they also: (E) Provide you with booklets, videos, or other materials to help you quit smoking on your own?"
        PEF4     = "During the PAST 12 MONTHS, did any doctor, dentist, nurse, or other health professional spend ANY time talking to you about how you should try to quit smoking?"
        PEF5     = "Which heath professional that you saw in the past 12 months spent the MOST time advising you about quitting smoking?"
        PEG1     = "Are you seriously considering quitting smoking within the next 6 months?"
        PEG2     = "Are you planning to quit within the next 30 days?"
        PEG3     = "Overall, on a scale from 1 to 10 where 1 is NOT AT ALL interested and 10 is EXTREMELY interested, how interested are you in quitting smoking?"
        PEG4     = "If you did try to quit smoking altogether in the next 6 months, how LIKELY do you think you would be to succeed --not at all, a little likely, somewhat likely or very likely?"
        PEH1Num  = "About how long has it been since you COMPLETELY quit smoking cigarettes? (number)"
        PEH1Unt  = "About how long has it been since you COMPLETELY quit smoking cigarettes? (unit)"
        PEH2     = "Have you EVER smoked cigarettes EVERY DAY for at least 6 months?"
        PEH3Num  = "About how long has it been since you last smoked cigarettes EVERY DAY? (number)"
        PEH3Unt  = "About how long has it been since you last smoked cigarettes EVERY DAY? (unit)"
        PEH4     = "When you last smoked every day, on average how many cigarettes did you smoke each day?"
        PEH5     = "Altogether, ABOUT how many years did you smoke EVERY DAY? Do not include any time you stayed off cigarettes for 6 months or longer."
        PEH6     = "Around this time 12 MONTHS AGO, were you smoking cigarettes every day, some days, or not at all?"
        PEH6a    = "In the PAST 12 MONTHS, have you seen a doctor, dentist, nurse, or other health professionals?"
        PEH6b    = "During the PAST 12 MONTHS, did any doctor, dentist, nurse, or other health professional ADVISE you to stop smoking?"
        PEH7a    = "Think back to the YEAR BEFORE YOU QUIT SMOKING. During that time, was your usual cigarette brand menthol or non-menthol?"
        PEH7b    = "Again, in the YEAR BEFORE YOU QUIT SMOKING, what type of cigarette did you smoke most often -- a regular, a light, an ultralight, or some other type?"
        PEH7c1   = "In the year before you quit smoking, please tell me if each of the following was true for YOU: (A) You smoked [fill entry from H7b] because you felt that they were less harmful to your health than regular cigarettes."
        PEH7c2   = "In the year before you quit smoking, please tell me if each of the following was true for YOU: (B) You smoked [fill entry from H7b] as a way to try to quit smoking."
        PEH7c3   = "In the year before you quit smoking, please tell me if each of the following was true for YOU: (C) You smoked [fill entry from H7b] because they had a smoother flavor or lighter taste than regular cigarettes."
        PEH7d    = "Which was the more important reason that you smoked (lights/ultralights fill entry from H7b) in the year before you quit smoking - because you felt they were less harmful to your health, or because you were trying to quit?"
        PEH8NUM  = "During the year before you quit smoking, how soon after you woke up did you typically smoke your first cigarette of the day? (number)"
        PEH8UNT  = "During the year before you quit smoking, how soon after you woke up did you typically smoke your first cigarette of the day? (unit)"        
        PEH8b    = "During the year before you quit smoking, would you say you smoked your first cigarette of the day within the first 30 minutes of awakening?"
        PEH91    = "During the year before you quit smoking, please tell me if each of the following statements was true for YOU. (A) You had trouble going more than a few hours without smoking."
        PEH92    = "During the year before you quit smoking, please tell me if each of the following statements was true for YOU. (B) Even in a bad rainstorm, if you ran out of cigarettes, you would probably go to the store to get some more."
        PEH93    = "During the year before you quit smoking, please tell me if each of the following statements was true for YOU. (C) When you went without smoking for a few hours, you experienced craving?"
        PEH94    = "During the year before you quit smoking, please tell me if each of the following statements was true for YOU. (D) If you were in a public place where smoking wasn't allowed, you would probably go outside to smoke a cigarette, "
"even in cold or rainy weather"
        PEH10a1  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine gum"
        PEH10a2  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine patch"
        PEH10a3  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine nasal spray"
        PEH10a4  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine inhaler"
        PEH10a5  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine lozenge"
        PEH10a6  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A nicotine tablet"
        PEH10a7  = "Now I would like to ask about HOW you went about completely quitting smoking. When you quit smoking completely, did you use ANY of the following PRODUCTS: A prescription pill, such as Zyban, Buproprion, or Wellbutrin?"
        PEH10b1  = "When you quit smoking completely did you use ANY of the following? (A) A telephone help line or quit line"
        PEH10b2  = "When you quit smoking completely did you use ANY of the following? (B) A stop smoking clinic, class, or support group"
        PEH10b3  = "When you quit smoking completely did you use ANY of the following? (C) One-on-one counseling"
        PEH10b4  = "When you quit smoking completely did you use ANY of the following? (D) Books, pamphlets, videos, or other materials"
        PEH10b5  = "When you quit smoking completely did you use ANY of the following? (E) The Internet or World Wide Web"
        PEH10b6  = "When you quit smoking completely did you use ANY of the following? (F) Help or support from friends or family"
        PEH10b7  = "When you quit smoking completely did you use ANY of the following? (G) Acupuncture or hypnosis"
        PEH10b7a = "Which - (1) Acupuncture (2) Hypnosis (3) Both"
        PEH10c1  = "When you quit smoking completely did you do ANY of the following? (A) Try to quit by gradually cutting back on cigarettes"
        PEH10c2  = "When you quit smoking completely did you do ANY of the following? (B) Try to quit by switching to chewing tobacco, snuff, cigars, or pipes"
        PEH10c3  = "When you quit smoking completely did you do ANY of the following? (C) Did you switch to a 'lighter' cigarette in order to quit"
        PEH10c4  = "When you quit smoking completely did you do ANY of the following? (D) Did you try to give up cigarettes all at once"
        PEH10c4a = "[IF YES] Would you say you quit 'cold turkey' or some other way?"
        PEH11a   = "WHEN YOU QUIT SMOKING COMPLETELY - Did you use ANY OTHER methods or products?"
        PEH12    = "During the time that you did smoke, have you EVER SWITCHED from a stronger cigarette to a lighter cigarette for at least 6 months?"
        PEH131   = "For each of the following statements, please tell me whether it is a reason that you SWITCHED from a stronger to a lighter cigarette: (A) You switched because you felt that a lighter cigarette would be less harmful to your health."
        PEH132   = "For each of the following statements, please tell me whether it is a reason that you SWITCHED from a stronger to a lighter cigarette: (B) You switched as a way to try to quit smoking"        
        PEH133   = "For each of the following statements, please tell me whether it is a reason that you SWITCHED from a stronger to a lighter cigarette: (C) You switched to get a smoother or lighter flavor."
        PEH13d   = " Which is the MAIN reason you switched from a stronger to a lighter type of cigarette as a way to try to quit smoking, or to smoke a less harmful cigarette?"
        PEJ1a    = "(Have/Has) (you/name) EVER used a pipe, cigar, chewing tobacco or snuff, EVEN ONE TIME?"
        PEJ1bb1  = "(1) Smoked a pipe"
        PEJ1bb2  = "(2) Smoked cigars"
        PEJ1bb3  = "(3) Used chewing tobacco"
        PEJ1bb4  = "(4) Used Snuff"
        PEJ2a1   = "(Do/Does) (you/name) NOW smoke a pipe every day, some days or not at all?"
        PEJ2b1   = "On how many of the past 30 days did you smoke a pipe?"
        PEJ2a2   = "(Do/Does) (you/name) NOW smoke a cigar every day, some days or not at all?"
        PEJ2b2   = "On how many of the past 30 days did you smoke cigars?"
        PEJ2a3   = "(Do/Does) (you/name) NOW use chewing tobacco every day, some days or not at all?"
        PEJ2b3   = "On how many of the past 30 days did you use chewing tobacco?"
        PEJ2a4   = "(Do/Does) (you/name) NOW use snuff every day, some days or not at all?"
        PEJ2b4   = "On how many of the past 30 days did you use snuff?"
        PEJ3a1   = "How soon after you wake up do you typically smoke your first cigar? (number)"
        PEJ3a2   = "How soon after you wake up do you typically smoke your first cigar? (unit)"
        PEJ3a3   = "Would you say you smoke your first cigar of the day within the first 30 minutes of awakening?"
        PEJ3b1   = "How soon after you wake up do you typically FIRST smoke a pipe? (number)"
        PEJ3b2   = "How soon after you wake up do you typically FIRST smoke a pipe? (unit)"
        PEJ3b3   = "Would you say you smoke your first pipe of the day within the first 30 minutes of awakening?"
        PEJ3c1   = "How soon after you wake up do you typically FIRST use chewing tobacco? (number)"
        PEJ3c2   = "How soon after you wake up do you typically FIRST use chewing tobacco? (unit)"        
        PEJ3c3   = "Would you say you smoke your first use chewing tobacco within the first 30 minutes of awakening?"
        PEJ3d1   = "How soon after you wake up do you typically FIRST use snuff? (number)"
        PEJ3d2   = "How soon after you wake up do you typically FIRST use snuff? (unit)"
        PEJ3d3   = "Would you say you first use snuff within the first 30 minutes of awakening?"
        PEJ4     = "During the PAST 12 MONTHS, have you stopped smoking/using [fill entry Box 39] for one day or longer BECAUSE YOU WERE TRYING TO QUIT?"
        PEJ5NUM  = "The LAST TIME you stopped smoking/using [fill entry Box 39] in the Past 12 Months BECAUSE YOU WERE TRYING TO QUIT, how long did you stop for? (number)"
        PEJ5UNT  = "The LAST TIME you stopped smoking/using [fill entry Box 39] in the Past 12 Months BECAUSE YOU WERE TRYING TO QUIT, how long did you stop for? (unit)"
        PEJ6a    = "Was [fill entry J5] the LONGEST you went without smoking/using [fill entry Box 39] in the past 12 months?"
        PEJ6bNum = "During the past 12 MONTHS, what is the LONGEST length of time you stopped smoking/using [fill entry Box 39] because you were TRYING to quit? (number)"
        PEJ6bUnt = "During the past 12 MONTHS, what is the LONGEST length of time you stopped smoking/using [fill entry Box 39] because you were TRYING to quit? (unit)"
        PEJ7a1   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine gum"
        PEJ7a2   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine patch"
        PEJ7a3   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine nasal spray"
        PEJ7a4   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine inhaler"
        PEJ7a5   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine lozenge"
        PEJ7a6   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A nicotine tablet"
        PEJ7a7   = "Thinking back about the last time you tried to quit [fill entry Box 39] in the past 12 months: Did you use any of the following PRODUCTS: A prescription pill, such as Zyban, Buproprion, or Wellbutrin?"
        PEJ7b1   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (A) A telephone help line or quit line."
        PEJ7b2   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (B) A stop use of tobacco products clinic, class, or support group"
        PEJ7b3   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (C) One-on-one counseling"
        PEJ7b4   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (D) Help or support from friends or family"
        PEJ7b5   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (E) The Internet or World Wide Web"
        PEJ7b6   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (F) Books, pamphlets, videos, or other materials"
        PEJ7b7   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (G) Advice from a medical doctor, dentist or other health professional"
        PEJ7b7a  = "Which?- (1) Doctor (2) Dentist (3) Health professional (4) More than one of the previous choices?"
        PEJ7b8   = "The LAST TIME you tried to quit [fill entry Box 39], did you use ANY of the following: (H) Acupuncture or hypnosis"
        PEJ7b8a  = "Which?- (1) Acupuncture (2) Hypnosis (3) Both"
        PEJ7c1   = "The LAST TIME you tried to QUIT (fill entry Box 39) in the past 12 months, did you do ANY of the following: (A) Stopping by gradually cutting back on (fill entry Box 39) in order to TRY TO QUIT?"
        PEJ7c2   = "The LAST TIME you tried to QUIT (fill entry Box 39) in the past 12 months, did you do ANY of the following: (B) Did you TRY GIVING IT UP ALL AT ONCE?"
        PEJ7c2a  = "Would you say you TRIED TO QUIT 'cold turkey' or TRIED in some other way?"
        PEJ7d1   = "The LAST time you tried to QUIT (fill in entry Box 39) in the past 12 months: Did you use ANY OTHER methods or products?"        
        PEJJ11   = "Have you ever tried a product called... (A) Eclipse?"
        PEJJ12   = "Have you ever tried a product called... (B) Accord?"
        PEJJ13   = "Have you ever tried a product called... (C) Arriva?"    
        PEJJ14   = "Have you ever tried a product called... (D) Exalt?"
        PEJJ15   = "Have you ever tried a product called... (E) Revel?"
        PEJJ16   = "Have you ever tried a product called... (F) Omni?"
        PEJJ17   = "Have you ever tried a product called... (G) Advance?"        
        PEK1     = "Which of these best describes the area in which you work MOST of the time?"        
        PEK1b    = "(You said that you now work indoors).  Do you mainly work in an office building, in your own home, in someone else's home, or in another indoor place?"
        PEK1c    = "In which State (including DC), do you work on your main job or business?"
        PEK2a    = "Does your place of work have an official policy that restricts smoking in any way?"
        PEK3     = "Which of these best describes your place of work’s smoking policy for INDOOR PUBLIC OR COMMON AREAS, such as lobbies, rest rooms, and lunch rooms?"
        PEK3b    = "Which of these best describes your place of work's smoking policy for WORK AREAS?"                
        PEK4     = "Which statement best describes the rules about smoking INSIDE YOUR HOME?"
        PEK5     = "In bars and cocktail lounges, do you THINK that smoking SHOULD be allowed in all areas, allowed in some areas, or not allowed at all?"                
        PES78    = "Respondent relationship recode-relationship of respondent to the sample person"
        PESINTTP = "In what language was the interview for this person conducted?"
        PES81A   = "Method of Interview"
        INTRVIEW = "Interview status recode"
        HRMODE   = "Method of interview"
        SMOKSTAT = "Smoker recode"
        PRS35    = "Check item recode"
        PRS60    = "Check item recode"
        PRS64    = "Check item recode Who is responding for the supplement"
        PRS65    = "Check item recode"
        PRS66    = "Check item recode"
        PWNRWGT  = "Nonresponse weight"
        PWSRWGT  = "Self response weight"
        PRTOBTYP = "Recode of conditions in Box 39 to determine which tobacco product is being discussed in J4 then matched to that product's assigned numeric value in J1a.";
%Mend;  

%TUSCPS03(FEB03); Run;
%TUSCPS03(JUN03); Run;
%TUSCPS03(NOV03); Run;