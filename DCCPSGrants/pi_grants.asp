<% Option Explicit %>
<HTML>
<HEAD>
<TITLE>Acknowledging Grantee Contributions in DCCPS</TITLE>

<!-- #include file=pi_header.html -->

<%
	dim lngPersonID

	lngPersonID=Request.QueryString("personid")

'	FindProfileEntryPersonID(lngPersonID)


'              <!-- #include file="utility.asp" -->

%>
		<H2>Cancer Control Research</H2>


<%

   ' Send the output we've accumulated so far to the browser so it starts to display.
   Response.Flush

%>

<!-- #include file=pi_footer.html -->

</BODY>
</HTML>
