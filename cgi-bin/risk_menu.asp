<%
'###############################
'#Script Name risk_menu.asp
'#This programs searches for records
'#based on the category chosen
'#
'##################################
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- meta tags-->
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<!--external style sheets-->
	<link href="../style.css" type="text/css" rel="stylesheet" />
	
	<style type="text/css">
		li { margin-bottom: .5em; clear: both; }
	</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}

//added 12/08/2011
function isNumberKey(evt)
      {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode > 31 && (charCode < 48 || charCode > 57))
            return false;

         return true;
      }

//-->
</script>
	<title>DCCPS: Advanced Search</title>
</head>

<body>
<!--$PUBLICATION_TYPE = $q->param("PUBLICATION_TYPE");
$AUDIENCE_GENDER = $q->param("AUDIENCE_GENDER");
$AUDIENCE_ETHNICITY = $q->param("AUDIENCE_ETHNICITY");
$OUTCOMES = $q->param("OUTCOMES");
$FOCUS = $q->param("FOCUS");
$CHANNELS_OF_RISK_COMMUNICATION  = $q->param("CHANNELS_OF_RISK_COMMUNICATION");
$SETTING = $q->param("SETTING");
$COMMUNICATOR = $q->param("COMMUNICATOR");
$CONTENT_OF_RISK_MESSAGE = $q->param("CONTENT_OF_RISK_MESSAGE");
$METHODOLOGICAL_ISSUES = $q->param("METHODOLOGICAL_ISSUES");
$AUDIENCE_ROLE = $q->param("AUDIENCE_ROLE");
$FORM_OF_RISK_INFORMATION = $q->param("FORM_OF_RISK_INFORMATION");
$HAZARD = $q->param("HAZARD");
$AUTHOR = $q->param("AUTHOR");
$YEAR = $q->param("YEAR");
$TITLE  = $q->param("TITLE");
$JOURNAL = $q->param("JOURNAL");
$VOLUME  = $q->param("VOLUME");
$ISSUE = $q->param("ISSUE");
$PAGES = $q->param("PAGES");
$SUMMARY_SENTENCE = $q->param("SUMMARY_SENTENCE");
$CONFIRMATION = $q->param("CONFIRMATION");
$ID_NUMBER = $q->param("ID_NUMBER");
$MISSION = $q->param("MISSION");
$EDITOR = $q->param("EDITOR");
$PUBLISHER = $q->param("PUBLISHER");
$UNIVERSITY = $q->param("UNIVERSITY");
$EVIDENCE_DATE = $q->param("EVIDENCE_DATE");
$CITY = $q->param("CITY");
$REPORT_NUMBER = $q->param("REPORT_NUMBER");
$NUMBER_OF_PAGES = $q->param("NUMBER_OF_PAGES");
$ADD_DATE = $q->param("ADD_DATE");
$LINK = $q->param("LINK");
$BOOK_TITLE = $q->param("BOOK_TITLE");
$INSTITUTIONAL_AUTHOR = $q->param("INSTITUTIONAL_AUTHOR");
$BT_LINK = $q->param("BT_LINK"); -->

<div id="skipmenu">
<a href="#skip" class="skippy">Skip Navigation</a>
<a name="top"></a>
</div> <!-- end skipmenu -->
<div id="wrapper">
    <!-- NCI Banner -->
	<div id="head-row1">
		<img src="../images/dccps-banner2.gif" alt="National Cancer Institute" width="1000" height="40" usemap="#Map" />
	</div>
	<!-- end of NCI Banner -->

    <!-- DCCPS Banner / Search Field -->
	<div id="head-row2">
		<div id="left2">
			<a href="../index.html"><img src="../images/dccps-banner.gif" alt="Cancer Control &amp; Population Sciences Home - NCI's Bridge to Public Health Research, Practice and Policy" width="730" height="68" /></a>
		</div>
		<div id="right2">
			<div id="north">
				<a href="http://twitter.com/NCICancerCtrl" title="Twitter">Twitter<img src="../images/twitter-icon.png" title="Twitter" alt="Twitter" width="20" height="20" /></a><a href="../exit_disclaimer.html"><img src="../images/Icon_External_Link.png" width="12" height="12" alt="exit disclaimer" /></a><a href="../exit_disclaimer.html"><img src="../images/Icon_External_Link.png" width="12" height="12" alt="exit disclaimer" /></a>  <a href="/cr-communication-videos.html" title="Multimedia">Multimedia<img src="../images/media-icon.gif" title="Multimedia" alt="Multimedia" width="20" height="20" /></a>
			</div>
			<form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
				<input type="hidden" name="site" value="DCCPS" />
				<input type="hidden" name="client" value="DCCPS_frontend" />
				<input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
				<input type="hidden" name="output" value="xml_no_dtd" />
				<input type="hidden" name="filter" value="0" />
				<input type="hidden" name="getfields" value="*" />
				<input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" value="Search" />
				<input type="image" src="../images/hbutton.gif"  class="hbutton" name="btnG" id="btnG" alt="Search" />
			</form>
			<br class="clearfloat" />
		</div>
		<br class="clearfloat" />
	</div>
	<!-- End of DCCPS Banner / Search Field -->
	
	<!-- Main Content -->
	<div id="mainarea">
	<!-- Left Column // DCCPS Link / Need Help Banner -->
	<div id="column-left1">
      	
	  <div id="dccps-link">
			<a href="../index.html">Cancer Control &amp; Population Sciences Home</a>
		</div>
		<p><a href="http://www.cancer.gov/help"><img src="../images/help-tile.jpg" alt="Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail" width="200" height="60" class="image1" /></a></p>
    </div>
    <!-- End of Left Column // DCCPS Link / Need Help Banner -->
    
    <!-- Right Column // Page Content -->
    <div id="column-mid2">
        <div class="content">
    <a name="skip"></a>
          <table width="100%" border="0" cellspacing="0" cellpadding="5" align="center">
	 
<tr> 
	 
<td colspan="5" valign="top" align="left"> <strong><a name="top"></a></strong>
	 <table width="159" border="0" align="right" cellpadding="1" cellspacing="0" class="gray-border">
	  
<tr>
	    
<td valign="top">
		<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
		  
<tr>
		    
<td valign="top" align="left" class="box-title"><img src="../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
<td valign="left" colspan="2" class="box-title"><div align="left">Return to:</div></td>
</tr>
		  
<tr>
		    
<td valign="top" colspan="3" class="gray-border"><img src="../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
</tr>
		  
<tr>
		    
<td valign="top" align="left" colspan="3"><img src="../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
</tr>
		  
<tr>
		    
<td valign="top" align="left"><img src="../images/spacer.gif" width="7" height="1" alt="" border="0"></td>
<td valign="top" class="leftnav" align="left" width="145">
			<table width="100%" border="0" cellspacing="0" cellpadding="2">
			  
<!-- tr>
				<td><a href="UICC_wcc_presentation.html" class="navigation-dark-red-link">HINTS Presentation at UICC World Cancer Congress</a></td>
			  </tr -->
			  
<tr>
				
<td><a href="/DECC/riskcommbib/index.html">Simple Search</a></td>
</tr>
			  
			  
			
</table>
<img src="../images/spacer.gif" width="1" height="4" border="0" alt=""><br></td>
<td valign="top" align="right"><img src="../images/spacer.gif" width="7" height="1" alt="" border="0"></td>
</tr>
		  
<tr>
		    
<td valign="top" align="left" colspan="3"><img src="../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
</tr>
		</table></td>
</tr>
	
</table>
	 
	 <p class="page-title"> 
         <b> Advanced Search</b>
  </p>
<p>Note that category names are given first, with additional clarifying information 
 sometimes appearing in brackets. The category codes include the text in 
 parentheses (if any is given), but not clarifying text occasionally present 
 in brackets.</blockquote></p>
<h3><b><a name="top"></a> 
 
<center>
BIBLIOGRAPHY CATEGORIES
</center>
</b> </h3>
<h3 align="center"><b><a href="#a">Publication Type</a> 
  | <a href="#b">Focus</a> | <a href="#c">Communicator</a> | <a href="#d">Audience Role</a> | <a href="#e">Audience Ethnicity</a> 
  | <a href="#f">Audience Gender</a> | <a href="#g">Setting</a> | <a href="#h">Channels of Risk Communication</a> | <a href="#i">Content Of Risk Message</a> 
  | <a href="#j">Form Of Risk Information</a> | <a href="#k">Outcomes</a> | <a href="#l">Hazard</a> | <a href="#m">Methodological Issues</a> |<br>
<br>
| <a href="#p">Author</a> |  <a href="#o">Title</a> |  <a href="#n">Year</a> |<br>
<br>

  <a href="/cgi-bin/total.asp">View all Records</a>
  <a name="search"></a> 
 </h3>
</table>
<table width="100%" border="1" bordercolor="#3366cc" bgcolor="#CCCCCC" cellpadding="2" cellspacing="3" align="center"> 
<form method=post action="/cgi-bin/risk_search.asp">

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="a"><b>PUBLICATION TYPE</b></a> 
 
</center>
[If multiple codes apply, the code assigned is the highest that describes
the publication.]
<br>
<a name="#a"></a> 
[<a href="#top">Return to Top</a>]<br>

<input type="radio" name="PUBLICATION_TYPE" value="1. Discussion">1. Discussion<br>
<input type="radio" name="PUBLICATION_TYPE" value="2. Review">2. Review<br>
<input type="radio" name="PUBLICATION_TYPE" value="3. Case study">3. Case study<br>
<input type="radio" name="PUBLICATION_TYPE" value="4. Empirical">4. Empirical<br>
<input type="radio" name="PUBLICATION_TYPE" value="5. Intervention">5. Intervention<br>

 
[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left"  valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="b"><b>FOCUS</b></a> 
 
</center>
[The code assigned indicates the coder's judgment as to the issue or issues most emphasized. Sometimes several of these topics receive detailed attention in an article. A maximum of three focus codes 
were assigned to each article. If more than three topics received emphasis the code "11.Multiple" was used.]
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="FOCUS" value="1. Communicator">1. Communicator<br>
<input type="checkbox" name="FOCUS" value="2. Audience">2. Audience<br>
<input type="checkbox" name="FOCUS" value="3. Setting">3. Setting<br>
<input type="checkbox" name="FOCUS" value="4. Channel">4. Channel<br>
<input type="checkbox" name="FOCUS" value="5. Content">5. Content<br>
<input type="checkbox" name="FOCUS" value="6. Format">6. Format<br>
<input type="checkbox" name="FOCUS" value="7. Outcome">7. Outcome<br>
<input type="checkbox" name="FOCUS" value="8. Measurement/evaluation">8. Measurement/evaluation<br>
<input type="checkbox" name="FOCUS" value="9. Risk perception/comprehension">9. Risk perception/comprehension<br>
<input type="checkbox" name="FOCUS" value="10. Decision aid">10. Decision aid<br>
<input type="checkbox" name="FOCUS" value="11. Multiple">11. Multiple<br>
<input type="checkbox" name="FOCUS" value="12. General">12. General<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="c"><b>COMMUNICATOR</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="COMMUNICATOR" value="0. Communicator (general)">0. Communicator (general)<br>
<input type="checkbox" name="COMMUNICATOR" value="1. Authority figure (non-expert)">1. Authority figure (non-expert)<br>
<input type="checkbox" name="COMMUNICATOR" value="2.Business/corporation/commercial">2.Business/corporation/commercial<br>
<input type="checkbox" name="COMMUNICATOR" value="3. Celebrity">3. Celebrity<br>
<input type="checkbox" name="COMMUNICATOR" value="4. Expert/researcher/scientist">4. Expert/researcher/scientist<br>
<input type="checkbox" name="COMMUNICATOR" value="5. Governmental organization (e.g., NCI)">5. Governmental organization (e.g., NCI)<br>
<input type="checkbox" name="COMMUNICATOR" value="6. Investigator/experimenter">6. Investigator/experimenter<br>
<input type="checkbox" name="COMMUNICATOR" value="7. Health professional/worker in health care setting">7. Health professional/worker in health care setting<br>
<input type="checkbox" name="COMMUNICATOR" value="8. Non-governmental organization(e.g. Am. Lung Assoc.)">8. Non-governmental organization(e.g. Am. Lung Assoc.)<br>
<input type="checkbox" name="COMMUNICATOR" value="9. Parent">9. Parent<br>
<input type="checkbox" name="COMMUNICATOR" value="10. Patient/peer/community member (affected)">10. Patient/peer/community member (affected)<br>
<input type="checkbox" name="COMMUNICATOR" value="11. Peer/community member (not affected)">11. Peer/community member (not affected)<br>
<input type="checkbox" name="COMMUNICATOR" value="12. Unspecified">12. Unspecified<br>
<input type="checkbox" name="COMMUNICATOR" value="13. Other">13. Other<br>
<input type="checkbox" name="COMMUNICATOR" value="14. Media">14. Media<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="d"><b>AUDIENCE ROLE</b></a></center><br> 
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="AUDIENCE_ROLE" value="0. Audience role (general)">0. Audience role (general)<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="1. Health/safety professional">1. Health/safety professional<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="2. Child/Pre-teen">2. Child/Pre-teen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="3. Teen">3. Teen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="4. College student/Graduate student">4. College student/Graduate student<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="5. Adult">5. Adult<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="6. Parent or prospective parent">6. Parent or prospective parent<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="7. Senior citizen">7. Senior citizen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="8. At risk/exposed-child or teen">8. At risk/exposed-child or teen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="9. At risk/exposed-adult">9. At risk/exposed-adult<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="10. At risk/exposed-parent of child">10. At risk/exposed-parent of child<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="11. At risk/ exposed-senior citizen">11. At risk/ exposed-senior citizen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="12. Ill-child">12. Ill-child<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="13. Ill-adult">13. Ill-adult<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="14. Ill-parent of ill child">14. Ill-parent of ill child<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="15. Ill-senior citizen">15. Ill-senior citizen<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="16. General public">16. General public<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="17. Other">17. Other<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="20. Patient (general)">20. Patient (general)<br>
<input type="checkbox" name="AUDIENCE_ROLE" value="21. Other professionals and experts">21. Other professionals and experts<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> 
</td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="e"><b>AUDIENCE ETHNICITY</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="AUDIENCE_ETHNICITY" value="1. African-American">1. African-American<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="2. Asian">2. Asian<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="3. Caucasian">3. Caucasian<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="4. Hispanic">4. Hispanic<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="5. Native American">5. Native American<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="6. Mixed/varied/multiple">6. Mixed/varied/multiple<br>
<input type="checkbox" name="AUDIENCE_ETHNICITY" value="7. Other">7. Other<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="white"> 
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="f"><b>AUDIENCE GENDER</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="radio" name="AUDIENCE_GENDER" value="1. Female">1. Female<br>
<input type="radio" name="AUDIENCE_GENDER" value="2. Male">2. Male<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="g"><b>SETTING</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="SETTING" value="0. Setting (general)">0. Setting (general)<br>
<input type="checkbox" name="SETTING" value="1. Armed Forces">1. Armed Forces<br>
<input type="checkbox" name="SETTING" value="2. community meeting/community group">2. community meeting/community group<br>
<input type="checkbox" name="SETTING" value="3. Focus group/small group">3. Focus group/small group<br>
<input type="checkbox" name="SETTING" value="4. General community">4. General community<br>
<input type="checkbox" name="SETTING" value="5. Health care setting">5. Health care setting<br>
<input type="checkbox" name="SETTING" value="6. Laboratory">6. Laboratory<br>
<input type="checkbox" name="SETTING" value="7. Prison">7. Prison<br>
<input type="checkbox" name="SETTING" value="8. Educational setting: school or university">8. Educational setting: school or university<br>
<input type="checkbox" name="SETTING" value="9. Workplace">9. Workplace<br>
<input type="checkbox" name="SETTING" value="10. Other">10. Other<br>
<input type="checkbox" name="SETTING" value="11. Home">11. Home<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="h"><b>CHANNELS OF RISK COMMUNICATION</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="'0. Channels (general)">'0. Channels (general)<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="1. Computer program (non-internet)">1. Computer program (non-internet)<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="2. Internet (listserves, web pages)">2. Internet (listserves, web pages)<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="3. Lecture">3. Lecture<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="4. One-on-one (face-to-face)">4. One-on-one (face-to-face)<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="5. Pamphlets, newsletters, fact sheets, handouts, or questionnaires">5. Pamphlets, newsletters, fact sheets, handouts, or questionnaires<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="6. Print media (newspaper or magazine)">6. Print media (newspaper or magazine)<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="7. Radio">7. Radio<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="8. Small groups/focus groups">8. Small groups/focus groups<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="9. Telephone">9. Telephone<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="10. TV">10. TV<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="11. Video">11. Video<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="12. Other">12. Other<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="21. Letter">21. Letter<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="22. Community meetings/community groups">22. Community meetings/community groups<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="23. Audiotape">23. Audiotape<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="24. Product label/packaging">24. Product label/packaging<br>
<input type="checkbox" name="CHANNELS_OF_RISK_COMMUNICATION" value="26. Media-general">26. Media-general<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="i"><b>CONTENT OF RISK MESSAGE</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="0. Content (general)">0. Content (general)<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="1. Cause/source/communicability of risk/mode of transmission">1. Cause/source/communicability of risk/mode of transmission<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="2. Communication style">2. Communication style<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="3. Definition of hazard">3. Definition of hazard<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="4. Expense of hazard">4. Expense of hazard<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="5. Likelihood-absolute">5. Likelihood-absolute<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="6. Likelihood-comparative (across people or hazards)">6. Likelihood-comparative (across people or hazards)<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="7. Possible health outcomes">7. Possible health outcomes<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="8. Possible psychosocial outcomes">8. Possible psychosocial outcomes<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="9. Preventability of hazard/personal control">9. Preventability of hazard/personal control<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="10. Risk factors (exposure levels, blood pressure, genetic risk)">10. Risk factors (exposure levels, blood pressure, genetic risk)<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="11. Severity of outcome">11. Severity of outcome<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="12. Time course of hazard">12. Time course of hazard<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="13. Treatability of hazard consequences">13. Treatability of hazard consequences<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="14. Other">14. Other<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="15. Costs/barriers/losses">15. Costs/barriers/losses<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="16. Benefits/gains">16. Benefits/gains<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="17. Skill building/instructions">17. Skill building/instructions<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="18. Reminder">18. Reminder<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="19. General information about hazard">19. General information about hazard<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="20. General information about recommended action">20. General information about recommended action<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="21. Test results">21. Test results<br>
<input type="checkbox" name="CONTENT_OF_RISK_MESSAGE" value="22. Personalized information">22. Personalized information<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="j"><b>FORM OF RISK INFORMATION</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="0. Format (general)">0. Format (general)<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="1. Decision aid">1. Decision aid<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="2. Graphical display">2. Graphical display<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="3. Interactive">3. Interactive<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="4. Text-numerical">4. Text-numerical<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="5. Text-verbal">5. Text-verbal<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="6. Other">6. Other<br>
<input type="checkbox" name="FORM_OF_RISK_INFORMATION" value="7. Oral/spoken">7. Oral/spoken<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="k"><b>OUTCOMES</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="OUTCOMES" value="0. Outcomes (general)">0. Outcomes (general)<br>
<input type="checkbox" name="OUTCOMES" value="1. Attitude">1. Attitude<br>
<input type="checkbox" name="OUTCOMES" value="2. Comprehension of message">2. Comprehension of message<br>
<input type="checkbox" name="OUTCOMES" value="3. Knowledge">3. Knowledge<br>
<input type="checkbox" name="OUTCOMES" value="4. Communicator-Audience relationship (e.g., trust)">4. Communicator-Audience relationship (e.g., trust)<br>
<input type="checkbox" name="OUTCOMES" value="5. Psychological distress/ affect/concern/preoccupation">5. Psychological distress/ affect/concern/preoccupation<br>
<input type="checkbox" name="OUTCOMES" value="6. Recall of message">6. Recall of message<br>
<input type="checkbox" name="OUTCOMES" value="7. Risk perception-likelihood">7. Risk perception-likelihood<br>
<input type="checkbox" name="OUTCOMES" value="8. Risk perception-severity">8. Risk perception-severity<br>
<input type="checkbox" name="OUTCOMES" value="9. Risk perception-other attribute of risk">9. Risk perception-other attribute of risk<br>
<input type="checkbox" name="OUTCOMES" value="10. Satisfaction/communication appraisal">10. Satisfaction/communication appraisal<br>
<input type="checkbox" name="OUTCOMES" value="11. Actual information seeking behavior">11. Actual information seeking behavior<br>
<input type="checkbox" name="OUTCOMES" value="12. Actual preventive health behavior/risky behavior">12. Actual preventive health behavior/risky behavior<br>
<input type="checkbox" name="OUTCOMES" value="13. Actual testing/screening">13. Actual testing/screening<br>
<input type="checkbox" name="OUTCOMES" value="14. Actual treatment behavior">14. Actual treatment behavior<br>
<input type="checkbox" name="OUTCOMES" value="15. Actual other behavior (e.g., activism)">15. Actual other behavior (e.g., activism)<br>
<input type="checkbox" name="OUTCOMES" value="16. Intended information seeking behavior">16. Intended information seeking behavior<br>
<input type="checkbox" name="OUTCOMES" value="17. Intended preventive health behavior/risky behavior">17. Intended preventive health behavior/risky behavior<br>
<input type="checkbox" name="OUTCOMES" value="18. Intended testing/screening">18. Intended testing/screening<br>
<input type="checkbox" name="OUTCOMES" value="19. Intended treatment behavior">19. Intended treatment behavior<br>
<input type="checkbox" name="OUTCOMES" value="20. Intended other behavior (e.g., activism)">20. Intended other behavior (e.g., activism)<br>
<input type="checkbox" name="OUTCOMES" value="21. Other">21. Other<br>
<input type="checkbox" name="OUTCOMES" value="22. Perceptions of recommended action/treatment">22. Perceptions of recommended action/treatment<br>
<input type="checkbox" name="OUTCOMES" value="23. Perceptions of efficacy/control">23. Perceptions of efficacy/control<br>
<input type="checkbox" name="OUTCOMES" value="24. Community or public response">24. Community or public response<br>
<input type="checkbox" name="OUTCOMES" value="25. Policy/regulation changes">25. Policy/regulation changes<br>
<input type="checkbox" name="OUTCOMES" value="26. Corporate response">26. Corporate response<br>
<input type="checkbox" name="OUTCOMES" value="27. Information processing/decision-making process">27. Information processing/decision-making process<br>

<input type="checkbox" name="OUTCOMES" value="28. Information/communication preferences">28. Information/communication preferences<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="l"><b>HAZARD</b></a> 
 
</center>
<br>
 
[Note: If a specific type of caner was coded, the general cancer code 6.0 was also assigned to the publication.]

<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="HAZARD" value="0. Hazard (general)">0. Hazard (general)<br>
<input type="checkbox" name="HAZARD" value="1. Alcohol">1. Alcohol<br>
<input type="checkbox" name="HAZARD" value="2. Arthritis">2. Arthritis<br>
<input type="checkbox" name="HAZARD" value="3. Asthma/Emphysema/Chronic lung disease">3. Asthma/Emphysema/Chronic lung disease<br>
<input type="checkbox" name="HAZARD" value="4. Automobile safety">4. Automobile safety<br>
<input type="checkbox" name="HAZARD" value="5. Birth defects">5. Birth defects<br>
<input type="checkbox" name="HAZARD" value="6. 1 Breast cancer">6. 1 Breast cancer<br>
<input type="checkbox" name="HAZARD" value="6. 2 Cervical cancer">6. 2 Cervical cancer<br>
<input type="checkbox" name="HAZARD" value="6. 3 Ovarian cancer">6. 3 Ovarian cancer<br>
<input type="checkbox" name="HAZARD" value="6. 4 Prostate cancer">6. 4 Prostate cancer<br>
<input type="checkbox" name="HAZARD" value="6. 5 Skin cancer">6. 5 Skin cancer<br>
<input type="checkbox" name="HAZARD" value="6. 9 Lung cancer">6. 9 Lung cancer<br>
<input type="checkbox" name="HAZARD" value="6.10 Pancreatic cancer">6.10 Pancreatic cancer<br>
<input type="checkbox" name="HAZARD" value="6.11 Bladder cancer">6.11 Bladder cancer<br>
<input type="checkbox" name="HAZARD" value="6.12 Colon cancer">6.12 Colon cancer<br>
<input type="checkbox" name="HAZARD" value="6.13 Other cancer">6.13 Other cancer<br>
<input type="checkbox" name="HAZARD" value="7. Diabetes">7. Diabetes<br>
<input type="checkbox" name="HAZARD" value="8. Drug abuse">8. Drug abuse<br>
<input type="checkbox" name="HAZARD" value="9. Pollutants/chemical exposure">9. Pollutants/chemical exposure<br>
<input type="checkbox" name="HAZARD" value="10. Other environmental (flooding, climate change/not pollutants)">10. Other environmental (flooding, climate change/not pollutants)<br>
<input type="checkbox" name="HAZARD" value="11. HIV/AIDS/STDs">11. HIV/AIDS/STDs<br>
<input type="checkbox" name="HAZARD" value="12. Other infectious diseases (e.g., Lyme disease)">12. Other infectious diseases (e.g., Lyme disease)<br>
<input type="checkbox" name="HAZARD" value="13. Hypertension/heart disease/stroke">13. Hypertension/heart disease/stroke<br>
<input type="checkbox" name="HAZARD" value="14. Hypothetical risk">14. Hypothetical risk<br>
<input type="checkbox" name="HAZARD" value="15. Injury/safety (non-auto)">15. Injury/safety (non-auto)<br>
<input type="checkbox" name="HAZARD" value="16. Radiation (radon, sun exposure, x-ray)">16. Radiation (radon, sun exposure, x-ray)<br>
<input type="checkbox" name="HAZARD" value="17. Smoking', '18. Multiple (greater than 5)">17. Smoking', '18. Multiple (greater than 5)<br>
<input type="checkbox" name="HAZARD" value="19. General, unspecified">19. General, unspecified<br>
<input type="checkbox" name="HAZARD" value="20. Other">20. Other<br>
<input type="checkbox" name="HAZARD" value="21. Dental issues">21. Dental issues<br>
<input type="checkbox" name="HAZARD" value="22. Treatment related risks">22. Treatment related risks<br>
<input type="checkbox" name="HAZARD" value="23. Food related risks">23. Food related risks<br>
<input type="checkbox" name="HAZARD" value="24. Menopause">24. Menopause<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<p align="center">
<a name="m"><b>METHODOLOGICAL ISSUES</b></a> 
 </p>
<!--</center>-->
<br>
[<a href="#top">Return to Top</a>]<br>

<input type="checkbox" name="METHODOLOGICAL_ISSUES" value="1. Evaluation criteria (how to determine effectiveness of risk communication)">1. Evaluation criteria (how to determine effectiveness of risk communication)<br>
<input type="checkbox" name="METHODOLOGICAL_ISSUES" value="2. Measurement (studies of different response formats)">2. Measurement (studies of different response formats)<br>
<input type="checkbox" name="METHODOLOGICAL_ISSUES" value="3. Other">3. Other<br>


[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="p"><b>AUTHOR</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<b>Author: </b>
<input type="text" name="AUTHOR" size="20" maxlength="40">

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>
<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="o"><b>TITLE</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<b>Title: </b>
<input type="text" name="TITLE" size="20" maxlength="40">

[<a href="#bottom">Go to Submit Button</a>]<br>
<br> </td> </tr>

<tr bgcolor="#FFFFFF">
<td width="100%" height="45" align="left" valign="top" bgcolor="#FFFFFF"> 
<center>
<a name="n"><b>YEAR</b></a> 
 
</center>
<br>
[<a href="#top">Return to Top</a>]<br>

<b>Year: </b> <input type="text" name="YEAR" size="5" maxlength="4" onKeyPress="return isNumberKey(event)">
<br>

[<a href="#bottom">Go to Submit Button</a>]<br>
<br>
<p align="center"><a name="bottom"><input type=submit value="Submit"></a>&nbsp;<input type=reset><br /><br />
 <a href="/cgi-bin/total.asp">View all Records</a></p>
</form>
 </table>
        </div>
    </div>
    <!-- End of Right Column // Page Content -->
    <br class="clearfloat" />
    </div>
    <!-- End of Main Content -->
    
    <!-- Last Updated -->
    <div class="update"></div>
    <!-- End of Last Updated -->
    
    <!-- Footer -->
    <div id="foot-row1">
	<ul class="flist2">
    <li><a href="/index.html">Site Home</a></li>
    <li>|</li>
    <li><a href="http://www.cancer.gov/global/contact">Contact Us</a></li>
    <li>|</li>
    <li><a href="http://www.cancer.gov/global/web/policies">Policies</a></li>
    <li>|</li>
    <li><a href="http://www.cancer.gov/global/web/policies/accessibility">Accessibility</a></li>
    <li>|</li>
    <li><a href="http://www.cancer.gov/global/viewing-files">Viewing Files</a></li>
    <li>|</li>
    <li><a href="http://www.cancer.gov/global/web/policies/foia">FOIA</a></li>
    <li>|</li>
	<li><a href="/help.html">Help</a></li>
    <li>|</li>
    <li><a href="/site-map.html">Site Map</a></li>
  </ul>
	<br />

	<ul class="flist2">
    <li><a href="http://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
    <li>|</li>
  <li><a href="http://www.nih.gov/">National Institutes of Health</a></li>
  <li>|</li>
  <li><a href="http://www.cancer.gov/">National Cancer Institute</a></li>
  <li>|</li>
  <li><a href="http://www.usa.gov/">USA.gov</a></li>
  </ul>
  <div class="nih-tagline">NIH…Turning Discovery Into Health<sup>&#174;</sup></div>
	</div>
    <!-- End of Footer -->
  </div>
<!-- Image map for head-row1 -->
<map name="Map" id="Map">
	<area shape="rect" coords="12,3,294,38" href="http://www.cancer.gov/" alt="National Cancer Institute" />
	<area shape="rect" coords="715,10,892,33" href="http://www.nih.gov" alt="U.S. National Institutes of Health" />

	<area shape="rect" coords="893,10,988,33" href="http://www.cancer.gov/" alt="National Cancer Institute" />
</map>
<!-- End of Image map for head-row1 -->

<!-- GA Code -->
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-25589575-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<!-- End of GA Code -->
<script language="JavaScript" type="text/javascript" src="/JS/Omniture/WA_DCCPS_PageLoad.js"></script>
</body>
</html>