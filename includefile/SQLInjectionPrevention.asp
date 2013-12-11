
<% Function SQLInjectionPrevention(strnewtext) 

	Dim stroutput
	
	stroutput = strnewtext
	
	If InStr(stroutput, "|") > 0 Then
		stroutput = Replace(stroutput, "|", "")
		'response.write ("stroutput1: " & stroutput & "<br />")
	end if
	
	If InStr(stroutput, "&") > 0 Then
		stroutput = Replace(stroutput, "&", "")
		'response.write ("stroutput2: " & stroutput & "<br />")
	End If
	
	If InStr(stroutput, ";") > 0 Then
		stroutput = Replace(stroutput, ";", "")
	End If
	
	If InStr(stroutput, "^") > 0 Then
		stroutput = Replace(stroutput, "^", "")
	End If
	
	If InStr(stroutput, "#") > 0 Then
		stroutput = Replace(stroutput, "#", "")
	End If
	
	If InStr(stroutput, "$") > 0 Then
		stroutput = Replace(stroutput, "$", "")
	End If
			
	If InStr(stroutput,  "%") > 0 Then
		stroutput = Replace(stroutput, "%", "")
	End If	
	
	If InStr(stroutput,  "'") > 0 Then
		stroutput = Replace(stroutput, "'", "")
	End If	
	
	If InStr(stroutput, "\'" ) > 0 Then
		stroutput = Replace(stroutput, "\'", "")
	End If	
	
	If InStr(stroutput, "\""""") > 0 Then
		stroutput = Replace(stroutput, "\""""", "")
	End If
	
	If InStr(stroutput,  "<>" ) > 0 Then
		stroutput = Replace(stroutput, "<>", "")
	End If
	
	If InStr(stroutput, "()" ) > 0 Then
		stroutput = Replace(stroutput, "()", "")
	End If
	
	If InStr(stroutput, "+" ) > 0 Then
		stroutput = Replace(stroutput, "+", "")
	End If
		
	If InStr(stroutput, "\" ) > 0 Then
		stroutput = Replace(stroutput, "\", "")
	End If
	
	If InStr(stroutput, "CHAR(" ) > 0 Then
		stroutput = Replace(stroutput, "CHAR(", "")
	End If
	
	If InStr(stroutput, "" ) > 0 Then
		stroutput = Replace(stroutput, "", "")
	End If
	
	If InStr(stroutput, "--" ) > 0 Then
		stroutput = Replace(stroutput, "--", "")
	End If
	
	If InStr(stroutput, "EXEC SP_" ) > 0 Then
		stroutput = Replace(stroutput, "EXEC SP_", "")
	End If
	
	If InStr(stroutput, "EXEC XP_" ) > 0 Then
		stroutput = Replace(stroutput, "EXEC XP_", "")
	End If
	
	If InStr(stroutput, "OR 1=1" ) > 0 Then
		stroutput = Replace(stroutput, "OR 1=1", "")
	End If
		
	If InStr(stroutput, "UNION SELECT" ) > 0 Then
		stroutput = Replace(stroutput, "UNION SELECT", "")
	End If
	
	If InStr(stroutput, "%3C" ) > 0 Then
		stroutput = Replace(stroutput, "%3C", "")
	End If
	
	If InStr(stroutput, "%27" ) > 0 Then
		stroutput = Replace(stroutput, "%27", "")
	End If
	
	If InStr(stroutput, "[" ) > 0 Then
		stroutput = Replace(stroutput, "[", "")
	End If
	
	If InStr(stroutput, "_") > 0 Then
		stroutput = Replace(stroutput,  "_", "")
	End If
	
	If InStr(stroutput, " [" ) > 0 Then
		stroutput = Replace(stroutput, " [", "")
	End If
	
	If InStr(stroutput, "'=" ) > 0 Then
		stroutput = Replace(stroutput, "'=", "")
	End If
	
	If InStr(stroutput, "IS_MEMBER(" ) > 0 Then
		stroutput = Replace(stroutput, "IS_MEMBER(", "")
	End If
	
	If InStr(stroutput, "SRVROLEMEMBER" ) > 0 Then
		stroutput = Replace(stroutput, "SRVROLEMEMBER", "")
	End If
	
	If InStr(stroutput, "WEBUSER") > 0 Then
		stroutput = Replace(stroutput, "WEBUSER", "")
	End If
	
	If InStr(stroutput, "CAST(" ) > 0 Then
		stroutput = Replace(stroutput, "CAST(", "")
	End If
	
	If InStr(stroutput, "CONVERT(" ) > 0 Then
		stroutput = Replace(stroutput, "CONVERT(", "")
	End If
	
	If InStr(stroutput, "INFORMATION_SCHEMA." ) > 0 Then
		stroutput = Replace(stroutput, "INFORMATION_SCHEMA.", "")
	End If
	
	If InStr(stroutput, "SP_PASSWORD" ) > 0 Then
		stroutput = Replace(stroutput, "SP_PASSWORD", "")
	End If
	
	If InStr(stroutput, "MASTER.." ) > 0 Then
		stroutput = Replace(stroutput, "MASTER..", "")
	End If
	
	If InStr(stroutput, "MASTER.DBO." ) > 0 Then
		stroutput = Replace(stroutput, "MASTER.DBO.", "")
	End If
	
	If InStr(stroutput, "DECLARE%2" ) > 0 Then
		stroutput = Replace(stroutput, "DECLARE%2", "")
	End If
	
	If InStr(stroutput, "VARCHAR(" ) > 0 Then
		stroutput = Replace(stroutput, "VARCHAR(", "")
	End If
	
	If InStr(stroutput, "NVARCHAR(" ) > 0 Then
		stroutput = Replace(stroutput, "NVARCHAR(", "")
	End If
	
	If InStr(stroutput, "TABLE_CURSOR" ) > 0 Then
		stroutput = Replace(stroutput, "TABLE_CURSOR", "")
	End If
	
	If InStr(stroutput, "SYSOBJECTS" ) > 0 Then
		stroutput = Replace(stroutput, "SYSOBJECTS", "")
	End If
	
	If InStr(stroutput, "SYSCOLUMNS" ) > 0 Then
		stroutput = Replace(stroutput, "SYSCOLUMNS", "")
	End If
	
	If InStr(stroutput, ":EXPRESSION" ) > 0 Then
		stroutput = Replace(stroutput, ":EXPRESSION", "")
	End If
	
	If InStr(stroutput, "%27%3D" ) > 0 Then
		stroutput = Replace(stroutput, "%27%3D", "")
	End If
	
	If InStr(stroutput, "<script" ) > 0 Then
		stroutput = Replace(stroutput, "<script", "")
	End If
	
	If InStr(stroutput, "%3cscript" ) > 0 Then
		stroutput = Replace(stroutput, "%3cscript", "")
	End If
	
	If InStr(stroutput, "<frame" ) > 0 Then
		stroutput = Replace(stroutput, "<frame", "")
	End If
	
	If InStr(stroutput, "<iframe" ) > 0 Then
		stroutput = Replace(stroutput, "<iframe", "")
	End If
	
	If InStr(stroutput, "javascript:" ) > 0 Then
		stroutput = Replace(stroutput, "javascript:", "")
	End If
	
	If InStr(stroutput, "win.ini" ) > 0 Then
		stroutput = Replace(stroutput, "win.ini", "")
	End If
	
	If InStr(stroutput, "boot.ini" ) > 0 Then
		stroutput = Replace(stroutput, "boot.ini", "")
	End If
	
	If InStr(stroutput, "appscanheader" ) > 0 Then
		stroutput = Replace(stroutput, "appscanheader", "")
	End If
	
	If InStr(stroutput, "appscanvalue" ) > 0 Then
		stroutput = Replace(stroutput, "appscanvalue", "")
	End If
	
	If InStr(stroutput, "HACKME.COM" ) > 0 Then
		stroutput = Replace(stroutput, "HACKME.COM", "")
	End If
	
	If InStr(stroutput, "alert(" ) > 0 Then
		stroutput = Replace(stroutput, "alert(", "")
	End If
	
	SQLInjectionPrevention =stroutput
	'response.write ("SQLInjectionPrevention: " & stroutput & "<br />")     
End function
%>


<% 
Dim BlackList, ErrorPage, s


'  Below is a black list that will block certain SQL commands and 
'  sequences used in SQL injection will help with input sanitization
'"update", "create", "select", 

BlackList = Array("--",  "/*", "*/", "@@", "@",_
                  "char", "nchar", "varchar", "nvarchar",_
                  "alert", "alter", "begin", "cast", "cursor",_
                  "declare", "delete", "drop", "end", "exec",_
                  "execute", "fetch", "insert", "kill", "open",_
                  "sys", "sysobjects", "syscolumns",_
                  "table",_
				  "EXEC SP_", "EXEC XP_", "UNION SELECT", "%3C", "%27",_
				  "IS_MEMBER(", "SRVROLEMEMBER", "WEBUSER",_
				   "INFORMATION_SCHEMA.", "SP_PASSWORD", "MASTER.. ",_
				   "MASTER.DBO. ", "DECLARE%2", "TABLE_CURSOR",_
				   "<script", "%3cscript", "</script", "<frame", "<iframe",_
				   "javascript: ", "win.ini", "boot.ini", "appscanheader",_
				   "appscanvalue", "HACKME.COM", ":EXPRESSION", "%27%3D")
	 

'  Populate the error page that redirects to in case the 
'  check fails.
		 
			 
if Request.ServerVariables("HTTP_HOST") = "cancercontrol-dev.cancer.gov" then
	ErrorPage = "http://cancercontrol-dev.cancer.gov/errors.asp" 'Request.ServerVariables("HTTP_HOST") + 
elseif Request.ServerVariables("HTTP_HOST") = "cancercontrol.cancer.gov" then
	ErrorPage = "http://cancercontrol-dev.cancer.gov/errors.asp"
end if
               
'''''''''''''''''''''''''''''''''''''''''''''''''''               
'  This function does not check for encoded characters
'  since we do not know the form of encoding your application
'  uses. Add the appropriate logic to deal with encoded characters
'  in here 
'''''''''''''''''''''''''''''''''''''''''''''''''''
Function CheckStringForSQL(str) 
  On Error Resume Next 
  
  Dim lstr 
  
  ' If the string is empty, return true
  If ( IsEmpty(str) ) Then
    CheckStringForSQL = false
    Exit Function
  ElseIf ( StrComp(str, "") = 0 ) Then
    CheckStringForSQL = false
    Exit Function
  End If
  
  lstr = LCase(str)
  
  ' Check if the string contains any patterns in our
  ' black list
  For Each s in BlackList
  
    If ( InStr (lstr, s) <> 0 ) Then
      CheckStringForSQL = true
      Exit Function
    End If
  
  Next
  
  CheckStringForSQL = false
  
End Function 


'''''''''''''''''''''''''''''''''''''''''''''''''''
'  Check forms data
'''''''''''''''''''''''''''''''''''''''''''''''''''

For Each s in Request.Form
  If ( CheckStringForSQL(Request.Form(s)) ) Then
  
    ' Redirect to an error page
    Response.Redirect(ErrorPage)
  
  End If
Next

'''''''''''''''''''''''''''''''''''''''''''''''''''
'  Check query string
'''''''''''''''''''''''''''''''''''''''''''''''''''

For Each s in Request.QueryString
  If ( CheckStringForSQL(Request.QueryString(s)) ) Then
      ' Redirect to error page
    Response.Redirect(ErrorPage)
  End If
Next


'''''''''''''''''''''''''''''''''''''''''''''''''''
'  Check cookies
'''''''''''''''''''''''''''''''''''''''''''''''''''

For Each s in Request.Cookies
  If ( CheckStringForSQL(Request.Cookies(s)) ) Then
      Response.Redirect(ErrorPage)
  End If
Next


%> 

