<!--#include  virtual ="/includefile/SQLInjectionPrevention.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- meta tags-->
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
	<!--external style sheets-->
	<link href="../styles.css" rel="stylesheet" type="text/css"/>
	<link href="../style.css" type="text/css" rel="stylesheet"/>
	
	<style type="text/css">
		li { margin-bottom: .5em; clear: both; }
	</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_preloadimages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadimages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
	<title>DCCPS: Risk Comm Bibliography: Search Results Detail</title>
</head>

<body>
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
				<a href="http://twitter.com/NCICancerCtrl" title="Twitter">Twitter<img src="../images/twitter-icon.png" title="Twitter" alt="Twitter" width="20" height="20" /></a><a href="../exit_disclaimer.html"><img src="../images/Icon_External_Link.png" width="12" height="12" alt="exit disclaimer" /></a> <a href="http://dccps.cancer.gov/cr-communication-videos.html" title="Multimedia">Multimedia<img src="../images/media-icon.gif" title="Multimedia" alt="Multimedia" width="20" height="20" /></a><a href="../exit_disclaimer.html"><img src="../images/Icon_External_Link.png" width="12" height="12" alt="exit disclaimer" /></a>
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
    <h1>Cancer Control Research</h1>

<!-- #include file="utility.asp" -->
<%

	dim strApplID
	strApplID = Request.QueryString("ApplID")
		
	' Do this for error checking and to prevent cross-site scripting vulnerabilities
	If (Not IsNumeric(strApplID)) or vbNullString = strApplID Then
		ShowError("ApplID parameter must be numeric.")
	End If

	' HF (3/14/08) CR #40800 - In most cases throughout the public website, we will be populating
	' the abstract from the database.  In one case, DandD grants in D4D, we need to populate from 
	' a static abstract file, which is stored in XML format.
	
	dim grantType
	grantType = Request.QueryString("grantType")
	If (grantType <> vbNullString) Then
		If (grantType = "DandD") Then
			GetAbstractFromXml()
		Else
			GetAbstractFromDb(bIncludeSecondaryPIs)
		End If
	Else
		GetAbstractFromDb(bIncludeSecondaryPIs)
	End If
	%>
	<%
	' HF (3/13/08) CR #40800 - Populate the abstract information from the database (the normal case).
	' HF (10/22/09) CR #43362 - Added parameter to display 2ndary PIs.
	Function GetAbstractFromDb(bIncludeSecondaryPIs)
	   dim cmd
	   dim rst
	   dim lngAbstractSize
	
	   set cmd = GetCommand("GetAbstractRst", vbNullString)
	   if (bIncludeSecondaryPIs = vbNullString) Then bIncludeSecondaryPIs = 0
	
	   ' Ideally this would be a procedure with several OUT parameters.  However, returning
	   ' a CLOB via an OUT parameter with Chilisoft 3.6.2 produces an ORA-01036 error.
	   ' This is probably a bug in Chilisoft or the ODBC driver that comes with it, but
	   ' I can't figure out the cause of the bug.  Using a recordset works around the problem.
	   	cmd.Parameters.Append cmd.CreateParameter("appl_id", adInteger, adParamInput, 4, strApplID)
	   	cmd.Parameters.Append cmd.CreateParameter("bIncludeSecondaryPIs", adInteger, adParamInput, 4, bIncludeSecondaryPIs)
		Set rst = cmd.Execute
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	   
	   	If rst.EOF Then
	    	ShowError("No abstract is available for grant application " & strApplID & ".")
		End If
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
		DisplayAbstract rst, bIncludeSecondaryPIs
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	
	End Function
	%>
	<%
	' HF (3/13/08) CR #40800 - Populate the abstract information from a static XML file (DandD grants in D4D only).
	Function GetAbstractFromXml
	   dim cmd
	   dim rst
	   dim lngAbstractSize
	
		' Populate the resultset from an XML file containing abstract information.
		Set rst = Server.CreateObject("ADODB.Recordset")
		rst.Open "d:\wwwroot\othersites\cancercontrol\dev\d4d\Supplemental_DandD_Abstracts.xml", "Provider=MSPersist"
	
			' One researcher has 2 abstracts, so enter loop.
			Do While (Not rst.EOF)
			  	' Response.write "." & rst("appl_id") & ". strAppId ." & strApplID & "." & vbCrLf
				If (Instr(1, rst("appl_id"), strApplID) > 0) Then
					DisplayAbstract rst, 0
		      	End If
		  	    rst.MoveNext
	  		Loop
	End Function
	%>
	<%
	' HF (3/13/08) CR #40800 - Display abstract info in the browser.
	' HF (10/22/09) CR #43362 - Added parameter to display 2ndary PIs.
	Function DisplayAbstract(rst, bIncludeSecondaryPIs)
 	    Response.write "<p></p>" & rst("full_grant_num") & "<br>" & vbCrLf
		If (bIncludeSecondaryPIs = 1) Then
			Response.write rst("all_pi_names") & "<br>" & vbCrLf
		Else
			Response.write BuildName(rst("last_name"), rst("first_name"), rst("mi_name")) & "<br>" & vbCrLf
		End If
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
		
	    Response.write rst("project_title") & "<br></b></font></p>" & vbCrLf
		Response.write("<h3>Abstract</h3>")
        Response.write("<p style='margin-left: 5%; margin-right: 5%' align='left'>" & rst("abstract_text") & "</p>" )
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	End Function

   	%>

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
      <li><a href="../search.html" title="Search">Search</a></li>
      <li><a href="../help.html" title="Help">Help</a></li>
      <li><a href="../contact.html" title="Contact Us">Contact Us</a></li>
      <li><a href="http://www3.cancer.gov/accessibility/nci508.htm" title="Accessibility">Accessibility</a></li>
      <li><a href="http://www.cancer.gov/global/viewing-files">Viewing Files</a></li>
      <li><a href="http://dccps.cancer.gov/privacy-policy.html" title="Privacy Policy">Privacy Policy</a></li>
      <li><a href="http://www.cancer.gov/global/web/policies/page6">FOIA</a></li>
    </ul>
    </div>
    <div id="foot-row2">
    <ul class="flist1">
      <li><a href="http://cancercontrol.cancer.gov/"><img src="../images/footer_dccps.gif" alt="DCCPS" title="DCCPS" width="58" height="31" /></a></li>
      <li><a href="http://www.cancer.gov/"><img src="../images/footer_nci.gif" alt="National Cancer Institute" title="National Cancer Institute" width="63" height="31" /></a></li>
      <li><a href="http://www.dhhs.gov/"><img src="../images/footer_hhs.gif" alt="Department of Health and Human Services" title="Department of Health and Human Services" width="39" height="31" /></a></li>
      <li><a href="http://www.nih.gov/"><img src="../images/footer_nih.gif" alt="National Institute of Health" title="National Institute of Health" width="46" height="31" /></a></li>
      <li><a href="http://www.usa.gov/"><img src="../images/footer_firstgov.gif" alt="USA.gov" title="USA.gov" width="91" height="31" /></a></li>
    </ul>
    <div class="nih-tagline">NIH…Turning Discovery Into Health</div>
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