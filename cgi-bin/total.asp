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
//-->
</script>

	<title>DCCPS: Search Results</title>
</head>

<body>
<%
   Dim constring, Conn, rs, MySQL
    
   SET Conn = Server.CreateObject("ADODB.Connection")
   Const SchemaName = "evidence"
  
   Conn.open "DSN=contracts; uid=evidence; pwd=ev1234;" 
   Set rs = Server.CreateObject("ADODB.RecordSet")
   rs.cursortype = adopenStatic
   
   MySQL = "SELECT  * from evidence WHERE  CONFIRMATION = 'x'"
   rs.open MySQL, conn, 3, 3
 %>
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
          <table width="752" border="0" cellpadding="0" cellspacing="0"><!-- table 1 -->
	  <tr>
	    <td width="752" valign="top">
			<table width="752" border="0" cellpadding="0" cellspacing="0">
	  		
<tr>
	    		
<td width="752" colspan="2" valign="top">
			

<h1>Search Results</h1></td>
</tr>
   
<tr>
   		
<td>
			<p> <b>There are <%= rs.RecordCount%>
							total record(s).</b></p>
<p>Results are listed here in a short form (author, title and year). Click on author's name to see the full, coded record.</p>
<td><div align="right">
<table width="159" cellspacing="0" cellpadding="1" border="0" class="gray-border">
	  
<tr>
	    
<td valign="top">
		<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
		  
<tr>
		    
<td valign="top" align="left" class="box-title"><img src="../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
<td valign="left" colspan="2" class="box-title">Return to:</td>
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
			  
<tr>
				
<td><a href="/cgi-bin/risk_menu.asp">Advanced Search</a></td>
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
</div>
</table>
<!-- end table 1-->


<% 
 Set rs2 = Server.CreateObject("ADODB.RecordSet")
    '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   'this is the statement handle that begins the sql statement
   'If the record's date posted value is greater than or equal to 42 days old it will be selected
   '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
   MySQL2 = "SELECT  * from evidence.evidence  WHERE CONFIRMATION = 'x' order by AUTHOR"
   rs2.open MySQL2, conn, 3, 3

	While not rs2.EOF
     'my @row = ( "$PUBLICATION_TYPE", "$AUDIENCE_GENDER", "$AUDIENCE_ETHNICITY", "$OUTCOMES", "$FOCUS",
            '"$CHANNELS_OF_RISK_COMMUNICATION", "$SETTING", "$COMMUNICATOR", "$CONTENT_OF_RISK_MESSAGE", "$METHODOLOGICAL_ISSUES", "$AUDIENCE_ROLE", "$FORM_OF_RISK_INFORMATION",
			'"$HAZARD", "$AUTHOR", "$YEAR", "$TITLE", "$JOURNAL", "$VOLUME", "$ISSUE", "$PAGES", "$SUMMARY_SENTENCE", "$CONFIRMATION" , "$ID_NUMBER");
	' while (my @row = $sth->fetchrow_array()) %>
          
	<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tr>
		    <td> <b><a href="risk_result.asp?ID_NUMBER=<%= rs2("id_number")%>"><%= rs2("AUTHOR")%></a>&nbsp;<%= rs2("TITLE")%>&nbsp;<%= rs2("YEAR")%>
				</b></td>
		</tr><br>
	 </table><br>
<% 	 	rs2.movenext
	 WEND %>
				
     </td>
  </tr>
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