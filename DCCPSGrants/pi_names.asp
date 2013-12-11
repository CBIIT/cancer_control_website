<%
Response.Write("<HR>")
%>

<div id="mainContent">

<%
If (DisplayCountDiff = "Y") Then 
%>

<!--- #include file=validationInstructions.asp --->	

<%
End If
%>

<div id="dataTable-noBorder">

<%  
DisplayPINamesByCategory("category")
%>

</div>
</div>
