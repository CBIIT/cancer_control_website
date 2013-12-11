<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <!-- meta tags--><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  
  <!--external style sheets--><link href="../../style.css" type="text/css" rel="stylesheet" />
<title>DCCPS</title>
</head>

<body>
<div id="wrapper">
<!-- NCI Banner -->
  <div id="head-row1"><img src="../../images/dccps-banner2.gif" alt="National Cancer Institute" width="1000" height="40" usemap="#Map" /></div>
<!-- end of NCI Banner -->

<!-- DCCPS Banner / Search Field -->
<div id="head-row2">
  <div id="left2"><a href="../index.html"><img src="../../images/ocs_banner.jpg" alt="Cancer Survivorship Research - Cancer Control and Population Sciences" width="730" height="70" /></a></div>
  
  <div id="ocsright2">
	  <div id="ocsnorth">
	<a href="http://twitter.com/NCICancerCtrl" title="Twitter">Twitter<img src="../../images/twitter-icon.png" title="Twitter" alt="Twitter" width="20" height="20" /></a><a href="../../exit_disclaimer.html"><img src="../../images/Icon_External_Link.png" width="12" height="12" alt="exit disclaimer" /></a> <a href="/search.html" title="Multimedia">Multimedia<img src="../../images/media-icon.gif" title="Multimedia" alt="Multimedia" width="20" height="20" /></a></div>
    <form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
	  <input type="hidden" name="site" value="DCCPS" />
	  <input type="hidden" name="client" value="DCCPS_frontend" />
	  <input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
  	  <input type="hidden" name="output" value="xml_no_dtd" />
	  <input type="hidden" name="filter" value="0" />
	  <input type="hidden" name="getfields" value="*" />
	  <label for="searchbox"><input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" value="Search" /></label>
	  <input type="image" src="../../images/hbutton.gif"  class="hbutton" name="btnG" id="btnG" alt="Search" />
	</form><br class="clearfloat" />
    </div><br class="clearfloat" />
  </div>
<!-- End of DCCPS Banner / Search Field -->
	
<!-- Main Content -->
  <div id="mainarea">
  <!-- Left Column // DCCPS Link / Need Help Banner -->
    <div id="column-left1">
      <div id="dccps-link"><a href="../index.html">Cancer Control &amp; Population Sciences Home</a></div>
      
      <div class="rounded-border">
      <ul class="slist2">
        <li><a href="../pathways/index.html" style="font-weight:bold;">Cancer Survivorship Research</a></li>
      </ul></div><br />
    
      <a href="http://www.cancer.gov/help"><img src="../../images/help-tile.jpg" alt="Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail" /></a></div>
  <!-- End of Left Column // DCCPS Link / Need Help Banner -->
    
  <!-- Right Column // Page Content -->
    <div id="column-mid2">
      <div class="content">
      <h2>Physical Activity and Cancer Survivorship: Research Portfolio</h2>
		
      <p><strong>Research Portfolio: Fiscal Year 2001 Physical Activity (PA) and Cancer Survivorship Grants</strong></p>

<p><strong>Definition</strong><br>
Included in this analysis are all NCI/NIH funded grants that address or examine the role of PA or exercise in cancer survivors beyond the acute cancer treatment phase.  Studies that examined those patients newly diagnosed and/or in treatment are <strong><em>included</em></strong> in this definition, provided patients were followed at least 2-months post treatment.  Studies with a focus on pre-cancer screening and palliative care were <strong><em>excluded</em></strong> from the portfolio.</p>

<!-- #include virtual="/grants/utility.asp" -->
<%
   dim strOwner
   dim strPortfolioName
   dim cmd
   dim strTitle

   strPortfolioName= Request.querystring("Portfolio")
   strOwner= Request.querystring("Owner")

   Set cmd = GetCommand("GetPortfolioTitle", vbNullString)
   cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 20, strOwner)
   cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
   strTitle = RunSPReturnVarchar(cmd, 100)
 %>
 <h3><a name="skipnav"><%=strTitle%></a></h3>
<% if trim(len(strOwner)) <> 0 and trim(len(strPortfolioName)) <> 0 Then
	DisplayGrantsInPortfolio strOwner, strPortfolioName
   Else
   	ShowError "Portfolio Name and Owner can't be empty"
   End If
%>
      </div>
    </div></div>
<!-- End of Main Content -->
    
<!-- Last Updated -->
  <div class="update">Last Updated: June 29, 2012</div>
<!-- End of Last Updated -->
    
<!-- Footer -->
  <div id="ocsfoot-row1">
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
    var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www."); 
    document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E")); 
</script> 
<script type="text/javascript"> 
    try { 
    var pageTracker = _gat._getTracker("UA-15356091-1"); 
    pageTracker._trackPageview(); 
    } catch(err) {}
</script>

<!-- End of GA Code -->
<script language="JavaScript" type="text/javascript" src="/JS/Omniture/WA_DCCPS_PageLoad.js"></script>
</body>
</html>