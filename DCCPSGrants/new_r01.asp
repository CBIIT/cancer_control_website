<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
	<TITLE>Acknowledging Grantee Contributions in DCCPS - New R01 Investigators</TITLE>

<!--- #include file=header.asp --->

<table width="100%">
	<tr>
		<td><H1>New R01 Investigators</H1></td>
<% If (UCase(render) <> "PF") Then %>
		<td width="5%" align="right"><a href="new_r01.asp?category=2&numcols=3&render=pf" target="_blank"><img src="../images/printer.jpg" width="25" height="25" border="0" alt="Print">&nbsp;Print</a>
		</td>
<% End If  %>
	</tr>
</table>

<div id="pageDescription">
<H4>
<I>**<A target="_blank" href="http://grants.nih.gov/grants/new_investigators/index.htm#definition">
Please click here to see qualifying criteria</A>**</I>
</H4>
Below are lists of new R01 investigators in DCCPS since 1999 (when this information was first tracked). 
New R01 investigators are important to the mission of DCCPS because they expand the number of researchers 
in cancer control and population sciences, they often bring a fresh perspective to the research arena, and they 
provide the promise that this important science will continue to impact public health.  Also included in the list are 
new R01 Investigators identified as Early Stage Investigators. 
<P>
<b><i>Click on a name below to see all of the grants that were awarded to each principal investigator.</i></b>
</div>


<FORM ACTION="new_r01.asp" NAME="tenyears_pi" METHOD="post">
<input type="hidden" name="category" value="2" >

<% ' HF (7/3/07) CR #39971 - replaced static names in HTML with ASP which queries names and grant counts from database. %>
<!--- #include file=pi_names.asp --->
<!--- #include file=footer.asp --->

</FORM>
</BODY>
</HTML>
