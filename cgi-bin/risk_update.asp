<!--#include  virtual ="/includefile/SQLInjectionPrevention.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>OTIRINFO Data Entry</title>
</head>

<body>


<%
   Dim constring, Conn, rs, MySQL
    
   SET Conn = Server.CreateObject("ADODB.Connection")
   Const SchemaName = "evidence"
  
   Conn.open "DSN=contracts; uid=evidence; pwd=ev1234;" 
   Set rs = Server.CreateObject("ADODB.RecordSet")
   rs.cursortype = adopenStatic
   
   MySQL = "SELECT  * from evidence WHERE ID_NUMBER = '" & trim(REquest.Form("ID_number")) & "'"
   rs.open MySQL, conn, 3, 3
   
   
 		rs("ID_NUMBER") = SQLInjectionPrevention(Trim(Request.Form("ID_NUMBER")))
 	rs("AUTHOR") = SQLInjectionPrevention(Trim(Request.Form("AUTHOR")))
	rs("YEAR") = SQLInjectionPrevention(Trim(Request.Form("YEAR")))
	rs("TITLE")  = SQLInjectionPrevention(Trim(Request.Form("TITLE")))
	rs("JOURNAL") = SQLInjectionPrevention(Trim(Request.Form("JOURNAL")))
	rs("VOLUME")  = SQLInjectionPrevention(Trim(Request.Form("VOLUME")))
	rs("ISSUE") = SQLInjectionPrevention(Trim(Request.Form("ISSUE")))
	rs("PAGES") = SQLInjectionPrevention(Trim(Request.Form("PAGES")))
	rs("PUBLICATION_TYPE") = SQLInjectionPrevention(Trim(Request.Form("PUBLICATION_TYPE")))
	rs("FOCUS") = SQLInjectionPrevention(Trim(Request.Form("FOCUS")))
	rs("COMMUNICATOR") = SQLInjectionPrevention(Trim(Request.Form("COMMUNICATOR")))
	rs("AUDIENCE_ROLE") = SQLInjectionPrevention(Trim(Request.Form("AUDIENCE_ROLE")))
	rs("AUDIENCE_ETHNICITY") = SQLInjectionPrevention(Trim(Request.Form("AUDIENCE_ETHNICITY")))
	rs("AUDIENCE_GENDER") = SQLInjectionPrevention(Trim(Request.Form("AUDIENCE_GENDER")))
	rs("SETTING") = SQLInjectionPrevention(Trim(Request.Form("SETTING")))
	rs("CHANNELS_OF_RISK_COMMUNICATION")  = SQLInjectionPrevention(Trim(Request.Form("CHANNELS_OF_RISK_COMMUNICATION")))
	rs("CONTENT_OF_RISK_MESSAGE") = SQLInjectionPrevention(Trim(Request.Form("CONTENT_OF_RISK_MESSAGE")))
	rs("FORM_OF_RISK_INFORMATION") = SQLInjectionPrevention(Trim(Request.Form("FORM_OF_RISK_INFORMATION")))
	rs("OUTCOMES") = SQLInjectionPrevention(Trim(Request.Form("OUTCOMES")))
	rs("HAZARD") = SQLInjectionPrevention(Trim(Request.Form("HAZARD")))
	rs("METHODOLOGICAL_ISSUES") = SQLInjectionPrevention(Trim(Request.Form("METHODOLOGICAL_ISSUES")))
    rs("SUMMARY_SENTENCE") = SQLInjectionPrevention(Trim(Request.Form("SUMMARY_SENTENCE")))
	rs("ADD_DATE") = SQLInjectionPrevention(Date())
	rs("CONFIRMATION") = SQLInjectionPrevention(Trim(Request.Form("CONFIRMATION")))
	rs("LINK") = SQLInjectionPrevention(Trim(Request.Form("LINK")))
	rs("BOOK_TITLE") = SQLInjectionPrevention(Trim(Request.Form("BOOK_TITLE")))
	rs("INSTITUTIONAL_AUTHOR") = SQLInjectionPrevention(Trim(Request.Form("INSTITUTIONAL_AUTHOR")))
	rs("BT_LINK") = SQLInjectionPrevention(Trim(Request.Form("BT_LINK")))
				
	rs.update
%>
  
<h2>Your update for ID number <%= rs("ID_NUMBER")%> has been submitted.</h2>

<p></p>
<p>&nbsp;</p>
<p><a href="/ADMIN_FORMS/riskindex.html">Return to Index</a></p>

</body>
</html>
