<!--
		</table>
		</td>
	  </tr>
	</table>
		</td>
	  </tr>
	</table>
	</td>
		</td>
	  </tr>
	</table>
	</td>
  </tr>
</table>
-->

</div>

<%
	' Cannot include content from a remote server using an include directive, must instead use procedure below.
	' From: http://classicasp.aspfaq.com/general/how-do-i-read-the-contents-of-a-remote-web-page.html
	'Dim url
	'Dim xmlhttp
	'url = "http://parsley.cit.nih.gov/overview/footer.jsp" 
    url = "http://maps.cancer.gov/overview/footer.jsp" 
    set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP") 
    xmlhttp.open "GET", url, false 
    xmlhttp.send ""
    Response.write xmlhttp.responseText 
    set xmlhttp = nothing 
%>
<p>

