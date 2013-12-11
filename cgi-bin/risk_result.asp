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
	<title>DCCPS: Risk Comm Bibliography: Search Results Detail</title>
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
    <h1>Search Results Detail</h1>
    <div style="width:200px; float:right;">
    <strong>Return to:</strong><br />
	<a href="javascript:history.go(-1);">Search Results</a><br />
	<a href="/DECC/riskcommbib/index.html">Simple Search</a><br />
	<a href="/cgi-bin/risk_menu.asp">Advanced Search</a>
    </div>
    <br clear="all"/>
<%
	   dim constring, Conn, rs, MySQL
	  
	   SET Conn = Server.CreateObject( "ADODB.Connection" )
	    Const SchemaName = "evidence"
	    'Conn.open "DSN=sc1; uid=evidence; pwd=ev1234;" 
		Conn.open "DSN=contracts; uid=evidence; pwd=ev1234;"
	  	   
	   ID_NUMBER = SQLInjectionPrevention(request.querystring("ID_NUMBER"))
	   
	   Set rs = Server.CreateObject("ADODB.RecordSet")
	   MySQL = "SELECT  *  from evidence  WHERE CONFIRMATION = 'x' and ID_NUMBER = '" & ID_NUMBER & "' "
	   rs.open MySQL, conn, 3, 3
	   'response.write ("mysql: " &  MySQL)
	   
	   dim count 
	   
	   count = rs.RecordCount
		
	   if count > 0 then
	 %>
	 
<!--my $array_ref = $sth->
fetchall_arrayref();
	foreach my $row (@$array_ref)
	 {
 my ( $PUBLICATION_TYPE, $AUDIENCE_GENDER, $AUDIENCE_ETHNICITY, $OUTCOMES, $FOCUS,
            $CHANNELS_OF_RISK_COMMUNICATION, $SETTING, $COMMUNICATOR, $CONTENT_OF_RISK_MESSAGE, $METHODOLOGICAL_ISSUES, $AUDIENCE_ROLE, $FORM_OF_RISK_INFORMATION,
			$HAZARD, $AUTHOR, $YEAR, $TITLE, $JOURNAL, $VOLUME, $ISSUE, $PAGES, $SUMMARY_SENTENCE, $CONFIRMATION, $ID_NUMBER, $NOTES, $MISSION, $EDITOR, $PUBLISHER, $UNIVERSITY, $EVIDENCE_DATE, $CITY, $REPORT_NUMBER, $NUMBER_OF_PAGES,
		 $ADD_DATE, $LINK, $BOOK_TITLE, $INSTITUTIONAL_AUTHOR , $BT_LINK)= @$row;
  -->
        <div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><strong>Author:</strong></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("AUTHOR")%></div>
</div>
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><strong>Year:</strong></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("YEAR")%></div>
</div>


<% If rs("LINK") <> "" Then %>
		 <div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><strong>Title:</strong><br>
			 Click on the title to see the PubMed abstract.</div>	
    <div style="width:500px; float:left; padding:3px;"><a href="<%= rs("LINK")%>"><%= rs("TITLE")%></a></div>
</div>
		 
<% ELSE %>
				 <div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><strong>Title:</strong></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("TITLE")%></div>
</div> 
		 
<% End IF %>
		 
<% If rs("EDITOR") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Editor:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("EDITOR")%></div>
</div> 
		 
<% End IF %>
		 
		  
<% If rs("INSTITUTIONAL_AUTHOR") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Institutional Author:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("INSTITUTIONAL_AUTHOR")%></div>
</div> 
		 
<% End IF %>
		 
		 
		 
<% If rs("BT_LINK") <> "" and rs("BOOK_TITLE") <> "" Then %>
	<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Book Title:</b></div>
    <div style="width:500px; float:left; padding:3px;"><a href="<%= rs("BT_LINK")%>"><%= rs("BOOK_TITLE")%></a></div>
	 </div>
 <% ELSEIf rs("BOOK_TITLE") <> "" Then %>
	 <div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Book Title:</b></div>
		 <div style="width:500px; float:left; padding:3px;"><%= rs("BOOK_TITLE")%></div></div>
 <% End IF %>
		 		
		  
<% If rs("CITY") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>City:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("CITY")%> </div>
</div> 
		
<% End IF %>
		 
		  
		  
<% If rs("PUBLISHER") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Publisher:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("PUBLISHER")%></div>
</div> 
		 
<% End IF %>
		
         
		  
<% If rs("JOURNAL") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Journal:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("JOURNAL")%></div>
</div> 
		  
<% End IF %>
		 
		 
		  
<% If rs("VOLUME") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Volume:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("VOLUME")%>  </div>
</div> 
		 
<% End IF %>
		 
		
		  
<% If rs("ISSUE") <> "" Then %>
          
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Issue:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("ISSUE") %></div>
</div> 
		 
<% End IF %>
		 
		 
		
		  
<% If rs("PAGES") <> "" Then %>
          
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Pages:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("PAGES") %></div>
</div> 
		 
<% End IF %>
		 
		
		 
<% If rs("REPORT_NUMBER") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Report Number:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("REPORT_NUMBER")%>  </div>
</div> 
		
<% End IF %>
		 
		
		  
<% If  rs("SUMMARY_SENTENCE") <> "" Then %>
          
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Summary Sentence:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("SUMMARY_SENTENCE")%> </div>
</div> 
		 
<% End IF %>
		 
		  
<%If  rs("UNIVERSITY") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>University:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("University")%></div>
</div> 
		 
<% End IF %>
		 
		
		  
<% If  rs("NOTES") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Notes:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("NOTES")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		  
<% If  rs("MISSION") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Mission:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("MISSION") %></div>
</div> 
 
		 
<% End IF %>
		 
		
		  
<% If rs("PUBLICATION_TYPE") <> "" Then %>
          
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Publication Type:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("PUBLICATION_TYPE")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		
		  
<% If rs("FOCUS") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Focus:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("FOCUS")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		 
		  
<% If rs("COMMUNICATOR") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Communicator:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("COMMUNICATOR")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		
		  
<% If rs("AUDIENCE_ROLE") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Audience Role:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("AUDIENCE_ROLE")%></div>
</div> 
		
<% End IF %>
		
		
		  
<% If rs("AUDIENCE_ETHNICITY") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Audience Ethnicity:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("AUDIENCE_ETHNICITY")%></div>
</div> 
		 
<% End IF %>
		 
		
		  
<% If rs("AUDIENCE_GENDER") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Audience Gender:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("AUDIENCE_GENDER")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		  
<% If rs("SETTING") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Setting:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("SETTING")%></div>
</div> 
 
		 
<% End IF %>
		 
		 
		  
<% If rs("CHANNELS_OF_RISK_COMMUNICATION") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Channels of risk communication:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("CHANNELS_OF_RISK_COMMUNICATION") %></div>
</div> 
		
<% End IF %>
		
		
		  
<% If rs("CONTENT_OF_RISK_MESSAGE") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Content of risk message:</b> </div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("CONTENT_OF_RISK_MESSAGE")%></div>
</div> 
		 
<% End IF %>
 
		 
		 
		  
<% If rs("FORM_OF_RISK_INFORMATION") <> "" Then %>
		  
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Form of risk information:</b> </div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("FORM_OF_RISK_INFORMATION")%></div>
</div> 
		 
<% End IF %>
		 
		
		  
<% If rs("OUTCOMES") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Outcomes:</b> </div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("OUTCOMES")%></div>
</div> 
<% End IF %>
 
		
		  
<% If rs("HAZARD") <> "" Then %>
         
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Hazard:</b> </div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("HAZARD")%></div>
</div> 
<% End IF %>
 
		
		 
<% If rs("METHODOLOGICAL_ISSUES") <> "" Then %>
		 
<div style="clear:both; padding:1px;">
	<div style="background-color:#CCC; width:190px; float:left; padding:3px;"><b>Methodological Issues:</b></div>	
    <div style="width:500px; float:left; padding:3px;"><%= rs("METHODOLOGICAL_ISSUES")%></div>
</div> 
		
<% End IF 

 ELSE 'recordset count = 0

	response.redirect("../errors.asp")

End IF %>

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