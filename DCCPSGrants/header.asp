<div style="display:none;">
<div id="skipmenu">
<a href="#skip" class="skippy">Skip Navigation</a>
<a name="top"></a>
</div></div> <!-- end skipmenu -->
<!-- #include virtual="/grants/utility.asp" -->
<!-- #include file="acknowledgements.asp" -->
<%
Dim gCurrentDisplayYear 	' populated when DisplayPINamesByCategory is called

Dim PIONEER
Dim MERIT
Dim R01
Dim BSA

PIONEER = 0
MERIT = 1
R01 = 2
BSA = 3

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

' HF (10/1/10) - CR #43590 - If "render=pf" (for printer friendly) appears on command line, omit left margin menu/header.
	Dim render
	render = GetParameterValue("render")
	If (render = vbNullString) Then
%>
<!--- #include file=pi_closehead.html --->

<%
	' Cannot include content from a remote server using an include directive, must instead use procedure below.
	' From: http://classicasp.aspfaq.com/general/how-do-i-read-the-contents-of-a-remote-web-page.html
	Dim url
	Dim xmlhttp
'    url = "http://parsley.cit.nih.gov/overview/header.jsp" 		' <=== DEVELOPMENT
    url = "http://maps.cancer.gov/overview/header.jsp"              ' <=== PRODUCTION
    set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP") 
    xmlhttp.open "GET", url, false 
    xmlhttp.send ""
    Response.write xmlhttp.responseText 
    set xmlhttp = nothing 
%>
<p>
<%	ElseIf (UCase(render) = "PF") Then
		' add nothing
	Else
%>
<!--- #include file=pi_closehead.html --->

<%
'    url = "http://parsley.cit.nih.gov/overview/header.jsp" 		' <=== DEVELOPMENT
    url = "http://maps.cancer.gov/overview/header.jsp" 			' <=== PRODUCTION
    set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP") 
    xmlhttp.open "GET", url, false 
    xmlhttp.send "" 
    Response.write xmlhttp.responseText 
    set xmlhttp = nothing 
%>
<p>
<%	End If
%>
<div id="content">
<a name="skip"></a>