<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- meta tags-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<!--external style sheets-->
	<link href="../style2.css" type="text/css" rel="stylesheet" />

    <title>DCCPS: Cancer Control Research: Implementation Science: Interactive Tools &amp; Resources: Conferences and Presentations</title>
</head>

<body>
<div id="wrapper">
    <!-- NCI Banner -->
	<div id="head-row1">
		<img src="../images/dccps-banner2.gif" alt="National Cancer Institute" width="1000" height="40" usemap="#Map" />
	</div>
	<!-- end of NCI Banner -->

    <!-- DCCPS Banner / Search Field -->
	<div id="head-row2">
		<div id="left2"><a href="index.html"><img src="../images/d_i_banner.gif" alt="Implementation Science
    Integrating Science, Practice, and Policy" width="730" height="68" /></a>
		</div>
		<div id="right2">
			<div id="north">
				<a href="http://twitter.com/NCICancerCtrl" title="Twitter">Twitter<img src="../images/twitter-icon.gif" title="Twitter" alt="Twitter" width="20" height="20" /></a> <a href="../cr-communication-videos.html" title="Multimedia">Multimedia<img src="../images/media-icon.gif" title="Multimedia" alt="Multimedia" width="20" height="20" /></a>
			</div>
			<form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
				<input type="hidden" name="site" value="DCCPS" />
				<input type="hidden" name="client" value="DCCPS_frontend" />
				<input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
				<input type="hidden" name="output" value="xml_no_dtd" />
				<input type="hidden" name="filter" value="0" />
				<input type="hidden" name="getfields" value="*" />
	  <label for="searchbox"><input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" value="Search" /></label>
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
			<a href="/index.html">Cancer Control &amp; Population Sciences Home</a>
		</div>
		
        
        <div id="is-link"><a href="index.html">Implementation Science Home</a></div>
		<!--<div class="rounded-border">
			<ul class="slist2">
				<li><a href="index.html">Implementation Science Home</a></li>
			</ul>
		</div> -->
        
        
        <p><a href="http://cancercontrolplanet.cancer.gov/"><img src="../images/planet-tile.jpg" alt="Cancer Control P.L.A.N.E.T., Plan, Link, Act, Network, with Evidence-based Tools" width="200" height="83" border="0"></a></p>
		<p><a href="http://progressreport.cancer.gov/"><img src="../images/dccps_ctpr_tile2.gif" alt="Cancer Trends Progress Report" width="200" height="83" border="0"></a><!--Need better logo tile --></p>
		<p><a href="http://www.cancer.gov/help"><img src="../images/help-tile.jpg" alt="Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail" width="200" height="60" class="image1" /></a></p>
    </div>
    <!-- End of Left Column // DCCPS Link / Need Help Banner -->
    
    <!-- Right Column // Page Content -->
    <div id="column-mid2">
    <div class="content">
    
<%
	dim strOwner
	dim strPortfolioName
	dim strPortfolioId
	dim cmd
	dim strTitle

	' Translate the command line parameter to the actual portfolio name.
	If (Request.querystring("Portfolio") = "dandd") Then
		strPortfolioName = "DandD Supplements"
	ElseIf (Request.querystring("Portfolio") = "dandi") Then
		strPortfolioName = "DandI Grants"
	Else
		ShowError("This page cannot be displayed because your request is missing information.")
	End If
	strOwner = "cvinson"

	Set cmd = GetCommand("GetPortfolioTitle", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
	cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
	strTitle = RunSPReturnVarchar(cmd, 100)
%>
<!-- #include virtual="grants/utility.asp" -->
  <h2><%= strTitle %></h2>
  
		 
<%	If (Request.QueryString("Portfolio") = "dandd") Then %>
	<p>
	<a href="/funding_archive.html#dd">View the original notice to the extramural community</a></p>
<%	ElseIf (Request.QueryString("Portfolio") = "dandi") Then %>
<p>
	<a href="/funding_apply.html#dd">View the original notice to the extramural community</a></p>
<%	End If %>
	

<p><a name="previous"></a><strong>Currently Funded Grants</strong></p>
<%
	If trim(len(strOwner)) <> 0 and trim(len(strPortfolioName)) <> 0 Then

		' HF (3/20/08) CR #40783 - Integrate in changes from CR #40800, where active D&D abstracts
		' are displayed from an XML file, rather than from the database, as D&I grants are.
		If (Request.querystring("Portfolio") = "dandd") Then
%>
</a>
			<!---
			   CR#37054 - nf 01.17.2006  - Remove PubMed link around PI Name
			   CR# 16457 - L. Tsao 07.22.2004 Removed size attribute for font to make sizes consistent. --
			  <p><font face="Arial, sans-serif">* Includes all publications listed in PubMed
				&lt;<a href="http://www.pubmed.gov/">http://www.pubmed.gov/</a>&gt; authored by the Principal Investigator.
				Please note that not all publications are listed in PubMed, and the listing includes publications
				that represent the PI\'s full body of work -- not just work on this particular grant.
			--->
			<p>
			** Includes all publications listed in <a href="http://www.pubmed.gov/">PubMed</a>
			authored by the Principal Investigator and supported by the specified grant.
			Please note that not all grants have publications listed in PubMed, and the listing of
			publications in PubMed may not be complete.
			<p>
<%		   	
			DisplayGrantsInPortfolio strOwner, strPortfolioName, 2, ""
		Else
			DisplayGrantsRFAByProgram "","'PAR06-521','PAR06-039','PAR07-086','PAR06-520','PAR07-086','PAR06-521','PAR10-038','PAR10-039','PAR10-040'", "ACTIVE"
		End If
	Else
		ShowError "Portfolio Name and Owner can't be empty"
	End If
%>
</p>
<%
	Set cmd = GetCommand("GetPortfolioTitle", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
	cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
	strTitle = RunSPReturnVarchar(cmd, 100)
%>
<p><a name="previous"></a><strong>Previously Funded Grants</strong></p>
<p>
<% 	If (Request.QueryString("Portfolio") = "dandd") Then
		dim strPortfolioName2
		owner =  "cvinson"
		strPortfolioName2 = ""
		DisplayGrantsInPortfolioHistory owner, strPortfolioName, strPortfolioName2
	ElseIf (Request.QueryString("Portfolio") = "dandi") Then			
		DisplayGrantsRFAByProgram "","'PAR06-521','PAR06-039','PAR07-086','PAR06-520','PAR07-086','PAR06-521','PAR10-038','PAR10-039','PAR10-040'", "ARCHIVE"
	End If %>
</p>
    </div>
    </div>
    <!-- End of Right Column // Page Content -->
    <br class="clearfloat" />
    </div>
    <!-- End of Main Content -->
    
    <!-- Last Updated -->
    <div class="update">Last Updated: <% LastModified() %></div>
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
</body>
</html>