<% Option Explicit %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>Acknowledging Grantee Contributions in DCCPS</TITLE>

<!--- #include file=header.asp --->

<table width="100%">
	<tbody><tr>
		<td><h1>Acknowledging Grantee Contributions</h1>

		<%
			Dim numGrants
			Dim amtAwarded
			GetDivisionGrantTotal 1, null, numGrants, amtAwarded
		%> 

		<div id="pageDescription">
**DCCPS currently funds <%=numGrants %> grants valued at <%=FormatCurrency(amtAwarded, 0) %>. The researchers funded by DCCPS have advanced the science to improve public health and we celebrate their accomplishments. Click on the links below to learn more about the accomplishments and service of some of our grantees.
		</div>
		</td>
	</tr>
</tbody></table>

<div id="mainContent">
<div id="dataTable-noBorder">
<TABLE>
	<TR>
		<TD VALIGN="top" ALIGN="left">
			<UL>
			 <LI><A HREF="pioneers.asp?category=0&numcols=5">Research Pioneers</A>
			 <LI><A HREF="merit.asp?category=1&numcols=1">MERIT Awardees</A>
			 <LI><A HREF="new_r01.asp?category=2&numcols=5">New RO1 Investigators</A>
			 <LI><A HREF="bsa_ncab.asp?category=3&category2=4&numcols=1">BSA/NCAB Members</A>
			</UL>
		</TD>
	</TR>
</TABLE>
</div>
</div>

<!--- #include file=footer.asp --->

</BODY>
</HTML>
