<% Option Explicit %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
	<TITLE>Acknowledging Grantee Contributions in DCCPS - MERIT Awardees</TITLE>
	
<!--- #include file=header.asp --->
<table width="100%">
	<tr>
		<td><H1>MERIT Awardees</H1></td>
<% If (UCase(render) <> "PF") Then %>
		<td width="5%" align="right"><a href="merit.asp?category=1&numcols=1&render=pf" target="_blank"><img src="../images/printer.jpg" width="25" height="25" border="0" alt="Print">&nbsp;Print</a>
		</td>
<% End If  %>
	</tr>
</table>
<div id="pageDescription">
The Method to Extend Research in Time (MERIT) Award is an honor given by the NIH to recognize 
superior researchers. These awards provide long-term support to investigators, and less than 5 percent 
of NIH-funded investigators are selected to receive MERIT Awards. Below is a listing of the DCCPS-funded 
researchers who have received this prestigious award in cancer control and population science research. 
<P>
To learn more about the MERIT award visit
<A HREF="http://www.cancer.gov/researchandfunding/MERIT" target="_blank">http://www.cancer.gov/researchandfunding/MERIT</A>.
<P>
<b><i>Click on a name below to see all of the grants that were awarded to each principal investigator.</i></b>
</div>

<FORM ACTION="pi_portfolio.asp" NAME="tenyears_pi" METHOD="post">
<input type="hidden" name="category" value="1" >

<% ' HF (7/3/07) CR #39971 - replaced static names in HTML with ASP which queries names and grant counts from database. %>
<!--- #include file=pi_names.asp --->
<!--- #include file=footer.asp --->
</FORM>
</BODY>
</HTML>
