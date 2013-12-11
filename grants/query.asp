<% Option Explicit %>

<%
	' HF (1/14/13) CR #46688 - Redirect to the new page.
	If (UCase(Request.querystring("program")) = "EGRP") Then _
		Response.Redirect("http://maps.cancer.gov/overview/DCCPSGrants/grantlist.jsp?method=dynamic&program=egrp")
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>DCCPS: Cancer Control Research: Active Grants</title>

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
<link href="../styles.css" rel="stylesheet" type="text/css">
<link href="../style.css" type="text/css" rel="stylesheet">
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadimages('../images/arrow_red.gif')">
<div id="skipmenu">
<a href="#skip" class="skippy">Skip Navigation</a>
<a name="top"></a>
</div> <!-- end skipmenu -->
<!--- Cancer.gov banner --->
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top" background="../images/header_sliver.jpg"><div align="center"><a href="http://cancer.gov"><img src="../images/header.jpg" alt="National Cancer Institute" width="752" height="80" border="0"></a></div></td>
  </tr>
</table><br>
<!--- End Cancer.gov banner --->

<!--- DCCPS banner --->
<div align="center">
<table width="752" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td valign="top">
	<p><a href="../index.html"><img src="../images/banner_dccps.jpg" width="752" alt="Cancer Control and Population Sciences - NCI's bridge to public health research, practice and policy" height="60" border="0"></a><br><br></p></td>
  </tr>
</table>
<!--- End DCCPS banner --->

<table width="752" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="782" valign="top">
	<table width="100%" border="0" cellspacing="0" cellpadding="5">
	  <tr valign="top">
	    <td width="162" rowspan="2">
		
		<table width="164" cellspacing="0" cellpadding="1" border="0" class="gray-border">
		  <tr>
		    <td valign="top">
			<table width="162" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
			  <tr>
			    <td width="7" align="left" valign="top" class="box-title"><img src="../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
 				<td width="100%" valign="left" class="box-title"><a href="../index.html" class="dccps-home">Cancer Control and Population Sciences Home</a></td>
			  </tr>
			  <tr>
			    <td valign="top" align="left" colspan="2"><img src="../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
			  </tr>
			</table>
			</td>
		  </tr>
		</table><br />
				
		<table width="159" cellspacing="0" cellpadding="1" border="0" class="gray-border">
		  <tr>
		    <td valign="top">
			<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
			  <tr>
			    <td valign="top" align="left" class="box-title"><img src="../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
                <td valign="left" colspan="2" class="box-title">Links to Key Initiatives</td>
              </tr>
		      <tr>
		        <td valign="top" colspan="3" class="gray-border"><img src="../../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
              </tr>
		      <tr>
		        <td valign="top" align="left" colspan="3"><img src="../../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
              </tr>
		      <tr>
		        <td valign="top" align="left"><img src="../../images/spacer.gif" width="7" height="1" alt="" border="0"></td>
                <td valign="top" class="leftnav" align="left" width="145">
				<table width="100%" border="0" cellspacing="0" cellpadding="2">
				  <tr>
					  <td> 
						<!-- #include file="current_research-links.asp" -->
					  </td>
				  </tr>
			    </table>
				<img src="../../images/spacer.gif" width="1" height="4" border="0" alt=""><br></td>
				<td valign="top" align="right"><img src="../../images/spacer.gif" width="7" height="1" alt="" border="0"></td>
			  </tr>
			  <tr>
			    <td valign="top" align="left" colspan="3"><img src="../../images/spacer.gif" width="1" height="1" alt="" border="0"></td>
			  </tr>
			</table>
			</td>
		  </tr>
		</table>
		<!--- End DCCPS ---><br>
		
		<!-- Content -->
		<a href="http://www.cancer.gov/help"><img id="CIS Image" src="../images/1800cancer.jpg" name="CIS Image" alt="Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail" width="164" height="68" border="0"></a></td>
		<td><!-- Body Content -->
			<table width="100%" cellpadding="5" cellspacing="0" border="0">
			  <tr valign="top">
				<td width="100%">
					<table width="159" align="right" cellspacing="0" cellpadding="1" border="0" class="gray-border">
						<tr>
							<td valign="top">
							<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
								<tr>
									<td valign="top" align="left" class="box-title"><img src="../images/spacer.gif" width="7" height="17" alt="" border="0"></td>
									<td valign="left" colspan="2" class="box-title">
										<table border="0" cellspacing="0" cellpadding="0">
										<form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
										  <tr>
											<td><label for="searchbox"><span class="box-title"><strong>Search:</strong></span></label><br>
											<input type="hidden" name="site" value="DCCPS"/>
											<input type="hidden" name="client" value="DCCPS_frontend"/>
											<input type="hidden" name="proxystylesheet" value="DCCPS_frontend"/>
											<input type="hidden" name="output" value="xml_no_dtd"/>
											<input type="hidden" name="filter" value="0"/>
											<input type="hidden" name="getfields" value="*"/>
											<input id="searchbox" type="text" name="q" size="15" maxlength="255" value=""/>
											<input type="image" src="../images/go.gif" width="22" height="14" border="0"  name="btnG" id="btnG" alt="Search" ><br></td>
										  </tr>
										</form>
										</table>
									</td>
								  </tr>
								</table>
							</td>
						</tr>
					</table>
                    <a name="skip"></a>
		<h2>Cancer Control Research</h2>		

              <!-- #include file="utility.asp" -->
			 <%
			   dim strProgram
			   dim strBranch
			   dim strProgName
			   dim strBranchName
			   dim strFY
			   dim strMechanism
			   dim strMechanismTitle
			   dim blnHasFY
			   
			   ' Send the output we've accumulated so far to the browser so it starts to display.
			   Response.Flush
			
			   ' Blank programs and branches are allowed - no need to check for Null..
			   strProgram = Request.querystring("program")
			   strBranch = Request.querystring("branch")
			   
			   if Request.QueryString("fy") <> "" then
			   strFY = Request.QueryString("fy")
			   end if
			   strMechanism = Request.QueryString("mechanism")
			   
			   ' IsNumeric returns True if strFY is blank, so we don't have to
			   ' check for a blank FY separately here.
			   If Not IsNumeric(strFY) Then
				ShowError("Fiscal Year must be numeric.")
			   End If
			   
			   blnHasFY = Not IsNull(strFY) And vbNullString <> strFY
			%>

	<h2>
			<% 
				Dim strProgramMessage, strBranchMessage, strMechanismMessage
											
				strProgramMessage = "The program " 
				strBranchMessage = "The branch "
				strMechanismMessage = "The mechanism "
				
				If vbNullString = strProgram Then
					Response.write "Complete Cancer Control Research Listing: "
				Else
					If vbNullString = strBranch Then
												
						If ValidateStringParameter(strProgramMessage, strProgram) = 0 Then
							Response.write GetProgramName(strProgram) 
						Else
							Response.write ValidateStringParameter(strProgramMessage, strProgram)
						End If
					Else
						If ValidateStringParameter(strProgramMessage, strProgram) = 0 AND ValidateBranch(strBranchMessage, strBranch) = 0 Then
							Response.write GetBranchName(strProgram, strBranch) & ": "
						Else
						 	Response.write ValidateBranch(strBranchMessage, strBranch)
						End If
					End If
				End If
			%>
			&nbsp;
			<%
			    If vbNullString <> strMechanism Then
					If ValidateStringParameter(strMechanism) = 0 Then
					   strMechanismTitle = GetMechTitle(strMechanism)
					Else
						Response.write ValidateStringParameter(strMechanismMessage, strMechanism)
					End If
									
					If vbNullString = strMechanismTitle Then
						' Do not print strMechanism to avoid cross-site scripting problems
						ShowError("You did not enter a valid mechanism")
					End If
					Response.Write strMechanism & " - " & strMechanismTitle & "<br>" & vbCrLf
				End If
			
				if blnHasFY Then
					Response.write "Grants Funded in Fiscal Year " & ValidateIntegerParameter(strFY)
				Else
					Response.write "Active Grants"
				End If
			%>
	</h2>

	<% If "R03" = strMechanism and "BRP" = strProgram Then %>
		<p>Small Grants Program for Behavioral Research in Cancer Control (R03) NCI PAR-02-037 (Replaces PAR 99-006). Investigators may wish to refer to the DCCPS Small Grants Web site for detailed information about this program.<br>
		<a href="http://cancercontrol.cancer.gov/smallgrants/">http://cancercontrol.cancer.gov/smallgrants/</a></p>
	<% 
	  End If
	
	  DisplayGrantsMechanism strProgram, strBranch, strMechanism, strFY
	%>
		</table>
		</td>
	  </tr>
	</table>
		</td>
	  </tr>
	</table>
	</td>
		</td>
	  </tr>
	</table>
	</td>
  </tr>
</table>
</div>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td valign="top"><div align="center">
	<p><img src="../images/footer_stripe.jpg" alt=" " width="755" height="7"></p>
	<p><a href="http://cancercontrol.cancer.gov/search.html" class="gray-link">Search</a> | <a href="http://cancercontrol.cancer.gov/help.html" class="gray-link">Help</a> | <a href="http://cancercontrol.cancer.gov/contact.html" class="gray-link">Contact Us</a> | <a href="http://www3.cancer.gov/accessibility/nci508.htm" class="gray-link">Accessibility</a>  | <a href="http://cancercontrol.cancer.gov/privacy-policy.html" class="gray-link">Privacy Policy</a></p>
	
	<p><a href="http://cancercontrol.cancer.gov"><img src="../images/footer_dccps.gif" alt="DCCPS" width="58" height="31" border="0"></a><a href="http://www.cancer.gov/"><img src="../images/footer_nci.gif" width="63" height="31" alt="National Cancer Institute" border="0"></a>
	<a href="http://www.dhhs.gov/"><img src="../images/footer_hhs.gif" width="39" height="31" alt="Department of Health and Human Services" border="0"></a>
	<a href="http://www.nih.gov/"><img src="../images/footer_nih.gif" width="46" height="31" alt="National Institutes of Health" border="0"></a>
	<a href="http://www.USA.gov/"><img src="../images/footer_firstgov.gif" width="91" height="31" alt="USA.gov" border="0"></a></p>
    </div>
	</td>
  </tr>
</table>

<map name="Map">
  <area shape="rect" coords="458,33,752,59" href="../index.html" alt="DCCPS home">
  <area shape="rect" coords="3,2,454,61" href="../index.html" alt="DCCPS home">
  <area shape="rect" coords="457,4,746,31" href="../index.html" alt="DCCPS home">
</map>
</body>
</html>

<%' Validate an integer value
    Function ValidateIntegerParameter(strParameter)
           Dim intResult
          
            ' Validate
            intResult = ValidateInteger(strParameter, 1900, 2100, vbNull)

            ' Output different messages
            Select Case intResult
				Case ERR_NOT_NUM
						ShowError("Fiscal Year can not be evaluated into a number")
				Case ERR_EXCEED_MAX, ERR_EXCEED_MIN
                        ShowError("Fiscal Year is outside the allowed range.")
				Case Else
						ValidateIntegerParameter = strParameter
			End Select
	End Function

 
	' Validate a parameter String
	Function ValidateStringParameter(strMessage, strParameter)
            Dim strResult

            ' Validate
            strResult = ValidateString(strParameter, 4, vbNull, vbNull)

            ' Output different messages
            Select Case strResult
				Case ERR_LENGTH
					  ShowError(strMessage + "exceeds the maximum allowed length")
				Case ERR_INVALID_CHAR
					  ShowError(strMessage + "contains an invalid character")
				Case else
					  ValidateStringParameter = strResult
			End Select
	End Function
	
	' Validate a parameter String
	Function ValidateBranch(strMessage, strParameter)
            Dim strResult

            ' Validate
            strResult = ValidateString(strParameter, 5, vbNull, vbNull)

            ' Output different messages
            Select Case strResult
				Case ERR_LENGTH
					  ShowError(strMessage + "exceeds the maximum allowed length")
				Case ERR_INVALID_CHAR
					  ShowError(strMessage + "contains an invalid character")
				Case else
					  ValidateBranch = strResult
			End Select
	End Function

 %>