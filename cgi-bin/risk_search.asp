<!--#include  virtual ="/includefile/SQLInjectionPrevention.asp"-->

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
	<title>DCCPS: RISK COMMUNICATION Report</title>
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
          <table width="752" border="0" cellpadding="0" cellspacing="0">
      <tr><td width="752">
        
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
          <tr>
            <td valign="top" align="left" class="page-title"><b>Search Results</b></td>
            <td align="right"><table width="230" border="1" cellspacing="0" cellpadding="5" align="right" bordercolor="#993399">
                <tr> 
                  <td><b>Return to:
                  <ul>
                    <li><a href="/DECC/riskcommbib/index.html">Simple Search</a></li>
                    <li><a href="/cgi-bin/risk_menu.asp">Advanced Search</a></li>
                  </ul></b></td>
                </tr>
              </table></td>
          </tr>
          
          <tr>
            <td align="left"> 
              <%
	        strID_NUMBER = TRim(Request.Form("ID_NUMBER"))
	        strPUBLICATION_TYPE = SQLInjectionPrevention(TRim(Request.Form("PUBLICATION_TYPE")))
	        strAUDIENCE_GENDER = SQLInjectionPrevention(TRim(Request.Form("AUDIENCE_GENDER")))
	        strAUDIENCE_ETHNICITY = SQLInjectionPrevention(TRim(Request.Form("AUDIENCE_ETHNICITY")))
	        strOUTCOMES = SQLInjectionPrevention(TRim(Request.Form("OUTCOMES")))
	        strFOCUS = SQLInjectionPrevention(TRim(Request.Form("FOCUS")))
	        strCHANNELS_OF_RISK_COMMUNICATION  = SQLInjectionPrevention(TRim(Request.Form("CHANNELS_OF_RISK_COMMUNICATION")))
	        strSETTING = SQLInjectionPrevention(TRim(Request.Form("SETTING")))
	        strCOMMUNICATOR = SQLInjectionPrevention(TRim(Request.Form("COMMUNICATOR")))
	        strCONTENT_OF_RISK_MESSAGE = SQLInjectionPrevention(TRim(Request.Form("CONTENT_OF_RISK_MESSAGE")))
	        strMETHODOLOGICAL_ISSUES = SQLInjectionPrevention(TRim(Request.Form("METHODOLOGICAL_ISSUES")))
	        strAUDIENCE_ROLE = SQLInjectionPrevention(TRim(Request.Form("AUDIENCE_ROLE")))
	        strFORM_OF_RISK_INFORMATION = SQLInjectionPrevention(TRim(Request.Form("FORM_OF_RISK_INFORMATION")))
	        strHAZARD = SQLInjectionPrevention(TRim(Request.Form("HAZARD")))
	        strAUTHOR = SQLInjectionPrevention(TRim(Request.Form("AUTHOR")))
	        strYEAR = SQLInjectionPrevention(TRim(Request.Form("YEAR")))
	        strTITLE  = SQLInjectionPrevention(TRim(Request.Form("TITLE")))
	        strJOURNAL = SQLInjectionPrevention(TRim(Request.Form("JOURNAL")))
	        strVOLUME  = SQLInjectionPrevention(TRim(Request.Form("VOLUME")))
	        strISSUE = SQLInjectionPrevention(TRim(Request.Form("ISSUE")))
	        strPAGES = SQLInjectionPrevention(TRim(Request.Form("PAGES")))
	        strSUMMARY_SENTENCE = SQLInjectionPrevention(TRim(Request.Form("SUMMARY_SENTENCE")))
	        strCONFIRMATION = SQLInjectionPrevention(TRim(Request.Form("CONFIRMATION")))
        	
	         'response.write ("TITLE: " & strTITLE & "<br />" )
			 'response.write ("TITLE:" & Request.Form("TITLE") & "<br />")
						

	        strWhere = ""
	        strConjunc = "WHERE "

	        IF strPUBLICATION_TYPE <> "" Then
		        strWhere = strWhere &  strconjunc & "(CONFIRMATION = 'x' AND PUBLICATION_TYPE LIKE '%" & strPUBLICATION_TYPE & "%')" 
		        strconjunc = " OR "
		        strpub = "<li>Publication Type = " &  strPUBLICATION_TYPE & "</li>" %>
              <blockquote><%= strpub%></blockquote>
              <% 
	        End IF 

        IF strAUDIENCE_GENDER <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND AUDIENCE_GENDER LIKE '%" & strAUDIENCE_GENDER & "%') "
	        strConjunc = " OR "
	        strag = "<li>Audience Gender = " & strAUDIENCE_GENDER & "</li>" %>
              <blockquote><%= strag%></blockquote>
              <% End IF 

        IF strTITLE <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND upper(TITLE) LIKE upper('%" & strTITLE & "%')) "
	        strConjunc = " OR "
	        strti = "<li>Title  = " & strTITLE &  "</li>" %>
              <blockquote><%= strti%></blockquote>
              <% End IF 

        if strAUTHOR  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND upper(AUTHOR) LIKE  upper('%" & strAUTHOR & "%')) "
	        strConjunc = " OR "
	        straut = "<li>Author  = " & strAUTHOR & "</li>" %>
              <blockquote><%= straut%></blockquote>
              <% End IF


        if  strYEAR  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND YEAR LIKE '%" & strYEAR & "%') "
	        strConjunc = " OR "
	        strye = "<li>Year  = " & strYEAR & "</li>" %>
              <blockquote><%= strye%></blockquote>
              <% End IF


        if strAUDIENCE_ETHNICITY  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND AUDIENCE_ETHNICITY LIKE '%" & strAUDIENCE_ETHNICITY & "%') "
	        strConjunc = " OR "
	        strae = "<li>Audience Ethnicity = " & strAUDIENCE_ETHNICITY  & "</li>" %>
              <blockquote><%= strae%></blockquote>
              <% End IF

        if  strOUTCOMES  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND OUTCOMES LIKE '%" & strOUTCOMES & "%') "
	        strConjunc = " OR "
	        strout = "<li>Outcomes = " & strOUTCOMES & "</li>" %>
              <blockquote><%= strout%></blockquote>
              <%End IF


        if strFOCUS  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND FOCUS LIKE '%" & strFOCUS & "%') "
	        strConjunc = " OR "
	        strfu = "<li>Focus = " & strFOCUS & "</li>" %>
              <blockquote> <%= strfu%></blockquote>
              <% End IF

        if strSETTING  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND SETTING LIKE '%" & strSETTING & "%') "
	        strConjunc = " OR "
	        strse = "<li>Setting = " & strSETTING & "</li>" %>
              <blockquote><%= strse%></blockquote>
              <% End IF


        if strCHANNELS_OF_RISK_COMMUNICATION <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND CHANNELS_OF_RISK_COMMUNICATION LIKE '%" & strCHANNELS_OF_RISK_COMMUNICATION & "%') "
	        strConjunc = " OR "
	        strcoc = "<li>Channels of risk communication = " & strCHANNELS_OF_RISK_COMMUNICATION & "</li>" %>
              <blockquote><%= strcoc%></blockquote>
              <% End IF

        if  strCOMMUNICATOR  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND COMMUNICATOR LIKE '%" & strCOMMUNICATOR & "%') "
	        strConjunc = " OR "
	        strcu = "<li>Communicator = " & strCOMMUNICATOR & "</li>" %>
              <blockquote><%= strcu%></blockquote>
              <% End IF


        if strCONTENT_OF_RISK_MESSAGE  <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND CONTENT_OF_RISK_MESSAGE LIKE '%" & strCONTENT_OF_RISK_MESSAGE & "%') "
	        strConjunc = " OR "
	        strcor = "<li>Content of risk message = " & strCONTENT_OF_RISK_MESSAGE & "</li>" %>
              <blockquote><%= stcor%></blockquote>
              <% End IF

        if strMETHODOLOGICAL_ISSUES   <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND METHODOLOGICAL_ISSUES LIKE '%" & strMETHODOLOGICAL_ISSUES & "%') "
	        strConjunc = " OR "
	        strmi = "<li>Methodological Issues = " &  strMETHODOLOGICAL_ISSUES & "</li>" %>
              <blockquote><%= strmi%></blockquote>
              <% End IF


        if strAUDIENCE_ROLE <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND AUDIENCE_ROLE LIKE '%" & strAUDIENCE_ROLE & "%') "
	        strConjunc = " OR "
	        strar = "<li>Audience Role = " & strAUDIENCE_ROLE & "</li>" %>
              <blockquote><%= strar%></blockquote>
              <% End IF


        if strFORM_OF_RISK_INFORMATION <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND FORM_OF_RISK_INFORMATION LIKE '%" & strFORM_OF_RISK_INFORMATION & "%') "
	        strConjunc = " OR "
	        strfo = "<li>Form of risk information = " & strFORM_OF_RISK_INFORMATION & "</li>" %>
              <blockquote><%= strfo%></blockquote>
              <% End IF

        if strHAZARD <> "" Then 
	        strWhere = strWhere &  strconjunc &  "(CONFIRMATION = 'x' AND HAZARD LIKE '%" & strHAZARD & "%') "
	        strConjunc = " OR "
	        strhaz = "<li>Hazard = " &  strHAZARD & "</li>" %>
              <blockquote><%= strhaz%></blockquote>
              <% End IF %>
            </td>
          </tr>
          <tr>
            <td valign="top" align="left" colspan="4"><p><br>Your search results are listed here in a short form (author, title and year). <br>Click on author's name to see the full, coded record.</p>
              <p>You searched for:</p>
            </td>
          </tr>
  <%
   Dim constring, Conn, rs, MySQL
		
   SET Conn = Server.CreateObject("ADODB.Connection")
   Const SchemaName = "evidence"
  
   'Conn.open "DSN=sc1; uid=evidence; pwd=ev1234;" 
   Conn.open "DSN=contracts; uid=evidence; pwd=ev1234;" 
   Set rs = Server.CreateObject("ADODB.RecordSet")
   rs.cursortype = adopenStatic
   
   MySQL = "SELECT  * from evidence " & strWhere & " order by AUTHOR "
   rs.open MySQL, conn, 3, 3
   'response.write ("mysqL: " &  MySQL)
%>
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td>
                <td align="left"><b>There are <%= rs.recordCount %> record(s) that meet the search requirements.</b><br /><br /></td>
              </tr>
          </table>
          
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <% 
        IF not rs.EOF Then 
	        While not rs.EOF
	  %>
            <tr>
              <td align="left">
                <a href="risk_result.asp?ID_NUMBER=<%= Server.HTMLEncode(rs("id_number"))%>"><%= rs("AUTHOR")%></a>&nbsp;<%= rs("TITLE")%>&nbsp;<%= rs("YEAR")%>
                <br><br></td>
            </tr>
            <% 
	        rs.MoveNext
		    WEND 
		End IF 
	%>
            </table>
          
          <!--</td>
  </tr>-->
        </table>
      </div>
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