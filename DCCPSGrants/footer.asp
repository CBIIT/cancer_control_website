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

	<script src="http://parsley.cit.nih.gov/overview/javascript/jquery.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-transition.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-alert.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-modal.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-dropdown.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-scrollspy.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-tab.js"></script>
    <script src="http://parsley.cit.nih.gov/overview>/javascript/bootstrap-tooltip.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-popover.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-button.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-collapse.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-carousel.js"></script>
    <script src="http://parsley.cit.nih.gov/overview/javascript/bootstrap-typeahead.js"></script>
	<script src="http://parsley.cit.nih.gov/overview/javascript/respond.min.js"></script>

<%
	' Cannot include content from a remote server using an include directive, must instead use procedure below.
	' From: http://classicasp.aspfaq.com/general/how-do-i-read-the-contents-of-a-remote-web-page.html
	'Dim url
	'Dim xmlhttp
	url = "http://parsley.cit.nih.gov/overview/footer.jsp" 
    'url = "http://maps.cancer.gov/overview/footer.jsp" 
    set xmlhttp = CreateObject("MSXML2.ServerXMLHTTP") 
    xmlhttp.open "GET", url, false 
    xmlhttp.send ""
    Response.write xmlhttp.responseText 
    set xmlhttp = nothing 
%>



<p>
