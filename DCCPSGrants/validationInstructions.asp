<% 
	' Display a warning if the developer forgot to point the code to the production db.
	Response.Write("<br><div class='alert'><c>DEVELOPMENT SITE WITH NEW DATA!!</c></div><br>" & vbCrLf)
	Response.Write("<u><i>Legend</i></u>" & vbCrLf)
	Response.Write("<table border='0' width='70%' style='text-align: left'><tr><td><img src='new.gif'></td><td>Signifies a PI added this year</td></tr>" & vbCrLf)
	Response.Write("<tr valign='top'><td><font color='black'>black</font></td><td>Signifies no changes to the grant count for this PI from the previous year</tr>" & vbCrLf)
	Response.Write("<tr valign='top'><td><font color='green'>green</font></td><td>Signifies that the number of grants for this PI equals or exceeds that from the previous year grant count and at least one grant is funded in the current fiscal year.</tr>" & vbCrLf)
	Response.Write("<tr valign='top'><td><font color='red'>red</font></td><td>Represents an issue with the grant count which must be reviewed. Occurs when<ul>" & vbCrLf)
	Response.Write("<li>A new PI has been added with zero grants in the current fiscal year, or</li>" & vbCrLf)
	Response.Write("<li>The grant count has been reduced from the previous year, or</li>" & vbCrLf)
	Response.Write("<li>No grants appear for this PI.</li><br>" & vbCrLf)
	Response.Write("<li>Use the spreadsheet to resolve grant count issues.</li><br>" & vbCrLf)
	Response.Write("</ul></td></tr></table>" & vbCrLf)

%>