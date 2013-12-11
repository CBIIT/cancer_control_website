<% Option Explicit %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>DCCPS: Cancer Control Research Abstracts</title>

<!--- #include file=header.asp --->

<div id="mainContent">
<div id="dataTable-noBorder">
<%
	dim strApplID
	strApplID = Request.QueryString("ApplID")
		
	' Do this for error checking and to prevent cross-site scripting vulnerabilities
	If (Not IsNumeric(strApplID)) or vbNullString = strApplID Then
		ShowError("ApplID parameter must be numeric.")
	End If

	GetAbstractFromDb(0)

	''' BEGIN FUNCTIONS  '''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' HF (3/13/08) CR #40800 - Populate the abstract information from the database (the normal case).
	' HF (10/22/09) CR #43362 - Added parameter to display 2ndary PIs.
	Function GetAbstractFromDb(bIncludeSecondaryPIs)
	   dim cmd
	   dim rst
	   dim lngAbstractSize
	
	   set cmd = GetCommand("GetAbstractRst", vbNullString)
	   if (bIncludeSecondaryPIs = vbNullString) Then bIncludeSecondaryPIs = 0

	   ' Ideally this would be a procedure with several OUT parameters.  However, returning
	   ' a CLOB via an OUT parameter with Chilisoft 3.6.2 produces an ORA-01036 error.
	   ' This is probably a bug in Chilisoft or the ODBC driver that comes with it, but
	   ' I can't figure out the cause of the bug.  Using a recordset works around the problem.
	   	cmd.Parameters.Append cmd.CreateParameter("appl_id", adInteger, adParamInput, 4, strApplID)
	   	cmd.Parameters.Append cmd.CreateParameter("bIncludeSecondaryPIs", adInteger, adParamInput, 4, bIncludeSecondaryPIs)
		Set rst = cmd.Execute
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	   
	   	If rst.EOF Then
	    	ShowError("No abstract is available for grant application " & strApplID & ".")
		End If
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
		DisplayAbstract rst, bIncludeSecondaryPIs
if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	
	End Function
	%>
	<%
	' HF (3/13/08) CR #40800 - Populate the abstract information from a static XML file (DandD grants in D4D only).
	Function GetAbstractFromXml
	   dim cmd
	   dim rst
	   dim lngAbstractSize
	
		' Populate the resultset from an XML file containing abstract information.
		Set rst = Server.CreateObject("ADODB.Recordset")
		rst.Open "d:\wwwroot\othersites\cancercontrol\dev\d4d\Supplemental_DandD_Abstracts.xml", "Provider=MSPersist"
	
			' One researcher has 2 abstracts, so enter loop.
			Do While (Not rst.EOF)
			  	' Response.write "." & rst("appl_id") & ". strAppId ." & strApplID & "." & vbCrLf
				If (Instr(1, rst("appl_id"), strApplID) > 0) Then
					DisplayAbstract rst, 0
		      	End If
		  	    rst.MoveNext
	  		Loop
	End Function
	%>
	<%
	' HF (3/13/08) CR #40800 - Display abstract info in the browser.
	' HF (10/22/09) CR #43362 - Added parameter to display 2ndary PIs.
	Function DisplayAbstract(rst, bIncludeSecondaryPIs)
 	    Response.write "<p></p><h1>" & rst("full_grant_num") & "<br>" & vbCrLf
		If (bIncludeSecondaryPIs = 1) Then
			Response.write rst("all_pi_names") & "<br>" & vbCrLf
		Else
			Response.write BuildName(rst("last_name"), rst("first_name"), rst("mi_name")) & "<br>" & vbCrLf
		End If
		
		if (Err.Number <> 0) THEN Response.Write("ERROR")	   
		
	    Response.write rst("project_title") & "</h1><br>" & vbCrLf
		Response.write("<h3>Abstract</h3>")
        Response.write("<p style='margin-left: 5%; margin-right: 5%' align='left'>" & rst("abstract_text") & "</p>" )
		
		if (Err.Number <> 0) THEN Response.Write("ERROR")	   
	End Function

   	%>

</div>
</div>
<!--- #include file=footer.asp --->
</body>
</html>
