<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
	<TITLE>Acknowledging Grantee Contributions in DCCPS - BSA/NCAB Members</TITLE>

<!--- #include file=header.asp --->

<table width="100%">
	<tr>
		<td><H1>BSA/NCAB Members</H1></td>
<% If (UCase(render) <> "PF") Then %>
		<td width="5%" align="right"><a href="bsa_ncab.asp?category=3&category2=4&numcols=1&render=pf" target="_blank"><img src="../images/printer.jpg" width="25" height="25" border="0" alt="Print">&nbsp;Print</a>
		</td>
<% End If  %>
	</tr>
</table>

<div id="pageDescription">
Below are names of DCCPS grantees who have served on the <A HREF="http://deainfo.nci.nih.gov/advisory/bsa/bsa.htm" target="_blank">Board of Scientific Advisors (BSA)</A> or the <A HREF="http://deainfo.nci.nih.gov/advisory/ncab/ncab.htm" target="_blank">National Cancer Advisory Board (NCAB)</A> between 1997 and 2013.
<P>
<b><i>Click on a name below to see all of the grants that were awarded to each principal investigator.</i></b>
</div>

<HR>
<FORM ACTION="pi_portfolio.asp" NAME="tenyears_pi" METHOD="post">
<input type="hidden" name="category" value="3" >

<div id="mainContent">
<div id="dataTable-noBorder">
<!-- TABLE class="pi_names" WIDTH="100%" -->
<TABLE>
	<TR>
		<TD VALIGN="top" colspan="2">
 
<%
If (DisplayCountDiff = "Y") Then 
%>

<!--- #include file=validationInstructions.asp --->	

<%
End If
%>
	
		</TD>
	</TR>
	<TR>
		<TH class="rowLabel">
			Current and Past BSA Members
			<HR>
		</TH>
		<TH class="rowLabel">
			Current and Past NCAB Members
			<HR>
		</TH>
	</TR>
	<TR>
		<TD class="rowLabel" valign="top">
<% 
		DisplayPINamesByCategory("category")
%>
		</TD><TD class="rowLabel" valign="top">
<%
		DisplayPINamesByCategory("category2")
%>
		</TD>
	</TR>
</TABLE>
</div>
</div>

<!--- #include file=footer.asp --->
</FORM>
</BODY>
</HTML>
