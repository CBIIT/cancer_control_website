<% Option Explicit %>
<HTML>
<HEAD>
<TITLE>Acknowledging Grantee Contributions in DCCPS</TITLE>

<!--- #include file=header.asp --->

<%
	Dim strFullName	
	Dim strFirstName
	Dim strLastName
	Dim strError
	Dim iLastNameLength
	Dim iNextSpace
	Dim iFirstNameLength
	Dim strPhotoFile
	Dim category
	Dim bIsValid
	
	strFullName = GetParameterValue("pi")
	if ((Len(strFullName) > 0) And ValidateInput(strFullName, "^[A-Za-z0-9.\s_,-]*$")) Then
		iLastNameLength = Instr(strFullName,",")-1
			strLastName = UCase(Left(strFullName,iLastNameLength))
			iNextSpace = Nz(Instr(iLastNameLength+3,strFullName," "))
			If iNextSpace < 1 Then
				iNextSpace = Len(strFullName)+1
			End If
			
			iFirstNameLength = iNextSpace - (iLastNameLength+3)
			If iFirstNameLength = 2 and Mid(strFullName,iLastNameLength+4,1) = "." Then
				iFirstNameLength = Len(strFullName) - iLastNameLength - 2
			End If

'				If (iFirstNameLength > 0) Then
				strFirstName = UCase(Mid(strFullName,iLastNameLength+3,iFirstNameLength))
				
				category = CInt(GetParameterValue("category"))
				If category = MERIT Then
					strPhotoFile = "photos/" & strLastName & "-" & strFirstName & ".jpg"
'					Response.Write "<IMG SRC=""" & strPhotoFile & """ WIDTH=""15%"" HEIGHT=""15%"">"
					Response.Write "<IMG SRC=""" & strPhotoFile & """>"					
				End If
	Else
		ShowError "This page cannot be displayed because a valid name was not found."
	End If
%>
<br>
<table width="100%">
	<tr>
		<td>
			<H1>Grant Listing for <%=strFullName%>
			<%
				If category = MERIT Then
					Response.Write "<a href=http://www.cancer.gov/researchandfunding/merit/" + strLastName + ">&nbsp;&nbsp;(see bio)</a>"
				End If
			%>
			</H1>
		</td>
<% If (UCase(render) <> "PF") Then %>
		<td width="5%" align="right"><a href="pi_portfolio.asp?pi=<%=strFullName%>&render=pf" target="_blank"><img src="../images/printer.jpg" width="25" height="25" border="0" alt="Print">&nbsp;Print</a>
		</td>
<% End If  %>
	</tr>
</table>

<div id="mainContent">
<div id="dataTable">
<%
	' HF (1/21/09) CR #41982 - replace iDynamic with order by parameter.  For Research Pioneers page, 
	' order by fy.  For others, order by project_title.
	' HF (10/29/09) - CR #43183 - now displaying/ordering by fy on all 4 pages.
	' HF (11/26/09) CR #43545 - this routine now needs to put an asterisk by the earliest RO1 
	' grant on the Star R01 page.  So pass the page category ( CInt(strCaller) ) into the routine below.
	
	DisplayGrantsByPI strFirstName,strLastName, "fy desc", true, category, _
		"This list contains grants carried over from prior fiscal years and new grants awarded in FY 2012."
%>
</div>
</div>

<!--- #include file=footer.asp --->
</BODY>
</HTML>
