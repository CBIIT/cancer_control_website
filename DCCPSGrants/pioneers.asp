<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>Acknowledging Grantee Contributions in DCCPS - Research Pioneers</TITLE>

<!--- #include file=header.asp --->
<table width="100%">
	<tr>
		<td><H1>Research Pioneers</H1></td>
<% If (UCase(render) <> "PF") Then %>
		<td width="5%" align="right"><a href="pioneers.asp?category=0&numcols=5&render=pf" target="_blank"><img src="../images/printer.jpg" width="25" height="25" border="0" alt="Print">&nbsp;Print</a>
		</td>
<% End If  %>
	</tr>
</table>

<div id="pageDescription">
The 147 grantees listed below were funded when DCCPS was formed in 1997.  These pioneers have 
helped grow and enhance cancer control and population science research over the years.
<P>
<b><i>Click on a name below to see all of the grants that were awarded to each principal investigator from 1997 to FY 2013.</i></b>
</div>

<FORM ACTION="pi_portfolio.asp" NAME="tenyears_pi" METHOD="post">
<input type="hidden" name="category" value="0" >

<% ' HF (7/3/07) CR #39971 - replaced static names in HTML with ASP which queries names and grant counts from database. %>
<!--- #include file=pi_names.asp --->
<!--- #include file=footer.asp --->

</FORM>
</BODY>
</HTML>
