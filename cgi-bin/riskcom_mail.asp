<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Results</title>
</head>

<body>

<h2>Thank You!</h2>

<h2>The record has been sent for confirmation!</h2>

<%
    DIM MyMail
	set MyMail = Server.CreateObject("CDO.Message") 'for the new server 2003 on web1
	Set iConf = CreateObject("CDO.Configuration") 'for the new server 2003 on web1
	
    MyMail.From = "ncidccpspdrm@mail.nih.gov"
    MyMail.To =  "lbelber@mmgct.com"
	'MyMail.To =  "qshi@mmgct.com"
	
	
	strIDNumber = request.FORM("ID_NUMBER")

	MyMail.Subject = "DCCPS Data Entry: The following record has been added " & strIDNumber 
	MyMail.TextBody = "The following record has been added to the database. " & vbnewline & vbnewline &_
	                "Record ID Number:  " & strIDNumber  & vbnewline & vbnewline &_
	               "Click the link below to check for confirmation. " & vbnewline & vbnewline &_
	               "http://cancercontrol.cancer.gov/cgi-bin/riskcom_view.asp?ID_NUMBER=" & strIDNumber & vbnewline & vbnewline &_
	               "Thank you."
	MyMail.Send
	SET MyMail = Nothing
%>

</body>
</html>
