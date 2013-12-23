<%
' Setting DisplayCountDiff = Y enables data validation for Mark
Const DisplayCountDiff = "N"

'***********************************************************************
' Name:     DisplayGrantsByPI
' Author:   ?
' Date:     ?
' Purpose:  Displays grant data based upon first & last name of the principal investigator.
' Input:    	strFirstName - first name of PI
'				strLastName - last name of PI
'				strOrderBy - order by clause for the query
'				bDisplayFY - whether to display the FY in the table or not
'				intCategory - Acknowledgements website category
'				  	= 0 - Pioneers
'			  		= 1 - Merit
'			  		= 2 - *R01
'					= 3 - BSA/NCAB
'				strTableCaption - text appearing above table.
' Output:	none
' Notes:	HF (1/21/09) CR #41982 - Display FY for Research Pioneers grantees.
' HF (11/26/09) CR #43545 - Now passing in the page category (pioneer, merit,
'  *R01 or bsa/ncab.
'				HF (11/8/10) Now passing in table caption so that we do not need to change
'				this file whenever text on the web page changes.
'***********************************************************************
Sub DisplayGrantsByPI (strFirstName,strLastName,strOrderBy, bDisplayFY, _
	intCategory, strTableCaption)

	Dim rst
	Dim numgrants

	Set rst = RetrieveDataByPI(strFirstName,strLastName,strOrderBy)

	' HF (1/21/09) CR #41982 - remove iDynamic parameter since no longer used.
	numgrants = GetGrantCountByPI(strFirstName, strLastName)

	' HF (11/23/09) CR #43545 - Added additional parameter to mark first R01 for this PI.
	' (do this only on the Star R01 page, which is category 2 in the pi_names table).
	
	If (intCategory = 2) Then
		DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ALL", bDisplayFY, True, strTableCaption
	Else
		DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ALL", bDisplayFY, False, strTableCaption
	End If
End Sub

'***********************************************************************
' Name:			RetrieveDataByPI
' Author:		N. Francis
'	Date:
' Purpose:  Retrieve all funded grants belonging to specified PI
' Input:    strFirstname
'						strLastname
' Output:   lngPID - person_id (profile entry; parent)
' Mods:
' 	HF (1/21/09) CR #41982 - replace iDynamic with order by parameter.  For Research Pioneers page, 
' 	order by fy.  For others, order by project_title.
'***********************************************************************
Function RetrieveDataByPI(strFirstname,strLastname,strOrderBy)
	Dim cmd
	Dim strSPName

	strSPName = "GetGrantListByPI"
	Set cmd = GetCommand(strSPName, vbNullString)
	If Len(strFirstname)<>0 And Len(strLastname)<>0 Then
  	cmd.Parameters.Append cmd.CreateParameter("firstname", adVarChar, adParamInput, 20, strFirstname)
  	cmd.Parameters.Append cmd.CreateParameter("lastname", adVarChar, adParamInput, 20, strLastname)
  	' cmd.Parameters.Append cmd.CreateParameter("dynamic", adInteger, adParamInput, 1, iDynamic)
  	cmd.Parameters.Append cmd.CreateParameter("orderby", adVarChar, adParamInput, 50, strOrderBy)
  Else
  	Response.write "Must specify both a first and last name."
  	Exit Function
  End If

  Set RetrieveDataByPI = RunSPReturnRS(cmd)
End Function

'***********************************************************************
' Name:		GetDivisionGrantTotal
' Author:	Harvey Flaisher (CR #46672)
' Date:		12/26/12
' Purpose:  Retrieves the number of grants and total $ amt awarded for the passed
'				fiscal year.  If a FY is not specified, the same is returned for the current 
'				year, as defined by 
'
'    IN    : p_division_id(l) - Division ID
'            p_fy(l) - Fiscal Year.  (As of 12/26/12, this parameter may be passed
'              as null, in which case the current year (as defined by 
'              SELECT MAX(FY) INTO v_fy FROM WEB_GRANTS_MV) is used.
'    OUT   : p_num_grants(l) - Number of grants
'            p_nci_total_awarded(l) - Total NCI dollars awarded
'***********************************************************************
Sub GetDivisionGrantTotal(divisionId, fy, numGrants, amtAwarded)

	Dim cmd
	Dim strSPName
	Dim unusedResultSet

	strSPName = "GetDivisionGrantTotal"
	Set cmd = GetCommand(strSPName, vbNullString)
  	cmd.Parameters.Append cmd.CreateParameter("divisionId", adInteger, adParamInput, 2, divisionId)
  	cmd.Parameters.Append cmd.CreateParameter("fy", adInteger, adParamInput, 2, fy)
  	cmd.Parameters.Append cmd.CreateParameter("numGrants", adInteger, adParamOutput, 10, numGrants)
  	cmd.Parameters.Append cmd.CreateParameter("amtAwarded", adInteger, adParamOutput, 10, amtAwarded)

	Set unusedResultSet = RunSPReturnRS(cmd)
	
	numGrants = cmd.Parameters(2)
	amtAwarded = cmd.Parameters(3)
	
	Set cmd = Nothing

End Sub

'***********************************************************************
' Name:		GetPINamesAndGrantCounts
' Author:	Harvey Flaisher (CR #39971)
' Date:		7/2/05
' Purpose:  Retrieves the PI names and grant counts for all PIs in the given category.
'
' Input:    category - integer:
'			0 - Pioneer
'			1 - Merit
'			2 - *R01
'			3 - BSA
'    		year_added - the fiscal year.  filters by the year the PI was added into the list.
' Output:   Result set containing 3 columns from the ten_year_pis table:
'			first_name
'			last_name
'			count
'***********************************************************************
Function GetPINamesAndGrantCounts(category, yearAdded, yearMin, yearMax, errString)

	Dim cmd
	Dim strSPName

	strSPName = "GetPINames"
	Set cmd = GetCommand(strSPName, vbNullString)
  	cmd.Parameters.Append cmd.CreateParameter("category", adInteger, adParamInput, 2, category)
  	cmd.Parameters.Append cmd.CreateParameter("yearAdded", adInteger, adParamInput, 2, yearAdded)
  	cmd.Parameters.Append cmd.CreateParameter("yearMin", adInteger, adParamOutput, 2, yearMin)
  	cmd.Parameters.Append cmd.CreateParameter("yearMax", adInteger, adParamOutput, 2, yearMax)
  	cmd.Parameters.Append cmd.CreateParameter("errString", adVarchar, adParamOutput, 500, errString)

	Set GetPINamesAndGrantCounts = RunSPReturnRS(cmd)
	
	yearMin = cmd.Parameters(2)
	yearMax = cmd.Parameters(3)
	
	Set cmd = Nothing
  	Exit Function
End Function

'***********************************************************************
' Name:     DisplayPINamesByCategory
' Author:   HF
' Date:     4/20/2011
' Purpose:  Displays PI names per category name
' Input:    strCategory - category name - the name of the "name=value" pair on the URL.  e.g.
' http://cancercontrol-dev.cancer.gov/DCCPSGrants/bsa_ncab.asp?category=3&category2=4&numcols=1
'				So here, strCategory is "category" or "category2".
'  Output:	list of names
' Notes:	CR #45119
'***********************************************************************
Sub DisplayPINamesByCategory(strCategory)

	Dim rs
	Dim errString
	Dim nameCount
	Dim namesPerCol
	Dim numPIs
	Dim strName
	
	' QueryString parameters...
	Dim numcols		' number of columns in which to display PI names.
	Dim category	' 0=Pioneer, 1=Merit, 2=R01, 3=BSA)

	Dim NameArraySize
	NameArraySize = 1000
	Dim PINames(1000)
	Dim i
	Dim yearMin
	' Dim yearMax
	Dim year_added

	' HF (7/3/07) CR #39971 - replaced static names in HTML with ASP which queries names and grant counts from database. 
	' Perform a check on the incoming parameters, numcols and category.  If not present, default them.
	' HF (10/18/2011) - CR #45549 - Now accepting autopostback when user selects a fiscal year from the dropdown.  So
	' need to look at form variables as well.
	If (Request.QueryString("numcols") <> vbNullString) Then
		numcols = Request.QueryString("numcols")
	ElseIf (Request.Form("numcols") <> vbNullString) Then
		numcols = Request.Form("numcols")
	Else
		numcols=5
	End If

	If (Request.QueryString(strCategory) <> vbNullString) Then
		category = Request.QueryString(strCategory)
	ElseIf (Request.Form(strCategory) <> vbNullString) Then
		category = Request.Form(strCategory)
	ElseIf (Instr(1, Request.ServerVariables("URL"), "r01", 1)) Then
		' This case is necessary when no url variables are present, but user is on R01 page.
		category = R01		' 2
	Else
		category=0
	End If
	
	' HF (10/19/11) - CR #45549 - allow filtering of Pis by year added date
	If (Request.QueryString("year_added") <> vbNullString) Then
		year_added = Request.QueryString("year_added")
	ElseIf (Request.Form("year_added") <> vbNullString) Then
		year_added = Trim(Request.Form("year_added"))
	Else
		year_added=0
	End If
	
	Set rs = GetPINamesAndGrantCounts(category, year_added, yearMin, gCurrentDisplayYear, errString)
	
	If (Len(errString) > 0) Then 
		Response.Write("<br><div class='alert'>" & errString & "</div><br><br>" & vbCrLf)
	Else
		namesPerCol = (rs.RecordCount + 1) / numcols

		numPIs = rs.RecordCount
		
		While Not rs.EOF
			strName = ""


If DisplayCountDiff = "Y" Then
			 Dim strColor
			 strColor = "black"
			 If (IsNull(rs("grant_count_prev_year"))) Then 	' new pi
			 	If (CInt(rs("grants_in_current_fy")) > 0) Then
			 		strColor = "green"
			 	Else
			 		strColor = "red"
			 	End If
			 ElseIf (CInt(rs("grant_count")) < CInt(rs("grant_count_prev_year"))) Then 
			 	strColor = "red"
			 ElseIf (CInt(rs("grants_in_current_fy")) > 0) Then 
			 	strColor = "green"
			 End If
			 strName = "<font color='" & strColor & "'>"
End If

			strName = strName & "<A href=""pi_portfolio.asp?category=" & category & "&pi=" & rs("last_name") & ", " & rs("first_name") & """>" & rs("last_name") & ", " & rs("first_name")
			If (Len(rs("mi_name")) > 0) Then 
				strName = strName & " " & rs("mi_name") & "</A>"
			Else
				strName = strName & "</A>"
			End If

			If (NOT IsNull(rs("ESI_APPL_ELIG_FLAG"))) Then
				If (CInt(rs("ESI_APPL_ELIG_FLAG") ) = 1) Then strName = strName & "<sup>1</sup>"
			End If

If DisplayCountDiff = "Y" Then			 
			 strName = strName + "(" & rs("grant_count") & ")</font>"
			 If (CInt(rs("year_added")) = year(now)) Then strName = strName + "<img src='new.gif'>"
End If
			
			strName = strName + "</A><BR>" & vbCrLf

			' Store names in an array.
'			Response.Write(strName)
			PINames(nameCount) = strName
			nameCount = nameCount + 1

			' Set the year bounds.
			'If (CInt(rs("year_added")) < yearMin) Then yearMin = CInt(rs("year_added"))
			'If (CInt(rs("year_added")) > yearMax) Then yearMax = CInt(rs("year_added"))

			rs.MoveNext
'			If ( ((nameCount Mod namesPerCol) = 0 ) And (Not rs.EOF)   ) Then Response.Write("</TD><TD class='rowLabel' VALIGN='TOP'>")

			' Expand the array if full.
			If ((Not rs.EOF) And ((nameCount Mod NameArraySize) = 0)) Then ReDim Preserve PINames(UBound(PINames) + NameArraySize)

		Wend
	End If

	If Not(rs Is Nothing) Then rs.Close()
	Set rs = Nothing
	
	' Display the years dropdown allowing user to filter PIs by the year added to the website.  This applies
	' only to the New R01s site.  Mark would like only 2007 forward.
'	If (category = 2) Then DisplayYearsDropdown 2007, gCurrentDisplayYear, year_added
	
	' Write the names to the page.
	Response.Write("<TABLE><TR><TD class=""rowLabel"" VALIGN=""top"">")
	For i = 0 To nameCount-1
			Response.Write(PINames(i))
			If ( ((i Mod namesPerCol) = 0 ) And (i > 0) And (i < nameCount) ) Then
				Response.Write("</TD><TD class='rowLabel' VALIGN='TOP'>")
			End If
	Next
	
	Response.Write("</TD></TR></TABLE><HR><i>" + CStr(numPIs) + " principal investigators</i>") 
	If (category = 2) Then
		Response.Write("<br><sup>1</sup>&nbsp;<a href=""http://grants.nih.gov/grants/new_investigators/index.htm#earlystage"" target=""_blank"">Early Stage Investigator (ESI)</a>.")
	End If

	End Sub

' nmf
'Retrieve count of all funded grants belonging to specified PI
' HF (1/21/09) CR #41982 - remove iDynamic parameter since no longer used.
Function GetGrantCountByPI(strFirstName,strLastName)
	Dim cmd

	Set cmd = GetCommand("GetGrantCountByPI", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("firstname", adVarChar, adParamInput, 20, strFirstName)
	cmd.Parameters.Append cmd.CreateParameter("lastname", adVarChar, adParamInput, 20, strLastName)
	GetGrantCountByPI = RunSPReturnInt(cmd)

	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:     DisplayYearsDropdown
' Author:   HF
' Date:     10/18/2011
' Purpose:  Displays a dropdown containing all years when R01 PIs have been added to the database.
' Input:    yearMin - the min year
'			yearMax - the max year
'			yearSelected - the year currently selected
' Output:	list of years
' Notes:	CR #45549
'***********************************************************************
Sub DisplayYearsDropdown(yearMin, yearMax, yearSelected)

    Dim i
' 	text-align works for all browsers other than IE, so we have to use &nbsp; spacers (further below) instead.	
'	Response.Write("<BR>" & vbCrLf & "Fiscal Year: <SELECT NAME='year_added' STYLE='min-width: 116px; text-align: center' ONCHANGE='this.form.submit()'><BR><HR>" & vbCrLf)
	Response.Write("<BR>" & vbCrLf & "Fiscal Year... <SELECT NAME='year_added' STYLE='min-width: 116px;' ONCHANGE='this.form.submit()'><BR><HR>" & vbCrLf)

	' Write the names to the page.
	Response.Write("<option value='0'>Select a Fiscal Year</option>" & vbCrLf)
	For i = yearMin To yearMax
		strOutput = "<option value='" & i & "'"
		If (CInt(i) = CInt(yearSelected)) Then strOutput = strOutput & " SELECTED "
		strOutput = strOutput & ">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" & i & "</option>" & vbCrLf
		Response.Write(strOutput)
	Next
	
	Response.Write("</SELECT><br><hr>" & vbCrLf)

End Sub
%>