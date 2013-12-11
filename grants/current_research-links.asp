
<% Select Case strProgram
       Case "OCS"
%>

<a href="http://cancercontrol.cancer.gov/ocs/portfolio_sp.asp" class="navigation-dark-red-link">Long-Term Cancer Survivors: Research Initiative</a><br /><br />

<%  Case "ARP"  %>

<a href="http://cancercontrol.cancer.gov/grants/query.asp?program=ARP" class="navigation-dark-red-link">Applied Research</a><br />
<a href="http://cancercontrol.cancer.gov/grants/query.asp?program=ARP&branch=HSEB" class="navigation-dark-red-link">Health Services and Economics Branch</a><br />
<a href="http://cancercontrol.cancer.gov/grants/query.asp?program=ARP&branch=RFMMB" class="navigation-dark-red-link">Risk Factor Monitoring and Methods Branch</a><br />
<a href="http://cancercontrol.cancer.gov/grants/query.asp?program=ARP&branch=ORB" class="navigation-dark-red-link">Outcomes Research Branch</a><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/bcsc.asp"> --><a href="http://breastscreening.cancer.gov/" class="navigation-dark-red-link">Breast Cancer Surveillance Consortium</a><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/diet.asp"> -->Improving Diet and Physical Activity Assessment<br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/economic.asp"> --><a href="http://grants1.nih.gov/grants/guide/pa-files/PA-04-017.html" class="navigation-dark-red-link">Economic Studies in Cancer Prevention, Screening and Care</a><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/health.asp"> --><span class="navigation-dark-gray">Cancer Surveillance Using Health Claims-Based Data System</span><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/hmocrn.asp"> --><a href="http://crn.cancer.gov/" class="navigation-dark-red-link">HMO Cancer Research Network</a><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/colorectal.asp"> --><span class="navigation-dark-gray">Colorectal Cancer Screening Program Announcement</span><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/awbc.asp">Aging Women and Breast Cancer</a> -->
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/cancors.asp"> --><a href="http://healthservices.cancer.gov/cancors/" class="navigation-dark-red-link">Cancer Care Outcomes Research and Surveillance Consortium (CanCORS)</a><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/obesity.asp"> --><span class="navigation-dark-gray">Physical Activity and Obesity Across Chronic Diseases</span><br />
<!-- <a href="http://cancercontrol.cancer.gov/ARP/research/sp.asp"> --><span class="navigation-dark-gray">Investigator Initiated Research Project Grants</span><br /><br />


<% Case "BRP"
    Select Case strBranch
       Case vbNullString
%>


<a href="http://dccps.nci.nih.gov/grants/query_mech03.asp?FY=2001&mechanism=R03&amp;program=brp" class="navigation-dark-red-link">Small Grants Program</a><br />
<a href="http://dccps.nci.nih.gov/hcirb/sbir/" class="navigation-dark-red-link">Multimedia Technology Health Communication Grants for Small Businesses</a><br />
<a href="http://cancercontrol.cancer.gov/bbrb/research_crb.asp" class="navigation-dark-red-link">Basic and Biobehavioral Research on Cancer-Related Behaviors</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/grants_hccc.asp" class="navigation-dark-red-link">Health Communication Intervention</a><br />
<a href="http://cancercontrol.cancer.gov/tcrb/grant_scrfa.asp" class="navigation-dark-red-link">State and Community Tobacco Control Interventions</a><br />
<a href="http://cancercontrol.cancer.gov/tcrb/grant_tturc.asp" class="navigation-dark-red-link">Transdisciplinary Tobacco Use Research Centers</a><br /><br />

<%
       Case "ACSRB"
%>

<a href="http://grants1.nih.gov/grants/guide/pa-files/PAR-02-042.html" class="navigation-dark-red-link">Colorectal Cancer Screening in Primary Care Practice</a><br />
<a href="http://dccps.nci.nih.gov/grants/query_mech03.asp?FY=2001&mechanism=R03&amp;program=brp&amp;branch=ACSRB" class="navigation-dark-red-link">Small Grants Program</a><br /><br />

<% Case "BBRB" %>

<a href="http://cancercontrol.cancer.gov/bbrb/research_crb.asp" class="navigation-dark-red-link">Basic and Biobehavioral Research on Cancer-Related Behaviors</a><br />
<a href="http://cancercontrol.cancer.gov/grants/query.asp?FY=2001&mechanism=R03&amp;program=brp&amp;branch=BBRB" class="navigation-dark-red-link">Small Grants Program</a><br /><br />

<% Case "HCIRB" %>

<a href="http://cancercontrol.cancer.gov/hcirb/research_ddpp.html" class="navigation-dark-red-link">Digital Divide Pilot Projects (DDPP)</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/grants_ceccrs.asp" class="navigation-dark-red-link">Centers of Excellence in Cancer Communications Research (CECCRs)</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/hints.html" class="navigation-dark-red-link">Health Information National Trends Survey (HINTS)</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/research_mtgp.html" class="navigation-dark-red-link">Multimedia Technology Health Communication Grants for Small Businesses</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/research_cisrc.html" class="navigation-dark-red-link">Cancer Information Service Research Consortium (CISRC)</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/grants_hccc.asp" class="navigation-dark-red-link">Health Communication Intervention RFA Research Projects</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/grants_ahrq.asp" class="navigation-dark-red-link">Making Quality Count for Consumers and Patients Program (NCI/AHRQ)</a><br />
<a href="http://cancercontrol.cancer.gov/hcirb/research_hrsa.html" class="navigation-dark-red-link">HRSA/NCI Cancer Health Disparity Collaborative</a><br />
<a href="http://dccps.nci.nih.gov/grants/query_mech03.asp?FY=2001&mechanism=R03&amp;program=brp&amp;branch=HCIRB" class="navigation-dark-red-link">Small Grants Program</a><br /><br />

<% Case "HPRB" %>

<a href="http://dccps.nci.nih.gov/grants/query.asp?FY=2001&mechanism=R03&amp;program=brp&amp;branch=HPRB" class="navigation-dark-red-link">Small Grants Program</a><br /><br />

<% Case "TCRB" %>

<a href="http://cancercontrol.cancer.gov/tcrb/grant_tturc.asp" class="navigation-dark-red-link">Transdisciplinary Tobacco Use Research Centers</a><br />
<a href="http://cancercontrol.cancer.gov/tcrb/grant_prev.asp" class="navigation-dark-red-link">Prevention and Cessation of Tobacco Use by Children and Youth in the U.S.</a><br />
<a href="http://cancercontrol.cancer.gov/tcrb/scrfa_grant.html" class="navigation-dark-red-link">State and Community Tobacco Control Interventions</a><br />
<a href="http://cancercontrol.cancer.gov/tcrb/grant_doc.asp" class="navigation-dark-red-link">Review and Analysis of Tobacco Industry Documents</a><br />
<a href="http://dccps.nci.nih.gov/grants/query_mech03.asp?FY=2001&mechanism=R03&amp;program=brp&amp;branch=TCRB" class="navigation-dark-red-link">Small Grants Program</a><br /><br />


<% End Select %>

<% Case "EGRP" %>


<!--- <a href="http://epi.grants.cancer.gov/ResPort/biometry.html">Biometry</a> --->
<a href="http://epi.grants.cancer.gov/ResPort/clinical.html" class="navigation-dark-red-link">Clinical Epidemiology</a><br />
<a href="http://epi.grants.cancer.gov/Consortia/" class="navigation-dark-red-link">Consortia (Cohort, Case-Control)</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/diet.html" class="navigation-dark-red-link">Diet &amp; Nutrition</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/molecular.html" class="navigation-dark-red-link">Environmental/Molecular Epidemiology</a><br />
	&nbsp;&nbsp;<a href="http://epi.grants.cancer.gov/ResPort/CancerRisk.html" class="navigation-dark-red-link">Cancer Risk Assessment Methods</a><br />
	&nbsp;&nbsp;<a href="http://epi.grants.cancer.gov/ResPort/Biomarkers.html" class="navigation-dark-red-link">Exposure Assessment Methods</a><br />
	&nbsp;&nbsp;<a href="http://epi.grants.cancer.gov/ResPort/Variation.html" class="navigation-dark-red-link">Regional Variation in Breast Cancer Rates</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/genetic.html" class="navigation-dark-red-link">Genetic Epidemiology</a><br />
	&nbsp;&nbsp;<a href="http://epi.grants.cancer.gov/ResPort/interdisc.html" class="navigation-dark-red-link">Interdisciplinary Genetic Epidemiology</a><br /><br />
<a href="http://epi.grants.cancer.gov/GIS.html" class="navigation-dark-red-link">Geographic Information Systems</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/infectious.html" class="navigation-dark-red-link">HIV/AIDS &amp; Infectious Diseases</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/grants.html" class="navigation-dark-red-link">Small Grants Program in Epidemiology</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/sbir.html" class="navigation-dark-red-link">Small Business Grants</a><br /><br />

<p><strong>Special Projects</strong></p>
<a href="http://www.niehs.nih.gov/oc/news/4brcent.htm" class="navigation-dark-red-link">Breast Cancer and Environment Research Centers</a><br />
<a href="http://epi.grants.cancer.gov/LIBCSP/index.html" class="navigation-dark-red-link">Long Island Breast Cancer Study Project</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/NEMAbcs.html" class="navigation-dark-red-link">Northeast and Mid-Atlantic Breast Cancer Study</a><br />
<a href="http://epi.grants.cancer.gov/ResPort/smoking.html" class="navigation-dark-red-link">Tobacco Use</a><br /><br />


<% Case "SRP" %>


<a href="http://seer.cancer.gov/" class="navigation-dark-red-link">SEER Program</a><br />
<a href="http://seer.cancer.gov/about/expansion.html" class="navigation-dark-red-link">SEER Expansion</a><br />
<a href="http://cisnet.cancer.gov/" class="navigation-dark-red-link">CISNET</a><br />
<a href="http://surveillance.cancer.gov/disparities/socioecon/" class="navigation-dark-red-link">Socioeconomic Status and Cancer</a><br />
<a href="http://surveillance.cancer.gov/disparities/native/" class="navigation-dark-red-link">Native Americans</a><br />
<a href="http://surveillance.cancer.gov/international/index.html" class="navigation-dark-red-link">International Cancer Surveillance Activities</a><br />
<a href="http://gis.cancer.gov/" class="navigation-dark-red-link">Geographic Information Systems</a><br /><br />


<% Case Else

    ' Include the fiscal year if it is specified.
    dim FY, isFY
    FY = Request.QueryString("FY")
    isFY = vbNullString <> FY and IsNumeric(FY)
%>
<b>Links to Program-Specific Research Grant Listings:</b><br />

<% If isFY Then
            WriteLink "ARP", vbNullString, FY, "/grants/query.asp?program=ARP", _
          		"Applied Research"
         Else
            WriteLink "ARP", vbNullString, FY, "/grants/query.asp?program=ARP", _
                        "Applied Research"
         End If
       %><br />
	   
<% If isFY Then
	    WriteLink "BRP", vbNullString, FY, "/grants/query.asp?program=BRP", _
	    		"Behavioral Research"
	 Else
	    WriteLink "BRP", vbNullString, FY, "http://maps.cancer.gov/overview/DCCPSGrants/grantlist.jsp?method=dynamic&amp;program=brp", _
          		"Behavioral Research"
         End If
       %><br />

<% WriteLink "EGRP", vbNullString, FY, "/grants/query.asp?program=EGRP", _
          		"Epidemiology and Genetics Research" %><br />

<% WriteLink "SRP", vbNullString, FY, "/grants/query.asp?program=SRP", _
          		"Surveillance Research" %><br />

<% If isFY Then
	    WriteLink "OCS", vbNullString, FY, "/grants/query.asp?program=OCS", _
	    		"Office of Cancer Survivorship"
	 Else
	    WriteLink "OCS", vbNullString, FY, "/ocs/portfolio.asp", _
          		"Office of Cancer Survivorship"
         End If
      %><br /><br />

<% End Select %>


<%
' Writes either a link or static bold text, depending on which page is
' currently being displayed.
Function WriteLink(strProgram, strBranch, FY, strURL, strTitle)
    dim strPage
    dim strTest
    dim blnHighlight

    strPage = Request.QueryString("program") & "-" & Request.QueryString("branch")
    strTest = strProgram & "-" & strBranch
    blnHighlight = (strPage = strTest)

    If CInt(FY) > 0 Then
	strURL = strURL & "&FY=" & CInt(FY)
    End If

    Response.write "<font face=""Arial, Helvetica, sans-serif"" size=""-1"">" & vbCrLf
    if (blnHighlight) Then
    	Response.write strTitle
    Else
    	Response.write "<a class=""dccpsnav"" href=""" & strURL & """>" & strTitle & "</a></li>"
    End If

    Response.write "</font>" & vbCrLf
End Function
%>
