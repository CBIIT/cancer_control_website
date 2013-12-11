<!--
##################################
#This script is a mail to
#script. It takes information
#from form.html and based on
#the categories of interest chosen
#it will send email to the appropriate
#contact person. The script also
#sends an autoresponse to the sender.
#b.cgi (script name)
##################################
-->

<!--#include  virtual ="/includefile/SQLInputCheck.asp"-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Thank you!</title>
</head>

<body>

<% if Request.FORM("useful1") <> "" then
	  strQuestion2 = "Introduction"
	 End if
	 
	 If Request.FORM("useful2") <> "" then
	  		IF strQuestion2 <> "" THEN
	         	strQuestion2 = strQuestion2 & ", Help" 
	      	ELSE 
	        	strQuestion2= "Help"
	      	END IF
	 End if
	
	 
	  If Request.FORM("useful3") <> "" then
	  		IF strQuestion2 <> "" THEN
	         	strQuestion2 = strQuestion2 & ", Bibliography Coding System" 
	      	ELSE 
	        	strQuestion2 = "Bibliography Coding System"
	      	END IF
	 End if
	 
	  If Request.FORM("useful4") <> "" then
	  		IF strQuestion2 <> "" THEN
	         	strQuestion2 = strQuestion2 & ", Search" 
	      	ELSE 
	        	strQuestion2 = "Search"
	      	END IF
	 End if
	 
	  If Request.FORM("useful5") <> "" then
	  		IF strQuestion2 <> "" THEN
	         	strQuestion2 = strQuestion2 & ", View All Records" 
	      	ELSE 
	        	strQuestion2 = "View All Records"
	      	END IF
	 End if
	 
	
	 
	 if Request.FORM("difficult1") <> "" then
	  strQuestion3 = "Introduction"
	 End if
	 
	 If Request.FORM("difficult2") <> "" then
	  		IF strQuestion3 <> "" THEN
	         	strQuestion3 = strQuestion3 & ", Help" 
	      	ELSE 
	        	strQuestion3 = "Help"
	      	END IF
	 End if
	
	 
	  If Request.FORM("difficult3") <> "" then
	  		IF strQuestion3 <> "" THEN
	         	strQuestion3 = strQuestion3 & ", Bibliography Coding System" 
	      	ELSE 
	        	strQuestion3 = "Bibliography Coding System"
	      	END IF
	 End if
	 
	  If Request.FORM("difficult4") <> "" then
	  		IF strQuestion3 <> "" THEN
	         	strQuestion3 = strQuestion3 & ", Search" 
	      	ELSE 
	        	strQuestion3= "Search"
	      	END IF
	 End if
	 
	  If Request.FORM("difficult5") <> "" then
	  		IF strQuestion3 <> "" THEN
	         	strQuestion3 = strQuestion3 & ", View All Records" 
	      	ELSE 
	        	strQuestion3 = "View All Records"
	      	END IF
	 End if
	 
     %>
 
 
  <%
    set myMail = Server.CreateObject("CDO.Message") 'for the new server 2003 on web1
	Set iConf = CreateObject("CDO.Configuration") 'for the new server 2003 on web1
	
    myMail.From = "maint@iswebp1.nci.nih.gov"
	myMail.To =  "lbelber@mmgct.com"
	'myMail.Cc =  "qshi@mmgct.com"
	myMail.Subject = "DCCPS Feedback"
	myMail.TextBody =  "Hello.  The following information has been submitted: " & vbnewline & vbnewline &_
	               " Below is new user's information, please look at it as soon as possible. " & vbnewline & vbnewline &_
	              " Question 1:  " & SQLInjectionPrevention2(Request.FORM("title")) & vbnewline &_
	               " Other: "  & SQLInjectionPrevention2(Request.FORM("other")) & vbnewline &_
	               " 2. I found the following sections especially useful: "  & vbnewline &_ 
				   " 	" & SQLInjectionPrevention2(strQuestion2) & " " & vbnewline &_ 
	               " Question 3: " & vbnewline &_
				   " 	" &  SQLInjectionPrevention2(strQuestion3) & vbnewline &_
	               " Comments or Suggestions 4: " & SQLInjectionPrevention2(Request.FORM("suggestions")) & vbnewline &_
				   " Question 5: " & SQLInjectionPrevention2(Request.FORM("ease")) & vbnewline &_ 
				   " Question 6: " & vbnewline &_ 
				   " Title: " & SQLInjectionPrevention2(Request.FORM("Title")) & vbnewline &_ 
				   " Author: " & SQLInjectionPrevention2(Request.FORM("Author")) & vbnewline &_ 
				   " Journal/Book: " & SQLInjectionPrevention2(Request.FORM("Journal")) & vbnewline & vbnewline  &_ 
	               " Thank you."
				   
	myMail.Send
	SET myMail = Nothing

%>





<h1>Thank you!</h1>

<br>Thanks for your input! Please click back.


</body>
</html>
