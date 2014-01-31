<!-- #include virtual="/grants/adovbs.asp" -->
<%
Const ConnString = "DSN=PMAdb"
Const SchemaName = "dccps."
Const GrantsPerPage = 100

' Returns a command object ready to have its parameters added.
' Input: strPkgName - name of package
'        strProcName - name of stored procedure to run.
' Returns: ADODB.Command object, already opened.
' Note: L. Tsao 06.22.2004 CR# 15591 - Caller is responsible
'		for closing DB connection when no longer needed and
'		setting the returned command object to Nothing.

Function GetCommandText(strSql, strConnOptions)
    Dim conn
    Dim cmd
    Dim strConnString
    Dim strSchema

    Set conn = Server.CreateObject("ADODB.Connection")
    Set cmd = Server.CreateObject("ADODB.Command")

    conn.Open ConnString & strConnOptions
    cmd.ActiveConnection = conn
    cmd.CommandType = adCmdText
    cmd.CommandText = strSql

    Set GetCommandText = cmd
End Function


Function GetCommand(strProcName, strConnOptions)
    Dim conn
    Dim cmd
    Dim strConnString
    Dim strSchema

    Set conn = Server.CreateObject("ADODB.Connection")
    Set cmd = Server.CreateObject("ADODB.Command")

    conn.Open ConnString & strConnOptions
    cmd.ActiveConnection = conn
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = SchemaName & "PMAWeb_Pkg." & strProcName

    Set GetCommand = cmd
End Function

' Returns a command object ready to have its parameters added.
' Input: strPackage - name of package
'        strProcName - name of stored procedure to run.
'        strConnOptions -
' Returns: ADODB.Command object, already opened.
' Note: L. Tsao 06.22.2004 CR# 15591 - Caller is responsible
'		for closing DB connection when no longer needed and
'		setting the returned command object to Nothing.
Function GetStoredProc(strPackage, strProcName, strConnOptions)
	Dim conn
    Dim cmd

    Set conn = Server.CreateObject("ADODB.Connection")
    Set cmd = Server.CreateObject("ADODB.Command")

    conn.Open ConnString & strConnOptions
    cmd.ActiveConnection = conn
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = SchemaName & strPackage & "." & strProcName

    Set GetStoredProc = cmd
End Function

' Runs a stored procedure and returns its recordset return value.
Function RunSPReturnRS(ByRef cmd)

    Dim rs
    Set rs = Server.CreateObject("ADODB.Recordset")

    ' Execute the query for readonly
    rs.CursorLocation = adUseClient
    rs.Open cmd, , adOpenForwardOnly, adLockReadOnly

	' L. Tsao 06.22.2004 CR# 15591 - Caller should dispose of command
    '  								 object.  Do not do this here.
    '								 Recordset must remain connected.
    ' Disconnect the recordset
    'Set cmd.ActiveConnection = Nothing
    'Set cmd = Nothing

    ' We can't disconnect the recordset in ChiliSoft! ASP for some reason - it produces an error.
    ' Set rs.ActiveConnection = Nothing

    ' Return the resultant recordset
    Set RunSPReturnRS = rs
End Function

' Runs a stored procedure and returns its integer return value.
Function RunSPReturnInt(cmd)
    Dim param

    Set param = cmd.CreateParameter("output", adNumeric, adParamOutput, 4)
    cmd.Parameters.Append param

    cmd.Execute
    RunSPReturnInt = CInt(param.value)
    Set param = Nothing

	' L. Tsao 06.22.2004 CR# 15591 - Caller should dispose of command
    '  								 object.  Do not do this here.
    ' Disconnect the command
    'Set cmd.ActiveConnection = Nothing
    'Set cmd = Nothing
End Function

' Runs a stored procedure and returns its character return value.
Function RunSPReturnVarchar(cmd, length)
    Dim param

    Set param = cmd.CreateParameter("output", adVarChar, adParamOutput, length)
    cmd.Parameters.Append param
    cmd.Execute
    If param.value <> vbNullString Then
    	RunSPReturnVarchar = CStr(param.value)
    Else
    	RunSPReturnVarchar = vbNullString
    End If
    Set param = Nothing

	' L. Tsao 06.22.2004 CR# 15591 - Caller should dispose of command
    '  								 object.  Do not do this here.
     ' Disconnect the command
    'Set cmd.ActiveConnection = Nothing
    'Set cmd = Nothing
End Function

'***********************************************************************
' Name:     GetPortfolioTitle
' Author:   HF
' Date:     2/27/12
' Purpose:  Retrieves portfolio title.
' Input:    strOwner - portfolio owner
' 			strPortfolioName - portfolio name
' Output:	portfolio title
' Notes:	CR# 45687
'***********************************************************************
Function GetPortfolioTitle(strOwner, strPortfolioName)

	Dim cmd
	set cmd = GetCommand("GetPortfolioTitle", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
	cmd.Parameters.Append cmd.CreateParameter("name", adVarChar, adParamInput, 60, strPortfolioName)

	GetPortfolioTitle = RunSPReturnVarchar(cmd, 100)

	cmd.ActiveConnection.Close
    Set cmd = Nothing
	
End Function

'***********************************************************************
' Name:     ProperCase
' Author:   L. Tsao
' Date:     06.22.2004
' Purpose:  Converts the given string to proper case.
' Input:    strParam - string to be converted
' Output:	a copy of the string formatted to proper case
' Notes:	CR# 9235
'***********************************************************************
Function ProperCase(strParam)

	Dim strIn, strSpace, strFwdSlash, strHyphen, strDelim, strTemp
	Dim lTemp
	Dim sTemp
	Dim intParseChar, intWordIter, intNumDelims

	strIn = LCase(strParam)
	strSpace = " "
	strFwdSlash = "/"
	strHyphen = "-"
	intNumDelims = 3	'number of delimiters we process

	If Len(strIn) Then
		'change string to proper case
		intParseChar = 1
		For intParseChar = 1 to intNumDelims
			Select Case intParseChar
				Case 1
					strDelim = strSpace
				Case 2
					strDelim = strFwdSlash
				Case intNumDelims
					strDelim = strHyphen
			End Select

			sTemp = Split(strIn, strDelim)
			lTemp = UBound(sTemp)

			For intWordIter = 0 To lTemp
				strTemp = strTemp & UCase(Left(sTemp(intWordIter), 1)) & Mid(sTemp(intWordIter), 2) & strDelim
			Next

			'set for next iteration
			strIn = strTemp
			strTemp = ""
		Next

		'trim extra delimiters from end
		strIn = Left(strIn, (Len(strIn)-intNumDelims))
	End If

	ProperCase = strIn

End Function

' This implements the StrConv function from Visual Basic.
' Right now only vbProperCase is implemented, because that's
' all I need right now.
Function StrConv(strIn, format)
    if format <> vbProperCase then
    	Response.write "Unknown format"
    	Response.End
    end if

    dim SpacePos
    dim strOut

    SpacePos = InStr(1, strIn, " ")
    Do While SpacePos <> 0
    	' Move the next word into the out string, and remove it from the in string.
    	strOut = strOut & UCase(Left(strIn, 1)) & LCase(Mid(strIn, 2, SpacePos - 1)) & " "
    	' Response.write "strOut is: " & strOut & "<BR>" & vbcrlf
    	strIn = Right(strIn, Len(strIn) - SpacePos)
    	SpacePos = InStr(1, strIn, " ")
    Loop

    ' Copy the last part of the string
    strOut = strOut & UCase(Left(strIn, 1)) & LCase(Mid(strIn, 2, Len(strIn) - 1))
    StrConv = strOut
End Function

Function Nz(varIn)
    If IsNull(varIn) Then
    	Nz = vbNullString
    Else
    	Nz = varIn
    End If
End Function

' Displays an error message and ends the web page
Function ShowError(strMsg)
    Response.Write "<div class='color-red'>" & strMsg & "</div>"
    Response.Write "</body></html>" & vbcrlf
    Response.End
End Function


' Displays a table with grant information for the
' specified program and branch. The caller is responsible
' for making sure that strProgram and strBranch are valid.
' This means that the caller is responsible for preventing
' cross-site scripting vulnerabilities.
Sub DisplayGrants(strProgram, strBranch, strActive)
    Dim rst
    Dim numgrants

    Set rst = RetrieveDataDynamic(numgrants, strProgram, strBranch, _
    	vbNullString, vbNullString, 0, vbNullString, strActive, 0)

    DisplayGrantsAll rst, numgrants, strProgram, strBranch, strActive, False, False, vbNullString
End Sub


'***********************************************************************
' Name:     DisplayGrantsByCode
' Author:   N. Francis
' Date:     06.29.2006
' Purpose:  Displays grant data coded with the specified code name.
' Input:    strProgram - acronym for program
'						strBranch  - acronym for branch
'						strCodeName - name of the code to filter on
'     			strActive  - type of grants to display
'							'ACTIVE'  (grants with PCF_FLAG = 'Y')
'							'ARCHIVE' (grants with PCF_FLAG = 'N')
'							'ALL'	   (all, regardless of PCF_FLAG)
'	intCodeFmt:	0: code name (single code only)
'   						1: code id (single or comma-delimited multiple ids)
'	strCodeName:	if intCodeFmt=0, code name (e.g., "HEALTH DISPARITIES")
'            			if intCodeFmt=1, code id or ids (e.g., "1256" or "1256, 1257, 1311")
' Output:	none
' Notes:	CR#38313
' HF (10/13/09) CR #43375 - Added codeFmt arg and changed meaning of strCodeName above.
'***********************************************************************
Sub DisplayGrantsByCode(strProgram, strBranch, intCodeFmt, strCodeName, strActive)
    Dim rst
    Dim numgrants

    Set rst = RetrieveDataDynamic(numgrants, strProgram, strBranch, vbNullString, _
    	vbNullString, intCodeFmt, strCodeName, strActive, 0)

    DisplayGrantsAll rst, numgrants, strProgram, strBranch, strActive, False, False, vbNullString
End Sub


' Like DisplayGrants, but also has a Mechanism parameter.
Sub DisplayGrantsMechanism(strProgram, strBranch, strMechanism, intFY)
    Dim rst
    Dim numgrants
    Dim strActive

    If 0 = CInt(intFY) Then
	strActive = "ACTIVE"
    Else
    	strActive = "ALL"
    End If

    Set rst = RetrieveDataDynamic(numgrants, strProgram, strBranch, vbNullString, _
    	strMechanism, 0, vbNullString, strActive, intFY)

    DisplayGrantsAll rst, numgrants, strProgram, strBranch, strActive, False, False, vbNullString
End Sub

' Like DisplayGrants, but also has a Mechanism parameter and displays archived items.
' CR#21498 - nmf
Sub DisplayGrantsMechanismHistory(strProgram, strBranch, strMechanism, intFY)
    Dim rst
    Dim numgrants
    Dim strActive

    If 0 = CInt(intFY) Then
			strActive = "ARCHIVE"
    Else
    	strActive = "ALL"
    End If

    Set rst = RetrieveDataDynamic(numgrants, strProgram, strBranch, vbNullString, _
    	strMechanism, 0, vbNullString, strActive, intFY)

    DisplayGrantsAll rst, numgrants, strProgram, strBranch, strActive, False, False, vbNullString
End Sub

' strRFA must be a comma-separated list of single-quoted RFA/PA numbers: 'PAR98-101', 'CA02-123'
' strActive must be one of the following values - "ACTIVE", 'ARCHIVE', 'ALL'
'    - ACTIVE will display only grants with PCF_FLAG = 'Y'
'    - ARCHIVE will display only grants with PCF_FLAG = 'N'
'    - ALL will display all grants regardless of what the PCF_FLAG says.
Sub DisplayGrantsRFA(strRFA, strActive)
    Dim rst
    Dim numgrants

    Set rst = RetrieveDataDynamic(numgrants, vbNullString, vbNullString, _
				"IN (" & strRFA & ")", vbNullString, 0, vbNullString, strActive, 0)

    DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, strActive, False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayGrantsRFAByProgram
' Author:   L. Tsao
' Date:     08.15.2004
' Purpose:  Displays grants given the specified parameters.
' Input:    strProgram - acronym for program
'			strRFA	   - comma-separated list of single-quoted RFA/PAs.
'			strActive  - type of grants to display
'						 'ACTIVE'  (grants with PCF_FLAG = 'Y')
'					     'ARCHIVE' (grants with PCF_FLAG = 'N')
'					     'ALL'	   (all, regardless of PCF_FLAG)
' Output:	none
' Notes:	CR# 16909
'***********************************************************************
Sub DisplayGrantsRFAByProgram(strProgram, strRFA, strActive)
    Dim rst
    Dim numgrants

    Set rst = RetrieveDataDynamic(numgrants, strProgram, vbNullString, _
				"IN (" & strRFA & ")", vbNullString, 0, vbNullString, strActive, 0)

    DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, strActive, False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayGrantsRFAByBranch
' Author:   L. Tsao
' Date:     08.15.2004
' Purpose:  Displays grants given the specified parameters.
' Input:    strProgram - acronym for program
'			strBranch  - acronym for branch
'			strRFA	   - comma-separated list of single-quoted RFA/PAs.
'			strActive  - type of grants to display
'						 'ACTIVE'  (grants with PCF_FLAG = 'Y')
'					     'ARCHIVE' (grants with PCF_FLAG = 'N')
'					     'ALL'	   (all, regardless of PCF_FLAG)
' Output:	none
' Notes:	CR# 16909
'***********************************************************************
Sub DisplayGrantsRFAByBranch(strProgram, strBranch, strRFA, strActive)
    Dim rst
    Dim numgrants

    Set rst = RetrieveDataDynamic(numgrants, strProgram, strBranch, _
				"IN (" & strRFA & ")", vbNullString, 0, vbNullString, strActive, 0)

    DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, strActive, False, False, vbNullString
End Sub

Sub DisplayGrantsNoRFA(strProgram)
	Dim rst
	dim numgrants

	Set rst = RetrieveDataDynamic(numgrants, strProgram, vbNullString, "IS NULL", _
		vbNullString, 0, vbNullString, "ACTIVE", 0)

	DisplayGrantsAll rst, numgrants, strProgram, vbNullString, "ACTIVE", False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayFullGrantsInPortfolio
' Author:   N. Francis
' Date:     10.07.2004
' Purpose:  Displays all grant data from the specified portfolio
'           with the specified owner.
' Input:    strOwner - owner of the portfolio
'           strPortfolioName  - name of the porfolio
' Output:	none
' Notes:	CR#19348
'***********************************************************************
Sub DisplayFullGrantsInPortfolio (strOwner, strPortfolioName)
	Dim rst
	Dim numgrants

	Set rst = RetrieveFullDataPortfolio(strOwner, strPortfolioName)

	numgrants = GetFullGrantCountPortfolio(strOwner, strPortfolioName)
	DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ALL", False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayGrantsInPortfolioByCode
' Author:   L. Tsao
' Date:     05.25.2004
' Purpose:  Displays grant data from the specified portfolio with the
'		      	specified owner and code name.
' Input:		strOwner - owner of the portfolio
'				strPortfolioName  - name of the porfolio
'				strCodeName - name of the code to filter on
'				intBranchId - the branch ID, from the branches table (e.g., 4 for ACSRB)
'				start - the starting record number (e.g., 1, 101, 201)
'				count - the number of records to retrieve (e.g., 100)
' Output:	strError - any error returned from the stored proc.
' Notes:	CR# 9235
'				HF  (11/21/07) - CR #40424.  added parameter p_branch_id
'				to the call parameters.  Currently applicable only for ACSRB.  We perform an 
'				additional subquery into the LOCAL_ORGANSITE_CODES_MAP table 
'				to return grants which fall into the additional codes in that table.  Pass 0 if N/A.
'				HF  (1/23/08) - CR #40424.  added parameters start and count for pagination
'***********************************************************************
Sub DisplayGrantsInPortfolioByCode ( strOwner, strPortfolioName, strCodeName, intBranchId, start, count, strError)
	Dim rst
	Dim numgrants

	' HF (11/21/07) - CR#40424 - Multi-site means all grants listed in at least 2 sites.  Since
	' the code logic is different, branch here.
	If (strCodeName = "MULTI-SITE") Then
		Set rst = RetrieveMultisiteGrantsInPortfolio ( strOwner, strPortfolioName, start, count, numgrants, strError )
	Else
		Set rst = RetrieveDataPortfolioByCode ( strOwner, strPortfolioName, strCodeName, intBranchId, 0)
		numgrants = GetGrantCountPortfolioByCode ( strOwner, strPortfolioName, strCodeName, intBranchId, 0 )
	End If
	
	DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ALL", False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayGrantsInPortfolioHistory
' Author:   N. Francis
' Date:     09.01.2004
' Purpose:  Displays historic (no longer active) grant data from the
'			      specified portfolio with the specified owner.
' Input:    strOwner - owner of the portfolio
'				strPortfolioName1 - name of the 1st porfolio to draw grants from
'				strPortfolioName2 - name of the 2nd porfolio to draw grants from. Use "" if unused
' Output:	none
' Notes:	CR# 17929
'				HF (8/31/07) CR #40172 - Added capability to query from 2 portfolios.  Pass in
'				"" for 2nd portfolio if not needed.
'***********************************************************************
Sub DisplayGrantsInPortfolioHistory(strOwner, strPortfolioName1, strPortfolioName2)

	Dim rst
	Dim numgrants

	Set rst = RetrieveDataPortfolioHistory(strOwner, strPortfolioName1, strPortfolioName2)
	numgrants = GetGrantCountPortfolioHistory(strOwner, strPortfolioName1, strPortfolioName2)
	
	' HF (9/4/07) CR #40172 - changed from ALL to ARCHIVE_WITH_MSG so that the 
	' proper message is displayed for D4D.
	DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ARCHIVE_WITH_MSG", False, False, vbNullString
	
End Sub

'***********************************************************************
' Name:     DisplayGrantsInPortfolio
' Purpose:
' Input:    	strOwner - owner of the portfolio
'				strPortfolioName - name of the 1st porfolio to draw grants from
'				queryModification:
'				  	= 0 - no modification, returns only the primary PI for the grant
'				  	= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:
' Notes:	HF (1/21/10) CR #43667, #43598 - Added p_QueryModification and 
'			capability to query only the latest year grants (done originally for statfund).
'***********************************************************************
Sub DisplayGrantsInPortfolio (strOwner, strPortfolioName, queryModification, strSubtitle)

	Dim rst
	Dim numgrants

	Set rst = RetrieveDataPortfolio(strOwner, strPortfolioName, queryModification)
	numgrants = GetGrantCountPortfolio(strOwner, strPortfolioName, queryModification)
	DisplayGrantsAll rst, numgrants, vbNullString, vbNullString, "ALL", False, False, strSubtitle
End Sub

'***********************************************************************
' Name:     DisplayGrantsInPortfolio_LP
' Purpose:
' Input:    	strOwner - owner of the portfolio
'				strPortfolioName - name of the 1st porfolio to draw grants from
'				strBranch - NCI Branch
'				queryModification - 
'				  	= 0 - no modification, returns only the primary PI for the grant
'			  		= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:
' Notes:	HF (1/21/10) CR #43667, #43598 - Added p_QueryModification
'				to query only the latest year grants (done originally for statfund).
'				Added pcf_flag to query only active grants.
'***********************************************************************
Sub DisplayGrantsInPortfolio_LP (strOwner, strPortfolioName, strBranch, queryModification)

	Dim rst
	Dim numgrants

	Set rst = RetrieveDataPortfolio(strOwner, strPortfolioName, queryModification)
	numgrants = GetGrantCountPortfolio(strOwner, strPortfolioName, queryModification)
	DisplayGrantsAll rst, numgrants, vbNullString, strBranch, "ALL", False, False, vbNullString
End Sub

'***********************************************************************
' Name:     DisplayGrantsInPortfolioByCode_LP
' Author:   N. Francis
' Date:     01.18.2006
' Purpose:  Displays grant data from the specified portfolio with the
'		      	specified owner and code name.  Grant links to Local Publications
'           page.
' Input:    	strOwner - owner of the portfolio
'				strPortfolioName - name of the 1st porfolio to draw grants from
'				strBranch - NCI Branch
'				strCodeName - name of the code to filter on
'				queryModification - 
'				  	= 0 - no modification, returns only the primary PI for the grant
'			  		= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:	none
' Notes:	CR# 9235
'				CR#40424 - HF (11/21/07).  added branch_id parameter of 0 to 
'				RetrieveDataPortfolioByCode, GetGrantCountPortfolioByCode for 
'				compatibility with new call format.
'***********************************************************************
Sub DisplayGrantsInPortfolioByCode_LP ( strOwner, strPortfolioName, strBranch, _
	strCodeName, queryModification )
	
	Dim rst
	Dim numgrants

	Set rst = RetrieveDataPortfolioByCode ( strOwner, strPortfolioName, _
		strCodeName, 0, queryModification )
	numgrants = GetGrantCountPortfolioByCode ( strOwner, strPortfolioName, _
		strCodeName, 0, queryModification )
	DisplayGrantsAll rst, numgrants, vbNullString, strBranch, "ALL", False, False, vbNullString
End Sub

'***********************************************************************
' Purpose:  Find person_id for person's profile (parent) entry
'           Might have used person_type_code=PPRF but some were found
'           without a PPRF entry...seems an ALS entry is used instead
' Input:    lngProfilePersonID - profile person id
' Output:   lngPID - person_id (profile entry; parent)
'***********************************************************************
Function FindProfileEntryPersonID(lngProfilePersonID)
  Dim cmd
  Dim strSPName
	Dim lngPID
	Dim lngPPID
  Dim lngTest

  strSPName = "FindProfileEntryPersonID"
  Set cmd = GetCommand(strSPName, vbNullString)

  If lngProfilePersonID<>0 and Len(lngProfilePersonID)>0 Then
		cmd.Parameters.Append cmd.CreateParameter("ppid", adNumeric, adParamReturnValue, 10)
  	cmd.Parameters.Append cmd.CreateParameter("pid", adNumeric, adParamInput, 10, lngProfilePersonID)
  	cmd.Execute
  	lngPPID = cmd.Parameters("ppid")
  End If



  lngTest = lngProfilePersonID
  Do
    lngPID = lngTest
    lngTest = Nz(DLookup("profile_person_id", "person_restricted_vw", "person_id=" & lngPID), 0)
  Loop While lngTest <> lngPID And lngTest <> 0

  FindProfileEntryPersonID = lngPID
End Function


'***********************************************************************
' Name:     RetrieveFullDataPortfolio
' Author:   N. Francis
' Date:     10.07.2004
' Purpose:  Retrieves all grant data from the specified portfolio
' Input:    strOwner - owner of the portfolio
'           strPortfolioName  - name of the porfolio
' Output:		recordset containing grant data
' Notes:		CR#19348
'***********************************************************************
Function RetrieveFullDataPortfolio(strOwner, strPortfolioName)
    Dim cmd
    Dim strSPName
    Dim strError

    strSPName = "GetFullGrantListPortfolios"
    Set cmd = GetCommand(strSPName, vbNullString)

    If Len(strOwner) <> 0 And Len(strPortfolioName) <> 0 Then
		cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
		cmd.Parameters.Append cmd.CreateParameter("name", adVarChar, adParamInput, 60, strPortfolioName)
    End If

    Set RetrieveFullDataPortfolio = RunSPReturnRS(cmd)

	'L. Tsao 06.22.2004 CR# 15591 - clean up cmd but do nothing with connection
	'								(still needed for recordset returned)
    Set cmd = Nothing
End Function

'***********************************************************************
' Name:     RetrieveDataPortfolioByCode
' Author:   L. Tsao
' Date:     05.25.2004
' Purpose:  Retrieves active grant data from the specified portfolio with the
'			specified owner and code name.
' Input:    strOwner - owner of the portfolio
'           strPortfolioName  - name of the porfolio
'			strCodeName - name of the code to filter on
'				queryModification - 
'				  	= 0 - no modification, returns only the primary PI for the grant
'			  		= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:	recordset containing grant data
' Notes:	CR# 9235
'				CR#40424 - HF (11/21/07).  added intBranchId parameter
'***********************************************************************
Function RetrieveDataPortfolioByCode ( strOwner, strPortfolioName, strCodeName, intBranchId, _
	queryModification)
    Dim cmd
    Dim strSPName
    Dim strError

    strSPName = "GetGrantListByCode"
    Set cmd = GetCommand ( strSPName, vbNullString )

    If Len ( strOwner ) <> 0 And Len ( strPortfolioName ) <> 0 And Len ( strCodeName ) <> 0 Then
	   cmd.Parameters.Append cmd.CreateParameter ( "owner", adVarChar, adParamInput, 30, strOwner )
	   cmd.Parameters.Append cmd.CreateParameter ( "pname", adVarChar, adParamInput, 60, strPortfolioName )
	   cmd.Parameters.Append cmd.CreateParameter ( "cname", adVarChar, adParamInput, 100, strCodeName )
	   cmd.Parameters.Append cmd.CreateParameter ( "branch_id", adInteger, adParamInput, 4, CInt(intBranchId) )
    End If

	Set RetrieveDataPortfolioByCode = RunSPReturnRS ( cmd )

	'L. Tsao 06.22.2004 CR# 15591 - clean up cmd but do nothing with connection
	'								(still needed for recordset returned)
    Set cmd = Nothing
End Function

'***********************************************************************
' Name:	RetrieveMultisiteGrantsInPortfolio
' Author:	HF
' Date:		11/21/07 (CR#40424)
' Purpose:Retrieves the grants and count of all grants in the specified
'				portfolio which belong to multiple cancer sites (meaning, having
'				> 1 record in LOCAL_APPL_CODES_T)
' Input:	    strOwner - owner of the portfolio
'           		strPortfolioName  - name of the porfolio
'				start - the starting record number (e.g., 1, 101, 201)
'				count - the number of records to retrieve (e.g., 100)
' Output:	numgrants - number of records being returned
'				strError - any error returned from the stored proc.
' Returns:recordset containing grant data and count
' Output:	none
' Notes:	HF  (1/23/08) - CR #40424.  added parameters start and count for pagination
'***********************************************************************
Function RetrieveMultisiteGrantsInPortfolio (strOwner, strPortfolioName, start, count, numgrants, strError)

    Dim cmd
    Dim strSPName

    strSPName = "GetMultisiteGrantsInPortfolio"
    Set cmd = GetCommand ( strSPName, vbNullString )

    If Len ( strOwner ) <> 0 And Len ( strPortfolioName ) <> 0 Then
    
    	' Set defaults for the usual case where the user is not clicking a page 2, 3... link.
		If (Len(start) = 0) Then start = 1
		If (Len(count) = 0) Then count = 100

		cmd.Parameters.Append cmd.CreateParameter ( "owner", adVarChar, adParamInput, 30, strOwner )
		cmd.Parameters.Append cmd.CreateParameter ( "pname", adVarChar, adParamInput, 60, strPortfolioName )
		cmd.Parameters.Append cmd.CreateParameter ( "start", adInteger, adParamInput, 7, CInt(start))
		cmd.Parameters.Append cmd.CreateParameter ( "count", adInteger, adParamInput, 7, CInt(count))
	  	cmd.Parameters.Append cmd.CreateParameter ( "strError", adVarchar, adParamOutput, 500, strError)
		cmd.Parameters.Append cmd.CreateParameter ( "numgrants", adNumeric, adParamOutput, 7, numgrants )
	End If

	Set RetrieveMultisiteGrantsInPortfolio = RunSPReturnRS ( cmd )
	numgrants = CInt(cmd.Parameters(4))
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:     RetrieveDataPortfolio
' Purpose:
' Input:    	strOwner - owner of the portfolio
'				strPortfolioName - name of the 1st porfolio to draw grants from
'				queryModification:
'				  	= 0 - no modification, returns only the primary PI for the grant
'				  	= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:
' Notes:	HF (1/21/10) CR #43667, #43598 - Added p_QueryModification and 
'			capability to query only the latest year grants (done originally for statfund).
'***********************************************************************
Function RetrieveDataPortfolio(strOwner, strPortfolioName, queryModification)

    Dim cmd
    Dim strSPName
    Dim strError
	
    strSPName = "GetGrantListPortfolios"
    Set cmd = GetCommand(strSPName, vbNullString)

    If Len(strOwner) <> 0 And Len(strPortfolioName) <> 0 Then
		cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
		cmd.Parameters.Append cmd.CreateParameter("name", adVarChar, adParamInput, 60, strPortfolioName)
		cmd.Parameters.Append cmd.CreateParameter("queryModification", adInteger, adParamInput, 4, CInt(queryModification))
    End If

    Set RetrieveDataPortfolio = RunSPReturnRS(cmd)

	'L. Tsao 06.22.2004 CR# 15591 - clean up cmd but do nothing with connection
	'								(still needed for recordset returned)
    Set cmd = Nothing
End Function

'***********************************************************************
' Name:     RetrieveDataPortfolioHistory
' Input:    strOwner - owner of the portfolio
'				strPortfolioName1 - name of the 1st porfolio to draw grants from
'				strPortfolioName2 - name of the 2nd porfolio to draw grants from. Use "" if unused
' Output:	Retrieves all archived grants for the passed portfolio(s) and owner.
' Notes:	HF (8/31/07) CR #40172 - Added capability to query from 2 portfolios.  Pass in
'				"" for 2nd portfolio if not needed.
'***********************************************************************
Function RetrieveDataPortfolioHistory(strOwner, strPortfolioName1, strPortfolioName2)

    Dim cmd
    Dim strSPName
    Dim strError

    strSPName = "GetGrantListPortfoliosHistory"
    Set cmd = GetCommand(strSPName, vbNullString)

    If Len(strOwner) <> 0 And Len(strPortfolioName1) <> 0 Then
		cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
		cmd.Parameters.Append cmd.CreateParameter("name1", adVarChar, adParamInput, 60, strPortfolioName1)
		cmd.Parameters.Append cmd.CreateParameter("name2", adVarChar, adParamInput, 60, strPortfolioName2)
    End If

    Set RetrieveDataPortfolioHistory = RunSPReturnRS(cmd)
    Set cmd = Nothing

End Function

'***********************************************************************
' Function RetrieveDataDynamic
' Returns a recordset for the dynamically-generated set of criteria as the return value and the number of
' grants in that recordset as the first parameter.
' HF (10/13/09) CR #43375 - Added codeFmt arg and changed meaning of strCodeName to:
'
'	intCodeFmt:	0: code name (single code only)
'   						1: code id (single or comma-delimited multiple ids)
'	strCodeName:	if intCodeFmt=0, code name (e.g., "HEALTH DISPARITIES")
'            			if intCodeFmt=1, code id or ids (e.g., "1256" or "1256, 1257, 1311")
'***********************************************************************
Function RetrieveDataDynamic(ByRef numgrants, strProgram, strBranch, strRFA, _
		strMechanism, intCodeFmt, strCodeName, strActive, intFY)
		
    Dim strWhere
    Dim cmd
    Dim intStart, intCount

    strWhere = BuildCriteria(strProgram, strBranch, strRFA, strMechanism, strActive, intFY)

    ' Set the intStart and intCount variables -- these are modified in MakeCounts.
    MakeCounts intStart, intCount

    Set cmd = GetCommand("GetGrantList", vbNullString)

    cmd.Parameters.Append cmd.CreateParameter("strWhere", adVarChar, adParamInput, 2048, strWhere)
    cmd.Parameters.Append cmd.CreateParameter("intCodeFmt", adInteger, adParamInput, 4, CInt(intCodeFmt))  ' HF (10/13/09) CR #43375
    cmd.Parameters.Append cmd.CreateParameter("strCodeName", adVarChar, adParamInput, 100, strCodeName)
    cmd.Parameters.Append cmd.CreateParameter("start", adInteger, adParamInput, 4, CInt(intStart))
    cmd.Parameters.Append cmd.CreateParameter("count", adInteger, adParamInput, 4, CInt(intCount))

    numgrants = GetGrantCount(strProgram, strBranch, strRFA, strMechanism, intCodeFmt, strCodeName, strActive, intFY)

    Set RetrieveDataDynamic = RunSPReturnRS(cmd)

	'L. Tsao 06.22.2004 CR# 15591 - clean up cmd but do nothing with connection
	'								(still needed for recordset returned)
    Set cmd = Nothing
End Function

'***********************************************************************
' Name:     DisplayGrantsAll
' Author:
' Date:
' Purpose: Central routine for rendering the HTML table of grants for all pages on
'				the public website.
' Input:    rst - result set to be clothed in HTML table
'				numgrants - number of grants in the result set.
'				strProgram - 
'				strBranch - 
'				strActive - are grants active?
'				bDisplayFY - do we display the fy of the grant on the rightmost column of the table (done for Acknowledgements site)?
'				AnnotateFirstR01Grant - do we asterisk the first R01 grant in the result set (done for Acknowledgements site)?
'				strTableCaption - allows caller to pass in the caption instead of using the canned caption in this routine.  Pass
'					vbNullString to get the canned string, your own string to customize.
' Notes:	' HF (1/21/09) CR #41982 - display fy, is so specified.
				' HF (11/24/09) CR #43545 - this routine now needs to put an asterisk by the earliest RO1 
				' grant on the Star R01 page.  Need to:
				' - pass in paramenter requesting this feature
				' - Write output to a string that can be modified, then only one Response.Write at end
				' - Write logic to move the asterisk down to the earliest R01 grant (last read, since data
				' -  is read fy descending).
'***********************************************************************
Sub DisplayGrantsAll(rst, numgrants, strProgram, strBranch, strActive, bDisplayFY, _
	AnnotateFirstR01Grant, strTableCaption)

    Dim strName
    Dim strTitle
    Dim iSerialNum
    Dim strURL
    Dim intStart, intCount
    Dim strFY, blnHasFY
    Dim intWidth, intNumcols
    Dim strScript
    Dim strPortfolio, blnHasPortfolio
	Dim strOutput
	Dim earliestStartDate
	Dim earliestR01Grant
	
    If rst.EOF Then
        rst.Close
		'L. Tsao 06.22.2004 CR# 15591 - Close connection here since recordset no longer has to be connected.
		rst.ActiveConnection.Close
		Set rst = Nothing
		Response.write "<p>&nbsp;&nbsp;&nbsp;<font face=""Arial, sans-serif"">No grants found.</font></p>" & vbCrLf
		Exit Sub
    End If

    MakeCounts intStart, intCount

    strFY = Request.QueryString("fy")
    blnHasFY = Not IsNull(strFY) And vbNullString <> strFY

    strPortfolio = Request.QueryString("portfolio")
    blnHasPortfolio = Not IsNull(strPortfolio) And vbNullString <> strPortfolio

    strScript = Request.ServerVariables("SCRIPT_NAME")
    If 0 < Instr(strScript, "/grants/query.asp") Then
		intWidth = 95
    Else
		intWidth = 100
    End If

	' HF (1/21/09) CR #41982 - Display FY for Research Pioneers grantees.
	
	If (bDisplayFY = True) Then
		intNumcols = 4
	Else
		intNumcols = 3
	End If
%>
	<!-- CR# 16457 - L. Tsao 07.22.2004 - Pulled out of table to make part of narrative, if any.
	Removed size attribute for font.  Necessary for making font sizes consistent. -->
    <% If (strTableCaption <> vbNullString)  Then    ' HF (2/18/10) CR #43591.
			Response.Write("<p>" & strTableCaption & "</p>")
		  ElseIf (strActive = "ARCHIVE_WITH_MSG")  Then    ' HF (9/4/07) CR #40172.
	%>
	    <p>This list contains previously funded research grants/supplements.</p>
    <% ElseIf Not blnHasFY and Not blnHasPortfolio and "ARCHIVE" <> strActive Then   %>
	    <p><font face="Arial, Helvetica, sans-serif">This list contains grants carried over
	    from prior fiscal years and new grants awarded in the current fiscal year.</font></p>
    <% End If %>
    
    <!-- Use a table here to get the paragraph to be indented the same way as the grant table -->
	
    <table align="center" border="0" width="<%=intWidth%>%">
      <tr>
        <td>
          <p align="center"><font face="Arial, Helvetica, sans-serif" size="3">
        <%
            ' If we don't explicitly convert these to integers, they will be compared as strings, which
            ' is not what we want.
            If CInt(numgrants) <= CInt(GrantsPerPage) Then
				Response.write "Grants " & intStart & " to " & numgrants & " of " & numgrants & "</font></p>" & vbCrLf
            Else
                Response.write "Grants " & intStart & " to " & _
                    Min(numgrants, intStart + intCount - 1) & " of " & numgrants & "</font></p>" & vbCrLf
		GeneratePageNavigation strScript, numgrants
	    End If

	    Response.Flush
          %>
        </td>
      </tr>
    </table>

	<% ' HF (7/20/09) CR #42987 - add a table id and tbody tag, both needed for javascript on tcrb/tob_prod_funding.asp %>
   <table cellpadding="4" cellspacing="0" align="center" border="1" bordercolor="999999" width="95%" id="<%=strActive %>">
   <tbody>
    <tr>
      <td colspan="<%=intNumcols%>" valign="top"><p><font face="Arial, sans-serif"><b>Tip: </b></font>
          <font face="Arial, sans-serif">Quickly search the list for a word or words by choosing
          &quot;Find...&quot; from the &quot;Edit&quot; menu of your browser
		  (or typing Ctrl+F). Then insert the search word(s).</font></p>
	  </td>
	</tr>
    <tr>
      <th id="PI Name and Organization" valign="top" align="center"><font face="Arial, sans-serif">PI Name<br>
<!--- CR#37054 - Re\move PubMed link around PI Name
      (click for PI publications)<a href="#pubmed">*</a><br>
--->
        Organization Name</font></th>
      <th id="Project Title / Link to Abstract" valign="top" align="center"><font face="Arial, sans-serif">Project Title<br>(click for Abstract)</font></th>
      <th id="Grant Number / Link to Publications" valign="top" align="center"><font face="Arial, sans-serif">Grant Number<br>(click for Publications)<a href="#pubmed">**</a></font></th>

	  
<%
	If (bDisplayFY = True) Then
		strOutput = strOutput & "<th id=""FY"" valign=""top"" align=""center""><font face=""Arial, sans-serif"">Fiscal<br>Year</font></th>"
	End If
	
	strOutput = strOutput & "</tr>"

	' HF (10/19/09) - CR #43362 - Add id's to table cells for use by Javascript to modify some of the cells.
	Dim iRow
	iRow = 0
	earliestStartDate = "01/01/9999"
   do while not rst.EOF

		strOutput = strOutput & "<tr>" & vbCrLf & _
			"<td headers=""PI Name and Organization"" id=""" & iRow & """ valign=""top"" align=""left"">" & vbCrLf & _
			"<font size=""-1"" face=""Arial, sans-serif"">" & vbCrLf

		' HF (11/29/09) CR #43421 - Make the Pubmed links like those for the other public website pages.  So dispense 
		' with the special condition for SRAB, which is synonymous with the Statfund site.  Per request from Carter, Ginger (IMS).
'      	If strBranch="SRAB" Then
'      		strURL="/grants/publications_srab.asp?grant_num="
'      	Else
				'http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=search&db=PubMed&tool=NCIDCCPS&term=last_name%20first_initial+middle_initial[au]
				strURL="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=search&db=PubMed&tool=NCIDCCPS&dispmax=20&term=" _
				 & rst("last_name") & "%20" & left(rst("first_name"),1) & left(rst("mi_name"),1)
'		End If
      %>
<!--- CR#37054 - Remove PubMed link around PI Name
          <a href="<%=strURL%>"><%=BuildName(rst("last_name"), rst("first_name"), rst("mi_name"))%></a><br>
--->
	  <% 
		' HF (10/21/09) CR #43362 - If the resultset contains a column called "all_pi_names", then display it.  If not,
		' then just display the default, single PI name.
		Dim secondaryPIsOrdinal
		secondaryPIsOrdinal = ContainsSecondaryPIs(rst)

		If (secondaryPIsOrdinal > -1) Then
			strOutput = strOutput & rst(secondaryPIsOrdinal)
		Else
			strOutput = strOutput & BuildName(rst("last_name"), rst("first_name"), rst("mi_name")) & "<br>"
		End If
		
		strOutput = strOutput & rst("org_name") & "<br></font></td>" & _
			"<td headers=""Project Title / Link to Abstract"" id=""" & iRow-1 & """ valign=""top"" align=""left"">" & vbCrLf & _
			"<font size=""-1"" face=""Arial, sans-serif"">" & vbCrLf

		strTitle = rst("project_title")
		If rst("abstract_exists_code") = "Y" Then
			' Link to the new Abstracts page.
			' strOutput = strOutput & "<A HREF=""/grants/abstract.asp?ApplID=" & rst("APPL_ID") & """>" & strTitle & "</A>"
			
			Dim strServer
			If (Instr((ConnString), "PMAdb") > 0) Then
				strServer = "maps.cancer.gov"
			Else 
				strServer = "parsley.cit.nih.gov"
			End If

			strOutput = strOutput & "<A HREF=""http://" & strServer & "/overview/DCCPSGrants/abstract.jsp?applId=" _
				& rst("APPL_ID") & "&term=" & rst("admin_phs_org_code") & rst("serial_num") &""">" & strTitle & "</A>"
        Else
			strOutput = strOutput & strTitle
        End If

		strOutput=strOutput & vbCrLf & "</font></td>" & vbCrLf & _
			"<td headers='Grant Number / Link to Publications' id='" & iRow-2 & "valign='top' align='left' nowrap>" & vbCrLf & _
			"<font size='-1' face='Arial, sans-serif'>" & vbCrLf  & vbCrLf

		If Len(rst("serial_num")) < 6 Then
			iSerialNum="0" & rst("serial_num")
		Else
			iSerialNum=rst("serial_num")
		End If
		
		' HF (11/29/09) CR #43421 - Make the Pubmed links like those for the other public website pages.  So dispense 
		' with the special condition for SRAB, which is synonymous with the Statfund site.  Per request from Carter, Ginger (IMS).
'      	If strBranch="SRAB" Then
'      		strURL=strURL & rst("admin_phs_org_code") & iSerialNum
'      	Else
			'http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=search&db=PubMed&tool=NCIDCCPS&term=[IC][SerialNum]
			strURL="http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=search&db=PubMed&tool=NCIDCCPS&dispmax=20&term=" _
				 & rst("admin_phs_org_code") & iSerialNum
'		End If
				
		' HF (11/24/09) CR #43545 - If this is an R01, check its project start date, and set a holding variable to the earliest
		' R01 start date of all R01s on the page.
		If (AnnotateFirstR01Grant = True) Then
			If (rst("activity_code") = "R01") Then
				If (DateValue(rst("project_period_start_date")) < DateValue(earliestStartDate)) Then
					earliestStartDate = rst("project_period_start_date")
					earliestR01Grant = rst("full_grant_num")
				End If
			End If
		End If
		
		'strOutput = strOutput & "<a href=""" & strURL & """>" & rst("full_grant_num") & "</a>-" & earliestStartDate & rst("project_period_start_date") & vbCrLf & _
		'	"</font>" & vbCrLf & "</td>" & vbCrLf
		strOutput = strOutput & "<a href=""" & strURL & """>" & rst("full_grant_num") & "</a>" & vbCrLf & _
			"</font>" & vbCrLf & "</td>" & vbCrLf
			
		If (bDisplayFY = True) Then
			strOutput = strOutput & "<td>" & rst("fy") & "</td>"
		End If
		
		strOutput = strOutput & "</tr>"
		rst.MoveNext
		iRow = iRow + 1
   Loop

   rst.Close

   'L. Tsao 06.22.2004 CR# 15591 - Close connection here since recordset
   '							   no longer has to be connected.
   rst.ActiveConnection.Close
   Set rst = Nothing
   
	' HF (11/24/09) CR #43545 - Write the html string to the HTTP output stream.  If the AnnotateFirstR01Grant
	' flag is on, then find the grant number equal to earliestR01Grant set above, and put an asterisk next to it (but only
	' if there is an R01 grant for this PI).
	Dim earliestR01GrantPosition
	If (AnnotateFirstR01Grant = True) AND (Len(earliestR01Grant) > 0) Then
		earliestR01GrantPosition = Instr(1,strOutput, earliestR01Grant, 1) + Len(earliestR01Grant) - 1
		strOutput = Left(strOutput, earliestR01GrantPosition) & "*" & Mid(strOutput, earliestR01GrantPosition + 1)
	End If

	strOutput = strOutput & vbCrLf & "</tbody>" & vbCrLf & "</table>" & vbCrLf
	Response.Write(strOutput)
	strOutput = ""

	If CInt(numgrants) > CInt(GrantsPerPage) Then
		GeneratePageNavigation strScript, numgrants
	End If
	
'   CR#37054 - nf 01.17.2006  - Remove PubMed link around PI Name
'   CR# 16457 - L. Tsao 07.22.2004 Removed size attribute for font to make sizes consistent. --
'  <p><font face="Arial, sans-serif">* Includes all publications listed in PubMed
'    &lt;<a href="http://www.pubmed.gov/">http://www.pubmed.gov/</a>&gt; authored by the Principal Investigator.
'    Please note that not all publications are listed in PubMed, and the listing includes publications
'    that represent the PI\'s full body of work -- not just work on this particular grant.

	If (AnnotateFirstR01Grant = True) AND (Len(earliestR01Grant) > 0) Then
		strOutput = "* This is the R01 Grant that identifies the PI as a new investigator." & vbCrLf
	End If

	strOutput = strOutput & "<a name=""pubmed""></a>" & vbCrLf & "<p>" & vbCrLf & _
		"** Includes all publications listed in <a href=""http://www.pubmed.gov/"" target=""_blank"">PubMed</a>" & vbCrLf & _
		"authored by the Principal Investigator and supported by the specified grant." & vbCrLf & _
		"Please note that not all grants have publications listed in PubMed, and the listing of" & vbCrLf & _
		"publications in PubMed may not be complete." & vbCrLf & "</font></p>" & vbCrLf 

	Response.Write(strOutput)

End Sub


'***********************************************************************
' Function ContainsSecondaryPIs
' HF (10/21/09) CR #43362 - Determines if the resultset contains a column called "all_pi_names". 
' RETURNS: the ordinal (ref from 0) of the column named "all_pi_names", or -1 if not present.
'***********************************************************************
Function ContainsSecondaryPIs(rst)

		Dim fieldIndex
		Dim bFound
		for fieldIndex=rst.Fields.Count-1 to 0 Step -1
			if (UCase(rst.Fields(fieldIndex).Name) = "ALL_PI_NAMES") Then 
				bFound = true
				Exit For
			End If
		Next
		
		if (bFound) Then
			ContainsSecondaryPIs = fieldIndex
		Else
			ContainsSecondaryPIs = -1
		End If
		
End Function

Function GetBranchName(strProgAbbr, strBranchAbbr)
	dim cmd

	set cmd = GetCommand("GetBranchName", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("prog", adVarChar, adParamInput, 10, strProgAbbr)
	cmd.Parameters.Append cmd.CreateParameter("branch", adVarChar, adParamInput, 10, strBranchAbbr)

	GetBranchName = RunSPReturnVarchar(cmd, 60)

	'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
    Set cmd = Nothing
End Function

Function GetBranchNameFromId(strBranchId)
	dim cmd

	set cmd = GetCommand("GetBranchNameFromId", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("retval", adVarChar, adParamReturnValue, 60)
	cmd.Parameters.Append cmd.CreateParameter("branch_id", adInteger, adParamInput, 4, strBranchId)
	cmd.Execute
	GetBranchNameFromId = cmd.Parameters("retval")

	'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

Function GetProgramName(strProgAbbr)
	dim cmd

	set cmd = GetCommand("GetProgName", vbNullString)
	cmd.Parameters.Append cmd.CreateParameter("prog", adVarChar, adParamInput, 10, strProgAbbr)

	GetProgramName = RunSPReturnVarchar(cmd, 50)

	'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function


Function GetMechTitle(strMechanism)
    dim cmd

    Set cmd = GetCommand("GetMechTitle", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("activity_code", adVarChar, adParamInput, 3, strMechanism)

    GetMechTitle = RunSPReturnVarchar(cmd, 160)

    'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Function GetGrantCount
' Returns the number of grants that will be returned for a particular search result.
' Builds and passes in a where clause to the GetGrantCount stored procedure.
' HF (10/14/09) CR #43375 - Added codeFmt arg and changed meaning of strCodeName to:
'
'	intCodeFmt:	0: code name (single code only)
'   						1: code id (single or comma-delimited multiple ids)
'	strCodeName:	if intCodeFmt=0, code name (e.g., "HEALTH DISPARITIES")
'            			if intCodeFmt=1, code id or ids (e.g., "1256" or "1256, 1257, 1311")
'***********************************************************************
Function GetGrantCount(strProg, strBranch, strRFA, strMechanism, intCodeFmt, strCodeName, strActive, intFY)
    Dim strWhere
    Dim cmd

    strWhere = BuildCriteria(strProg, strBranch, strRFA, strMechanism, strActive, intFY)
    Set cmd = GetCommand("GetGrantCount", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("where", adVarChar, adParamInput, 2048, strWhere)
    cmd.Parameters.Append cmd.CreateParameter("intCodeFmt", adInteger, adParamInput, 4, CInt(intCodeFmt))  ' HF (10/13/09) CR #43375
    cmd.Parameters.Append cmd.CreateParameter("strCodeName", adVarChar, adParamInput, 100, strCodeName)

    GetGrantCount = RunSPReturnInt(cmd)

    'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	  cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:     GetFullGrantCountPortfolio
' Author:   N. Francis
' Date:     10.07.2004
' Purpose:  Returns the number of grants that will be returned for
'           a particular search result.
' Input:    strOwner - owner of the portfolio
'           strPortfolioName  - name of the porfolio
' Output:		recordset containing grant data
' Notes:		CR#19348
'***********************************************************************
Function GetFullGrantCountPortfolio(strOwner, strPortfolioName)
    Dim strWhere
    Dim cmd

    Set cmd = GetCommand("GetFullGrantCountPortfolio", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
    cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)

    GetFullGrantCountPortfolio = RunSPReturnInt(cmd)

    'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:     GetGrantCountPortfolioByCode
' Author:   L. Tsao
' Date:     06.14.2004
' Purpose:  Returns the number of grants that will be returned for a
'			particular search result.
' Input:	strOwner - owner of the portfolio
' 	    	strPortfolioName  - name of the porfolio
'			strCodeName - name of the code to filter on
'			intBranchId - the branch ID, from the branches table (e.g., 4 for ACSRB)
'			queryModification - 
'			  	= 0 - no modification, returns only the primary PI for the grant
'				= 1 - returns all PIs on the grant.
'				= 2 - returns the latest year for each grant serial number, and only 
'						grants which are currently funded (pcf_flag='Y')
' Output:	count of grants
' Notes:	CR# 9235
'				CR#40424 - HF (11/21/07).  added intBranchId parameter
'***********************************************************************
Function GetGrantCountPortfolioByCode ( strOwner, strPortfolioName, strCodeName, _
	intBranchId, queryModification )
	
    Dim strWhere
    Dim cmd

    Set cmd = GetCommand("GetGrantCountPortfolioByCode", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
    cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
	cmd.Parameters.Append cmd.CreateParameter("code_name", adVarChar, adParamInput, 100, strCodeName)
    cmd.Parameters.Append cmd.CreateParameter ( "branch_id", adInteger, adParamInput, 4, CInt(intBranchId) )

	GetGrantCountPortfolioByCode = RunSPReturnInt(cmd)

    'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:    GetGrantCountPortfolioHistory
' Author:
' Date:
' Purpose:Returns the number of grants that will be returned for a particular search result.
'				Builds and passes in a where clause to the GetGrantCountHistory stored procedure.
' Input:    strOwner - owner of the portfolio
'				strPortfolioName1 - name of the 1st porfolio to draw grants from
'				strPortfolioName2 - name of the 2nd porfolio to draw grants from. Use "" if unused
' Output:	Retrieves the number of archived grants for the passed portfolio(s) and owner.
' Notes:	HF (8/31/07) CR #40172 - Added capability to query from 2 portfolios.  Pass in
'				"" for 2nd portfolio if not needed.
'				NOTE: I also changed the length of the owner parameter from 8 to 30, since
'				that is the field size in the database.
'***********************************************************************
Function GetGrantCountPortfolioHistory(strOwner, strPortfolioName1, strPortfolioName2)

    Dim strWhere
    Dim cmd

    Set cmd = GetCommand("GetGrantCountPortfolioHistory", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
    cmd.Parameters.Append cmd.CreateParameter("portfolio_name1", adVarChar, adParamInput, 60, strPortfolioName1)
    cmd.Parameters.Append cmd.CreateParameter("portfolio_name2", adVarChar, adParamInput, 60, strPortfolioName2)

    GetGrantCountPortfolioHistory = RunSPReturnInt(cmd)

    'N. Francis 09.02.2004 CR# 17929 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

'***********************************************************************
' Name:     GetGrantCountPortfolio
' Purpose:	Returns the number of grants that will be returned for a particular search result.
' 				Builds and passes in a where clause to the GetGrantCount stored procedure.
' Input:    	strOwner - owner of the portfolio
'				strPortfolioName - name of the 1st porfolio to draw grants from
'				queryModification - 
'				  	= 0 - no modification, returns only the primary PI for the grant
'			  		= 1 - returns all PIs on the grant.
'			  		= 2 - returns the latest year for each grant serial number, and only 
'							grants which are currently funded (pcf_flag='Y')
' Output:
' Notes:	  HF (1/21/10) CR #43667, #43598 - Added queryModification and 
'				capability to query only the latest year grants
'		  	(done originally for statfund).
'***********************************************************************
Function GetGrantCountPortfolio(strOwner, strPortfolioName, queryModification)
    Dim strWhere
    Dim cmd

    Set cmd = GetCommand("GetGrantCountPortfolio", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("owner", adVarChar, adParamInput, 30, strOwner)
    cmd.Parameters.Append cmd.CreateParameter("portfolio_name", adVarChar, adParamInput, 60, strPortfolioName)
	cmd.Parameters.Append cmd.CreateParameter("queryModification", adInteger, adParamInput, 4, CInt(queryModification))

    GetGrantCountPortfolio = RunSPReturnInt(cmd)

    'L. Tsao 06.22.2004 CR# 15591 - clean up connection and command
	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function

' Builds the WHERE clause of the SQL statement to select the grants that will be retrieved.
Function BuildCriteria(strProgram, strBranch, strRFA, strMechanism, strActive, intFY)
    Dim strWhere

    strWhere = "division_abrv = 'DCCPS' AND count_flag = 'Y' AND "

    If vbNullString <> strBranch and IsNumeric(strBranch) Then
    	strWhere = strWhere & "branch_id = " & strBranch & " AND "
    Else
        If vbNullString <> strProgram Then
	    strWhere = strWhere & "program_abrv = '" & strProgram & "' AND "
	    If vbNullString <> strBranch Then
	        strWhere = strWhere & "branch_abrv = '" & strBranch & "' AND "
	    End If
        End If
    End If

    If vbNullString <> strRFA Then
	strWhere = strWhere & "RFA_PA_NUMBER " & strRFA & " AND "
    End If

    If vbNullString <> strMechanism Then
	strWhere = strWhere & "ACTIVITY_CODE = '" & strMechanism & "' AND "
    End If

    ' We only use pcf_flag or last_year_on_closed_grant if a fiscal year is not specified.
    If CInt(intFY) > 0 Then
	strWhere = strWhere & "FY = " & intFY & " AND "
    Else
	Select Case strActive
	    Case "ACTIVE"
		strWhere = strWhere & "pcf_flag = 'Y' AND "
	    Case "ARCHIVE"
		strWhere = strWhere & "last_year_on_closed_grant = 'Y' AND "
	    Case "ALL"
		strWhere = strWhere & "(pcf_flag = 'Y' OR last_year_on_closed_grant = 'Y') AND "
	    Case Else
		ShowError("Invalid value for strActive")
	End Select
    End If

    If Right(strWhere, 5) = " AND " Then
    	strWhere = Left(strWhere, Len(strWhere) - 5)
    End If

    BuildCriteria = strWhere
End Function

' Retrieves the start and count parameters, and supplies defaults
' if they are not there.
Function MakeCounts(intStart, intCount)
		dim strStart
		dim strCount

		strStart=Request.QueryString("start")
		strCount=Request.QueryString("count")
    ' Use CInt to make sure these variables get treated as numbers, not strings.
    ValidateNumber strStart, "Start"
    intStart = CInt(strStart)
    ValidateNumber strCount, "Count"
    intCount = CInt(strCount)

    If 0 = intStart Then
        intStart = 1
    End If
    If 0 = intCount Then
    	intCount = GrantsPerPage
    End If
End Function

' Returns the minimum of two integers.
Function Min(a, b)
    If CInt(a) < CInt(b) Then
	Min = a
    Else
	Min = b
    End If
End Function

'***********************************************************************
' Name:     GetParameterValue
' Author:   N. Francis
' Date:     03.23.2007
' Purpose:  Processes parameters sent via get or post method
' Input:    strParamName
' Output:		Parameter's value
'***********************************************************************
Function GetParameterValue(strParamName)
	If Request.QueryString(strParamName) <> vbNullString Then
		GetParameterValue=Request.QueryString(strParamName)
	Else
		GetParameterValue=Request.Form(strParamName)
	End If
End Function

' Builds a formatted string of the last, first, and middle names.
Function BuildName(strLast, strFirst, strMiddle)
    Dim strName

    ' if no PI name, return immediately.
    If IsNull(strLast) Then
        BuildName = "PI Name is not available."
        Exit Function
    End If

    strName = strLast & ",&nbsp;" & strFirst

    ' Some people only have initials in the first_name field
    If Len(strFirst) = 1 Then
        strName = strName & "."
    End If

    ' Only add the middle name if there's something there.
    If Len(strMiddle) > 0 Then
        strName = strName & "&nbsp;" & strMiddle

        ' If the length of the middle name is 1 character, it must
        ' be an initial, and we need to add a period.
        If Len(strMiddle) = 1 Then
            strName = strName & "."
        End If
    End If

    BuildName = strName
End Function

Sub GeneratePageNavigation(strScript, numgrants)
    ' Build up the start of the URL.  Since this doesn't change in the loop,
    ' we do it only once, before the loop begins.  We only need to include the parameters for query.asp.

    Dim strURL
    Dim i

	' HF (1/24/08) CR #40424 - Add the query string, needed for the pagination links on the site:
	' http://cancercontrol-dev.cancer.gov/acsrb/research-chollette.asp?site=MULTI-SITE.  We need to 
	' carry the site parameter into these links.  This is needed on this page because it contains links to various
	' cancer sites, whereas most other pages on the public website do not have this additional query parameter.
	
    strURL = "<a href=""" & Request.ServerVariables("SCRIPT_NAME") & "?"
    if (Request.QueryString("site") <> vbNullString) Then _
	    strURL = strURL & "site=" & Request.QueryString("site") & "&"

    If 0 < Instr(strScript, "/grants/query.asp") Then
        If vbNullString <> strProgram Then
            strURL = strURL & "program=" & strProgram & "&"
            If vbNullString <> strBranch Then
                strURL = strURL & "branch=" & strBranch & "&"
            End If
        End If
        If blnHasFY Then
            strURL = strURL & "FY=" & strFY & "&"
        End If
    End If
    strURL = strURL & "start="

    Response.write "<p align=""center""><font face=""Arial, Helvetica, sans-serif"" size=""3"">Pages:" & vbCrLf
    For i = 1 To numgrants / GrantsPerPage + 1
        Response.write strURL & (i - 1) * GrantsPerPage + 1 & "&count=" & GrantsPerPage& """>" & i & "</a>"
        If i < numgrants / GrantsPerPage Then
            Response.write " | " & vbCrLf
        End If
    Next
    Response.write "</font></p>" & vbCrLf
End Sub
'----------------------------------------------------------------
'This Section is VALIDATION added in 1/2007
'Stored Procs are in the WebValidation.sql file
'Validate the Program String
Sub ValidateProgram(strProgram)
' Check for "Bad" characters
	ScreenCharacters (strProgram)
'Check the length
	If len (strProgram) > RetrieveMaxProgLen Then
		ShowError("The Program You Entered is Too Long!")
	End If
'Check for matches
	If ProgMatches (strProgram) <> 1 Then
		ShowError("The Program You Entered Does Not Match A Record in the Database!")
	End If
End Sub
'----------------------------------------------------------------
'Validate the Branch String
Sub ValidateBranch(strBranch)
' Check for "Bad" characters
	ScreenCharacters (strBranch)
'Check the length
	If len (strBranch) > RetrieveMaxBranchLen Then
		ShowError("The Branch You Entered is Too Long!")
	End If
'Check for matches
	If BranchMatches (strBranch) <> 1 Then
		ShowError("The Branch You Entered Does Not Match A Record in the Database!")
	End If
End Sub
'----------------------------------------------------------------
'Validate the FY
Sub ValidateFY(strFY)
' Check for "Bad" characters
	ScreenCharacters (strBranch)
'Check that the FY is a number
' IsNumeric returns True if strFY is blank, so we don't have to
   If Not IsNumeric(strFY) Then
	ShowError("Fiscal Year must be numeric.")
   End If
' Check that it is a realistic value
' This could be changed to check for the ACTUAL range in the DB
' This just checks for invalid FYs even though they could enter FYs
' for which there are no grants (for ex. FY=2040)
	If strFY > 5000 OR strFY < 1800 Then
		ShowError("The FY you entered is not valid.")
	End If
End Sub
'---------------------------------------------------------------
'Validate Number
Sub ValidateNumber(strValue, strVariable)
' Check for "Bad" characters
	ScreenCharacters (strValue)
'Check that the value is a number
' IsNumeric returns True if strValue is blank, so we don't have to
   If Not IsNumeric(strValue) Then
	ShowError(strVariable & " must be numeric.")
   End If
' Check that it is a realistic value
' Verify for an integer
	If strValue > 32000 OR strValue < -32000 Then
		ShowError("The " & strVariable & " you entered is not valid.")
	End If
End Sub
'---------------------------------------------------------------
'Takes a string and searches it for "BAD" characters
Sub ScreenCharacters(strString)
Dim FoundOne

FoundOne = 0
	FoundOne = FoundOne + instr(1, strString, "<")
	FoundOne = FoundOne + instr(1, strString, ">")
	FoundOne = FoundOne + instr(1, strString, "\")
	FoundOne = FoundOne + instr(1, strString, "%")
	FoundOne = FoundOne + instr(1, strString, ";")
	FoundOne = FoundOne + instr(1, strString, "(")
	FoundOne = FoundOne + instr(1, strString, ")")
	FoundOne = FoundOne + instr(1, strString, "&")
	FoundOne = FoundOne + instr(1, strString, "+")
	FoundOne = FoundOne + instr(1, strString, """")

	If  FoundOne > 0 Then ShowError("A Parameter Contains a Forbidden Character!")
End Sub
'---------------------------------------------------------------
'Calls a SP in the DB to find the max length of a program abrv
Function RetrieveMaxProgLen
    Dim cmd

    Set cmd = GetValidationCommand("GetMaxProgramLen", vbNullString)

    RetrieveMaxProgLen = RunSPReturnInt(cmd)

	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function
'---------------------------------------------------------------
'Calls a SP in the DB to find the max length of a program abrv
Function ProgMatches (strProgram)
    Dim cmd

    Set cmd = GetValidationCommand("FindProgramMatch", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("p_program_abrv", adVarChar, adParamInput, 10, strProgram)

    ProgMatches = RunSPReturnInt(cmd)

	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function
'---------------------------------------------------------------
'Calls a SP in the DB to find the max length of a branch abrv
Function RetrieveMaxBranchLen
    Dim cmd

    Set cmd = GetValidationCommand("GetMaxBranchLen", vbNullString)

    RetrieveMaxBranchLen = RunSPReturnInt(cmd)

	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function
'---------------------------------------------------------------
'Calls a SP in the DB to find the max length of a program abrv
Function BranchMatches (strBranch)
    Dim cmd

    Set cmd = GetValidationCommand("FindBranchMatch", vbNullString)
    cmd.Parameters.Append cmd.CreateParameter("p_branch_abrv", adVarChar, adParamInput, 10, strBranch)

    BranchMatches = RunSPReturnInt(cmd)

	cmd.ActiveConnection.Close
	Set cmd = Nothing
End Function
'---------------------------------------------------------------
' Returns a command object ready to have its parameters added.
' Input: strPkgName - name of package
'        strProcName - name of stored procedure to run.
' Returns: ADODB.Command object, already opened.
' Note: L. Tsao 06.22.2004 CR# 15591 - Caller is responsible
'		for closing DB connection when no longer needed and
'		setting the returned command object to Nothing.
' NOTE: This can probably be combined with the GetCommand Function by
' allowing for a package name to be passed in.
Function GetValidationCommand(strProcName, strConnOptions)
    Dim conn
    Dim cmd
    Dim strConnString
    Dim strSchema

    Set conn = Server.CreateObject("ADODB.Connection")
    Set cmd = Server.CreateObject("ADODB.Command")

    conn.Open ConnString & strConnOptions
    cmd.ActiveConnection = conn
    cmd.CommandType = adCmdStoredProc
    cmd.CommandText = SchemaName & "WebValidation_pkg." & strProcName

    Set GetValidationCommand = cmd
End Function


'***********************************************************************
' Name:    LastModified
' Author:  HF (CR #40172) Taken from "Jeremy L." @ 
'				http://www.4guysfromrolla.com/webtech/tips/t110699-1.shtml
' Date:     	08/31/07
' Purpose:Displays the date the page we are embedded into was last modified. To call:
'
'				<P>Page last updated on: </P>
'				<!--#include virtual="/scripts/modified.asp"--> 
'
' Output:	Writes the date on which the page included in was last modified.
'***********************************************************************
Function LastModified () 

  Dim strFileName
  Dim dtmLastModified
  Dim dtmLastModifiedDate
  Dim dtmLastModifiedTime

  strFileName = Request.ServerVariables("SCRIPT_NAME")
  strFileName = Replace(strFileName, "/", "\")
  strFileName = Server.MapPath(strFileName)

  Set objFileSystemObject = Server.CreateObject("Scripting.FileSystemObject")

  Set objFile = objFileSystemObject.GetFile(strFileName)
  dtmLastModified = objFile.DateLastModified
  Set objFile = Nothing

  Set objFileSystemObject = Nothing

  dtmLastModifiedDate = FormatDateTime(dtmLastModified, 1)
  dtmLastModifiedTime = FormatDateTime(dtmLastModified, 3)

  Response.Write(dtmLastModifiedDate & " " & dtmLastModifiedTime)

End Function


// HF 0 Added this in response to error report from query.asp: Microsoft VBScript runtime error '800a01f4' 
// Variable is undefined: 'ValidateString' 
// /grants/query.asp, line 303 
// I wanted to just point query.asp include file to ../utility.asp, but I dont know what else is different.

'----------------------------------------------------------------
'This Section is VALIDATION added in 1/2007
'Stored Procs are in the WebValidation.sql file
'Validate the Program String
Sub ValidateProgram(strProgram)
	Dim intMaxProgLen
	Dim intResult

	' Get max length
	intMaxProgLen = RetrieveMaxProgLen

	' Validate
	intResult = ValidateString(strProgram, intMaxProgLen, vbNull, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_LENGTH
		ShowError("The Program You Entered is Too Long!")
	Case ERR_INVALID_CHAR
		ShowError("A Parameter Contains a Forbidden Character!")
	End Select
End Sub
'----------------------------------------------------------------
'Validate the Branch String
Sub ValidateBranch(strBranch)
	Dim intMaxBranchLen
	Dim intResult

	' Get max length
	intMaxBranchLen = RetrieveMaxBranchLen

	' Validate
	intResult = ValidateString(strProgram, intMaxBranchLen, vbNull, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_LENGTH
		ShowError("The Branch You Entered is Too Long!")
	Case ERR_INVALID_CHAR
		ShowError("A Parameter Contains a Forbidden Character!")
	End Select
End Sub
'----------------------------------------------------------------
'Validate the FY
Sub ValidateFY(strFY)
	Dim intResult

	' Validate
	intResult = ValidateInteger(strFY, 1800, 5000, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_NOT_NUM
		ShowError("Fiscal Year must be numeric.")
	Case ERR_EXCEED_MAX, ERR_EXCEED_MIN
		ShowError("The FY you entered is not valid.")
	End Select
End Sub
'---------------------------------------------------------------
'Validate Number
Sub ValidateNumber(strValue, strVariable)
	' Check that the value is a number
	' IsNumeric returns True if strValue is blank, so we don't have to
   	If Not IsNumeric(strValue) Then
		ShowError(strVariable & " must be numeric.")
	' Check that it is a realistic value
	' Verify for an integer
	Else
		If strValue > 32000 OR strValue < -32000 Then
			ShowError("The " & strVariable & " you entered is not valid.")
		End If
	End If
End Sub
'----------------------------------------------------------------
'Validate the Mechanism String
Sub ValidateMechanism(strMechanism)
	Dim intResult

	' Validate
	' The max length is set to 3 because GetMechTitle function passes an adVarChar parameter
	' with length of 3.
	intResult = ValidateString(strMechanism, 3, vbNull, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_LENGTH
		ShowError("The Mechanism You Entered is Too Long!")
	Case ERR_INVALID_CHAR
		ShowError("A Parameter Contains a Forbidden Character!")
	End Select
End Sub
'----------------------------------------------------------------
'Validate the Portfolio String
Sub ValidatePortfolio(strPortfolio)
	Dim intResult

	' Validate
	' The length is set to 60 because strPortfolioName(Portfolio.asp) variable is passed into
	' an adVarChar parameter with length of 60.
	intResult = ValidateString(strPortfolio, 60, vbNull, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_LENGTH
		ShowError("The Portfolio You Entered is Too Long!")
	Case ERR_INVALID_CHAR
		ShowError("A Parameter Contains a Forbidden Character!")
	End Select
End Sub
'----------------------------------------------------------------
'Validate the Owner String
Sub ValidateOwner(strOwner)
	Dim intResult

	' Validate
	' The length is set to 60 because strOwner(Portfolio.asp) variable is passed into
	' an adVarChar parameter with length of 20.
	intResult = ValidateString(strOwner, 20, vbNull, vbNull)

	' Output different messages
	Select Case intResult
	Case ERR_LENGTH
		ShowError("The Owner You Entered is Too Long!")
	Case ERR_INVALID_CHAR
		ShowError("A Parameter Contains a Forbidden Character!")
	End Select
End Sub
'---------------------------------------------------------------
	' Shared return values for ValidateString and ValidateNumber functions
	Const VALID = 0
	Const ERR_NULL = -1

		' Return values for ValidateNumber function
	Const ERR_NOT_NUM = -2
	Const ERR_EXCEED_MIN = -3
	Const ERR_EXCEED_MAX = -4

	' Return values for ValidateString function
	Const ERR_EMPTY = -5
	Const ERR_LENGTH = -6
	Const ERR_INVALID_CHAR = -7
'---------------------------------------------------------------
Function ValidateInteger(strNum, intMinNum, intMaxNum, blnCanBeEmpty)
	Const MIN_VALUE = -32000
	Const MAX_VALUE = 32000

	' Set optional intMinNum parameter
	If intMinNum = vbNull Then
		intMinNum = MIN_VALUE
	End If

	' Set optional intMaxNum parameter
	If intMaxNum = vbNull Then
		intMaxNum = MAX_VALUE
	End If

	' Set optional blnCanBeNull
	If blnCanBeEmpty = vbNull Then
		blnCanBeEmpty = True
	End If

	' Initialize return value
	ValidateInteger = VALID

	' Check for Null
	If strNum = vbNull Or strNum = vbNullString Then
		If Not blnCanBeEmpty Then
			ValidateInteger = ERR_NULL
		End If
	Else
		' Check if the value is numeric
		If Not IsNumeric(strNum) Then
			ValidateInteger = ERR_NOT_NUM
		Else
			' Check if numeric value exceed the maximum allowed
			If CInt(strNum) > CInt(intMaxNum) Then
				ValidateInteger = ERR_EXCEED_MAX
			Else
				' Check if numeric value exceed the minimum allowed
				If CInt(strNum) < CInt(intMinNum) Then
					ValidateInteger = ERR_EXCEED_MIN
				End If
			End If
		End If
	End If
End Function
'---------------------------------------------------------------
Function ValidateString(strString, intMaxLength, blnCanBeNull, blnCanBeEmpty)
	Const MAX_LENGTH = 8

	' Set optional intMaxLength parameter
	If intMaxLength = vbNull Then
		intMaxLength = MAX_LENGTH
	End If

	' Set optional blnCanBeNull
	If blnCanBeNull = vbNull Then
		blnCanBeNull = True
	End If

	' Set optional blnCanBeEmpty
	If blnCanBeEmpty = vbNull Then
		blnCanBeEmpty = True
	End If

	' Initialize return value
	ValidateString = VALID

	' Check for Null
	If strString = vbNull Then
		If Not blnCanBeNull Then
			ValidateString = ERR_NULL
		End If
	Else
		' Check for blank string
		If strString = vbNullString And Not blnCanBeEmpty Then
			ValidateString = ERR_EMPTY
		Else
			' Check for string exceeding max length
			If Len(strString) > intMaxLength Then
				ValidateString = ERR_LENGTH
			Else
				' Check for invalid characters
				If ValidateCharacters(strString) Then
					ValidateString = ERR_INVALID_CHAR
				End If
			End If
		End If
	End If
End Function
'---------------------------------------------------------------
'Takes a string and searches it for "BAD" characters
Function ValidateCharacters(strString)
	Dim intFound

	ValidateCharacters = False

	intFound = 0
	intFound = intFound + instr(1, strString, "~")
	intFound = intFound + instr(1, strString, "`")
	intFound = intFound + instr(1, strString, "!")
	intFound = intFound + instr(1, strString, "@")
	intFound = intFound + instr(1, strString, "#")
	intFound = intFound + instr(1, strString, "$")
	intFound = intFound + instr(1, strString, "%")
	intFound = intFound + instr(1, strString, "^")
	intFound = intFound + instr(1, strString, "&")
	intFound = intFound + instr(1, strString, "*")
	intFound = intFound + instr(1, strString, "(")
	intFound = intFound + instr(1, strString, ")")
	intFound = intFound + instr(1, strString, "_")
	intFound = intFound + instr(1, strString, "-")
	intFound = intFound + instr(1, strString, "+")
	intFound = intFound + instr(1, strString, "=")
	intFound = intFound + instr(1, strString, "{")
	intFound = intFound + instr(1, strString, "}")
	intFound = intFound + instr(1, strString, "|")
	intFound = intFound + instr(1, strString, "[")
	intFound = intFound + instr(1, strString, "]")
	intFound = intFound + instr(1, strString, "\")
	intFound = intFound + instr(1, strString, ":")
	intFound = intFound + instr(1, strString, """")
	intFound = intFound + instr(1, strString, ";")
	intFound = intFound + instr(1, strString, "'")
	intFound = intFound + instr(1, strString, "<")
	intFound = intFound + instr(1, strString, ">")
	intFound = intFound + instr(1, strString, "?")
	intFound = intFound + instr(1, strString, ",")
	intFound = intFound + instr(1, strString, ",")
	intFound = intFound + instr(1, strString, ".")
	intFound = intFound + instr(1, strString, "/")
	intFound = intFound + instr(1, strString, " ")

	If  intFound > 0 Then
		ValidateCharacters = True
	End If
End Function

'***********************************************************************
' Name:   IIf
' Author:  Harvey Flaisher (code taken from
'				http://www.freevbcode.com/ShowCode.asp?ID=1600
' Date:     01/24/08
' Purpose: VB IIf function for ASP.  See VB documentation.  E.g.:
'	
'	sTest = "Test"
'	Response.Write(iif(sTest = "Test", "Yes", "No"))
'
' Input:		condition
'				value1
'				value2
' Output:	none
' Notes:	CR# 40424
'***********************************************************************
Function IIf(condition,value1,value2)
	If condition Then IIf = value1 Else IIf = value2
End Function

'***********************************************************************
' Name:		ValidateInput
' Author:	Harvey Flaisher
' Date:		12/22/11
' Purpose:	Regex validation of web input
' Input:		strInput - input string to be validated
'				regex - regular expression to validate against
' Output:	True if validated, False if not
' Notes:	CR #45612
'***********************************************************************
Function ValidateInput(strInput, regex)

	'Instantiate a regular expression object
	Dim myRegExp
	Set myRegExp = CreateObject("vbscript.regexp")

	myRegExp.IgnoreCase = False
	myRegExp.Global = True
	myRegExp.Pattern = regex
	
	Dim myMatches
	Set myMatches = myRegExp.Execute(strInput)
	ValidateInput = (myMatches.Count = 1)

End Function

%>
