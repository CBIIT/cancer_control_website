<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<%
	' HF (1/14/13) CR #46688 - Redirect to the new page.
	If (UCase(Request.querystring("type")) = "GENOMICS") Then _
		Response.Redirect("http://maps.cancer.gov/overview/DCCPSGrants/grantlist.jsp?method=portfolio&owner=rogerssc&portfolio=NCI%20Genomics%20Translational%20Research")
%>

<html>
<head>
<title>Overview of Public Health Genomics Research (PHGIG)</title>

<script language="JavaScript" type="text/JavaScript">>
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
<link href="../../styles.css" rel="stylesheet" type="text/css">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('../../images/arrow_red.gif')">
<!--- Cancer.gov banner --->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" background="../../images/header_sliver.jpg"><div align="center"><a href="http://cancer.gov"><img src="../../images/header.jpg" alt="National Cancer Institute" width="752" height="80" border="0"></a></div></td>
  </tr>
</table>
<!--- End Cancer.gov banner --->

<!--- ACSRB banner --->
<div align="center">
<table width="752" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
	<p><br><img src="../../images/banner_dccps.jpg" alt="Research Dissemination & Diffusion" width="752" height="60" border="0" usemap="#Map"><br></p></td>
  </tr>
</table><br />
<!--- End ACSRB banner --->
	<table width="752" border="0" cellspacing="0" cellpadding="5">
	  <tr valign="top">
<td rowspan="2" width="164">
		<table class="gray-border" width="164" border="0" cellpadding="1" cellspacing="0">
		  <tbody><tr>
		    <td valign="top">
			<table width="162" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0">
			  <tbody><tr>
			    <td class="box-title" valign="top" width="7" align="left"><img src="../../images/spacer.gif" alt="" width="7" border="0" height="17"></td>
 				<td class="box-title" valign="left" width="100%"><a href="../../index.html" class="dccps-home">Cancer Control and Population Sciences Home</a></td>
			  </tr>

			  <tr>
			    <td colspan="2" valign="top" align="left"><img src="../../images/spacer.gif" alt="" width="1" border="0" height="1"></td>
			  </tr>
			</tbody></table>
			</td>
		  </tr>
		</tbody></table><br>
		
		<table class="gray-border" width="164" border="0" cellpadding="1" cellspacing="0">
		  <tbody><tr>

		    <td valign="top">
			<table width="162" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0">
			  <tbody><tr>
			    <td class="box-title" valign="top" width="7" align="left"><img src="../../images/spacer.gif" alt="" width="7" border="0" height="17"></td>
 				<td class="box-title" valign="left" width="100%"><a href="../index.html" class="dccps-home">About Cancer Control &amp; Population Sciences</a></td>
			  </tr>
			  <tr>

			    <td colspan="2" valign="top" align="left"><img src="../../images/spacer.gif" alt="" width="1" border="0" height="1"></td>
			  </tr>
			</tbody></table>
			</td>
		  </tr>
		</tbody></table><br>
		
		<table class="gray-border" width="164" border="0" cellpadding="1" cellspacing="0">
		  <tbody><tr>
		    <td valign="top">

			<table width="162" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0">
			  <tbody><tr>
			    <td class="box-title" valign="top" width="7" align="left"><img src="../../images/spacer.gif" alt="" width="7" border="0" height="17"></td>
 				<td class="box-title" valign="left" width="100%"><a href="index.html" class="dccps-home">Public Health Genomics</a></td>
			  </tr>
			  <tr>
			    <td colspan="2" valign="top" align="left"><img src="../../images/spacer.gif" alt="" width="1" border="0" height="1"></td>
			  </tr>

			</tbody></table>
			</td>
		  </tr>
		</tbody></table>
		<!--- End DCCPS --->
		
		<!-- Content -->
		<p><a href="http://www.cancer.gov/espanol" class="dccps-home">Cancer.gov en espa�ol</a></p>
		
		<p><a href="http://www.cancer.gov/help"><img id="CIS Image" src="../../images/1800cancer.jpg" name="CIS Image" alt="Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail" width="164" border="0" height="68"></a></p><p></p>	
		</td>
		
		<td width="578">
		<table width="578" cellpadding="2" cellspacing="0" border="0">
		  <tr valign="top">
		    <td width="398">
			<!-- #include virtual="http://www.aacr.org/home/scientists/meetings--workshops/special-conferences/aacrjca-joint-conference.aspx" -->
			<img src="../../images/spacer.gif" width="398" height="1" alt="" border="0">
			</td>
			<td width="160">
			<!-- Google Search -->
			<table width="159" cellspacing="0" cellpadding="1" border="0" class="gray-border">
			  <tr>
			    <td valign="top">
				<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
				  <tr>
				    <td valign="top" align="left" class="box-title"><img src="../../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
					<td valign="left" colspan="2" class="box-title">
					<table border="0" cellspacing="0" cellpadding="0">
					<form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
					  <tr>
					    <td><span class="box-title"><strong>Search:</strong></span><br>
						<input type="hidden" name="site" value="DCCPS"/>
						<input type="hidden" name="client" value="DCCPS_frontend"/>
						<input type="hidden" name="proxystylesheet" value="DCCPS_frontend"/>
						<input type="hidden" name="output" value="xml_no_dtd"/>
						<input type="hidden" name="filter" value="0"/>
						<input type="hidden" name="getfields" value="*"/>
						<input id="searchbox" type="text" name="q" size="15" maxlength="255" value=""/>
						<input type="image" src="../../images/go.gif" width="22" height="14" border="0"  name="btnG" id="btnG" alt="Search" ></td>
					  </tr>
					</form>
					</table>
					</td>
				  </tr>
				</table>
				</td>
			  </tr>
			</table></td>
	  </tr>
	  
	  <tr valign="top">
	    <td colspan="2">

 		<%
			dim strOwner
			dim strPortfolioName
			dim strPortfolioId
			dim cmd
			dim strTitle

			' Translate the command line parameter to the actual portfolio name.
	   		If (Request.querystring("type") = "genomics") Then
				strPortfolioName = "NCI Genomics Translational Research"
	   		ElseIf (Request.querystring("type") = "CER") Then
				strPortfolioName = "CER in GPM"
			End If

			' Translate the command line parameter to the actual portfolio name.
			strOwner = "schullys"
			Set cmd = GetCommand("GetPortfolioTitle", vbNullString)
			cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
			cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
			strTitle = RunSPReturnVarchar(cmd, 100)

			Response.Write("<h2>" + strTitle + "</h2>")
	   		If (Request.querystring("type") = "genomics") Then
				Response.Write("<p>An exhaustive search of the FY2007 NCI grant portfolio resulted in the funded genomics applications, listed below, that were considered translational.</p>")
	   		ElseIf (Request.querystring("type") = "CER") Then
				Response.Write("<p>As part of the NIH�s American Recovery & Reinvestment Act (ARRA), NCI released a  funding opportunity to support two year efforts that will advance methods for analysis, synthesis, modeling and evaluation of the clinical validity and utility of existing and emerging GPM applications in cancer control and prevention, accelerate the development of GPM by planning CER initiatives, and enhance clinical and population data infrastructure to support CER initiatives in GPM.</p>")
			Else
				Response.Write("<p>Please specify a research type (Genomics or CER).</p>")
				Response.End()
			End If

			DisplayGrantsInPortfolio strOwner, strPortfolioName, 1, vbNullString
		%>
    </td>
	  </tr>
	</table>
		</td>
	  </tr>
	</table>
	</td>
  </tr>
</table>

<table width="755" border="0" cellspacing="0" cellpadding="0">
  <tr valign="top">
    <td colspan="3"><div align="center"><strong>Last Updated: <% LastModified() %></strong></div></td>
  </tr>
  <tr>
    <td colspan="3" valign="top"><div align="center">
	<p><img src="../../images/footer_stripe.jpg" alt=" " width="755" height="7"></p>
	</div>
	</td>
  </tr>
  <tr>
    <td width="80" height="99" valign="top"><p align="center">&nbsp;</p>      </td>
    <td width="595" valign="top"><p align="center"><a href="../../search.html" class="gray-link">Search</a> | <a href="../../help.html" class="gray-link">Help</a> | <a href="../../contact.html" class="gray-link">Contact Us</a> | <a href="http://www.cancer.gov/global/web/policies/accessibility" class="gray-link">Accessibility</a> | <a href="../../privacy-policy.html" class="gray-link">Privacy Policy</a></p>
      <p align="center"><a href="http://cancercontrol.cancer.gov"><img src="../../images/footer_dccps.gif" alt="DCCPS" width="58" height="31" border="0"></a><a href="http://www.cancer.gov/"><img src="../../images/footer_nci.gif" width="63" height="31" alt="National Cancer Institute" border="0"></a> <a href="http://www.dhhs.gov/"><img src="../../images/footer_hhs.gif" width="39" height="31" alt="Department of Health and Human Services" border="0"></a> <a href="http://www.nih.gov/"><img src="../../images/footer_nih.gif" width="46" height="31" alt="National Institutes of Health" border="0"></a> <a href="http://www.USA.gov/"><img src="../../images/footer_firstgov.gif" width="91" height="31" alt="USA.gov" border="0"></a></p></td>
    <td width="80" valign="top"><div align="right"><img src="../../images/10yearlogo-tilted.gif" width="91" height="90" alt=""></div></td>
  </tr>
</table>
</div>

<map name="Map">
  <area shape="rect" coords="458,33,752,59" href="../../index.html" alt="DCCPS Home">
  <area shape="rect" coords="2,2,455,61" href="index.html" alt="D4D Home">
  <area shape="rect" coords="458,3,749,30" href="index.html" alt="D4D Home">
</map>
</body>
</html>