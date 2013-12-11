<!--
###############################
#Script Name keyword_search.asp
#This programs returns search records
#based on the primary key
#id number 
##################################
-->
<!--#include  virtual ="/includefile/SQLInjectionPrevention.asp"-->
<% Server.ScriptTimeout = 270 %>
<% TimeOut = Server.ScriptTimeout  %>
<%'=  TimeOut %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<HEAD>
<TITLE>DCCPS: Keyword Seach Results</TITLE>
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
<link href="../styles.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('../images/arrow_red.gif')">  

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
	  <td valign="top" background="../images/header_sliver.jpg"><div align="center"><a href="http://cancer.gov"><img src="../images/header.jpg" alt="National Cancer Institute" width="752" height="80" border="0"></a></div></td>
	</tr>
	</table><br>

     <div align="center">
	 <table width="752" border="0" cellpadding="0" cellspacing="0">
	 <tr> 
	 <td valign="top">
	 <p><a href="../index.html"><img src="../images/banner_dccps.jpg" width="752" alt="Cancer Control and Population Sciences - NCI's bridge to public health research, practice and policy" height="60" border="0"></a><br><br></p></td>
	 </tr>
	 </table>
	
	
	 <table width="752" border="0" cellpadding="0" cellspacing="0">
	  <tr>
	    <td width="752" valign="top">
				<table width="159" align="right" cellspacing="0" cellpadding="1" border="0" class="gray-border">
				  <tr>
				    <td valign="top">
					<table width="159" cellspacing="0" cellpadding="0" border="0" bgcolor="#FFFFFF">
					  <tr>
					    <td valign="top" align="left" class="box-title"><img src="images/spacer.gif" width="7" height="17" alt="" border="0"></td>
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
							<input type="image" src="../../images/go.gif" width="22" height="14" border="0"  name="btnG" id="btnG" alt="Search" ><br></td>
						  </tr>
						</form>
						</table>
						</td>
					  </tr>
					</table>
					</td>
				  </tr>
				</table><br>

     </td></tr> 
     <tr>
	 	<td>	
			 <table border="0" cellpadding="0" cellspacing="0" width="100%">
			 <tr><p>
				 <td valign="top" align="left" class="page-title"><b>Search Results</b></td>
			   
				 <td align="right"><table width="230" border="1" cellspacing="0" cellpadding="5" align="right" bordercolor="#993399">
			 <tr> 
				 <td><b>Return to:
				 	<ul>
							<!--<li><a href="/DECC/riskcommbib/index.html">Simple Search</a></li>-->
                        <li><a href="/DECC/riskcommbib/index.html">Simple Search</a></li>
				 		<li><a href="/cgi-bin/risk_menu.asp">Advanced Search</a></li>
					</ul></b></td>
			</tr>
			</table></td>
     </tr>
	
	 <tr>
	 	<td valign="top" align="left" colspan="2"><p>Your search results
			 are listed here in a short form (author, title and year). <br>Click on author's name to see the full, coded record.</p><p> You searched for:</td></tr>

		<blockquote><a name="search">
		 <%= strti %>

		<%
			Dim strTitle, strWhere, strConjun
			
			strTITLE  = SQLInjectionPrevention(trim(request.form("TITLE")))
			strWhere = ""
			strConjun = "WHERE "
			
			'response.write ("title: " & strTITLE)
			
			IF strTitle <> "" Then
				 strWhere =  strWhere & strConjun & "CONFIRMATION = 'x' AND (TITLE like '%" & UCase(strTitle) & "%' OR  TITLE like '%" & LCase(strTitle) & "%' )"
				 strConjun = " OR "
				 strWhere =  strWhere & strConjun & "CONFIRMATION = 'x' AND (AUTHOR LIKE '%" & UCase(strTitle) & "%' OR AUTHOR LIKE '%" & LCase(strTitle) & "%' or AUTHOR LIKE '%" & strTitle & "%' )"
				 strConjun = " OR "
				 strWhere =  strWhere & strConjun &  "CONFIRMATION = 'x' AND SUMMARY_SENTENCE LIKE '%" & strTitle & "%' "
				 strti = "<b>Keyword</b>  = " & strTITLE 
				 
				  'response.write ("<br>strWhere: " & strwhere)
				  'response.write ("<br>strConjun: " & strConjun)
			End IF
		%>
		 
		<%
		
		'Sub Search 
		   Dim constring, Conn, rs, MySQL
			
		   SET Conn = Server.CreateObject("ADODB.Connection")
		   Const SchemaName = "evidence"
		   		  
		   'Conn.open "DSN=sc1; uid=evidence; pwd=ev1234;" 
		    Conn.open "DSN=contracts; uid=evidence; pwd=ev1234;" 
		   Set rs = Server.CreateObject("ADODB.RecordSet")
		   rs.cursortype = adopenStatic
		   
		   MySQL = "SELECT  * from evidence " & strWhere & " order by AUTHOR "
		   rs.open MySQL, conn, 3, 3
		 %>
				 
				 <table width="100%" border="0" cellpadding="0" cellspacing="0">
				 
				 <TR><TD><br/><br/><b>There are <%= rs.recordCount %> record(s) that meet the search requirements.</a></b></td></TR>
				 </TABLE>
		<% 'End Sub %> 
	
	  <% If not rs.EOF Then 
			While not rs.EOF 
	  %>
          <table border="0" cellpadding="0" cellspacing="0" width="100%">
		 	<TR>
				<TD><a href="risk_result.asp?ID_NUMBER=<%= rs("ID_NUMBER")%>"><%= rs("AUTHOR")%></a>&nbsp;<%= rs("TITLE")%>&nbsp;<%= rs("YEAR")%></td></TR><br>
		  </TABLE>
		<% 
		   rs.MoveNext
		   WEND
		  
		   End IF %>
		</td>
  </tr>
 </table>
 </div>
 
     
  <table width="100%" border="0" cellspacing="0" cellpadding="0">
   <tr>
	   <td valign="top"><div align="center">
		   <p><img src="../../images/footer_stripe.jpg" alt=" " width="755" height="7"></p>
		   <p><a href="../search.html" class="gray-link">Search</a> | <a href="../../help.html" class="gray-link">Help</a> | <a href="../../contact.html" class="gray-link">Contact Us</a> | <a href="http://www.cancer.gov/global/web/policies/accessibility" class="gray-link">Accessibility</a>  | <a href="../../privacy-policy.html" class="gray-link">Privacy Policy</a></p>
			<p><a href="http://cancercontrol.cancer.gov"><img src="../../images/footer_dccps.gif" alt="DCCPS" width="58" height="31" border="0"></a><a href="http://www.cancer.gov/"><img src="../../images/footer_nci.gif" width="63" height="31" alt="National Cancer Institute" border="0"></a>
			<a href="http://www.dhhs.gov/"><img src="../../images/footer_hhs.gif" width="39" height="31" alt="Department of Health and Human Services" border="0"></a>
			<a href="http://www.nih.gov/"><img src="../../images/footer_nih.gif" width="46" height="31" alt="National Institutes of Health" border="0"></a>
			<a href="http://www.USA.gov/"><img src="../../images/footer_firstgov.gif" width="91" height="31" alt="USA.gov" border="0"></a></p>
		   </div>
		</td>
   </tr>
 </table>	 
	 
	 
</body>
</html>
