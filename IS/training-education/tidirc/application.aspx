<%@ Page Language="VB" AutoEventWireup="false" CodeFile="application.aspx.vb" Inherits="IS_training_education_tidirc_application" %>

<!doctype html>
<html lang="en">
<head>
<script src="//assets.adobedtm.com/f1bfa9f7170c81b1a9a9ecdcc6c5215ee0b03c84/satelliteLib-339f9157d73ce92dfb58c341869b41fef294030a.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- SEO -->
    <meta name="description" content="Application for the Training Institute for Dissemination and Implementation Research in Cancer (TIDIRC)." />
<meta name="author" content="National Cancer Institute, Division of Cancer Control and Population Science">
    <title>TIDIRC Application Details | IS | DCCPS/NCI/NIH</title>
<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">
<!-- Default Favicons -->
<link rel="icon" type="image/x-icon" href="/favicon.ico">
<link rel="icon" type="image/png" href="/favicon.png">
<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<meta name="application-name" content="DCCPS">
<link rel="icon" sizes="192x192" href="/images/touch/chrome-touch-icon-192x192.png">
<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="DCCPS">
<link rel="apple-touch-icon" href="/images/touch/apple-touch-icon.png">
<!-- Bootstrap -->
<link href="../../../css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts Source Sans & Merriweather -->
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i|Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<!-- Styles.css is compiled from LESS files -->
<link href="../../css/styles-min.css" rel="stylesheet">
<!--[if lte IE 9]>
	<link href="../css/ie-styles-min.css" rel="stylesheet" type="text/css">
<![endif]-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<!-- Set body class to program name in order for correct program colors to be applied -->
<body class="is">
<!-- skip navigation of site -->
<a id="skipNav" class="sr-only sr-only-focusable" href="#main-content">
	<div class="container">
		<span class="skiplink-text">Skip to main content</span>
	</div> <!-- close container -->
</a>
<!-- end of the skip navigation -->
<header role="banner">
	<!-- NCI-DCCPS logo for site -->
	<div class="nci-logo-area">
	<div class="container">
		<div class="row">
		<div class="nci-logo-row">
			<div class="col-lg-12">
				<a href="https://cancercontrol.cancer.gov" class="nci-logo" target="_blank">
					<img src="../../../images/nci-dccps-logo_2x.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-large">
					<img src="../../../images/nci-dccps-logo-mobile.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-small">
				</a>
			</div> <!-- /.col-lg-12 -->
		</div> <!-- /.nci-logo-row -->
		</div> 
	</div> <!-- /.container -->
	</div> <!-- /.nci-logo-area -->
	<!-- End NCI-DCCPS logo for site -->
	<!-- Program Area Color Banner -->
	<div class="program-banner">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="program-name">Implementation Science</div>
			</div> <!-- /.col-lg-12 -->
		</div> 
	</div> <!-- /.container -->
	</div> <!-- /.program-banner -->
	<!-- End Program Area Color Banner -->
	<nav class="navbar" role="navigation">
		<div class="container">
		<div class="row">
		<div class="col-lg-12">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#navbar-responsive" aria-controls="navbar-responsive" aria-expanded="false">
					<div class="nav-menu-title">MENU</div>
					<div class="nav-hamburger">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</div> <!-- /.nav-hamburger -->
				</button>
			</div> <!-- /.navbar-header -->
			<!-- Collect the nav links, forms, and other content for toggling -->
			<nav id="navbar-responsive" class="navbar-collapse collapse" role="navigation" aria-expanded="false">
				<div class="form-group dccps-search">
					<form class="navbar-form" method="get" action="https://websrch.cit.nih.gov/sps/DCCPS/results.html?" name="search">
						<input type="hidden" name="output" value="xml_no_dtd">
						<input type="hidden" name="getfields" value="*">
						<label for="searchbox" class="sr-only">Search: </label>
						<input id="searchbox" type="text" name="query" size="15" maxlength="255" class="form-control" placeholder="SEARCH">
						<input type="image" src="/images/magnifying_glass_2x.png" class="go-button" name="btnG" id="btnG" alt="Search">
                    </form>
				</div> <!-- /.form-group -->
				<ul class="nav navbar-nav">
                            <li><a href="/IS/">IS Home</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Funding Opportunities <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="landing-page-link"><a href="/IS/funding.html">Funding Opportunities <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/sample-grant-applications.html">Examples of Funded Grants</a></li>
									<li><a href="/IS/funding-webinars.html">Funding Webinars</a></li>
                                </ul>
                            </li>
                            <li class="active dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Training &amp; Education<span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="landing-page-link"><a href="/IS/training-education/index.html">Training &amp; Education <span class="sr-only">Training &amp; Education</span></a></li>
                                    <li><a href="/IS/training-education/Webinars.aspx">Webinars</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Research &amp; Practice Tools <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="landing-page-link"><a href="/IS/tools/index.html">Research &amp; Practice Tools <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/tools/research.html">Research Tools</a></li>
                                    <li><a href="/IS/tools/practice.html">Practice Tools</a></li>
                                    <li><a href="/IS/tools/partnerships.html">Research-Practice Partnerships</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">About IS<span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="landing-page-link"><a href="/IS/about.html">About IS<span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/staff.html">Staff</a></li>
                                    <li><a href="/IS/blog/index.html">Blog</a></li>
									<li><a href="/IS/career.html">Careers</a></li>
                                </ul>
                            </li>
                        </ul>
			</nav>	
		</div> <!-- close /.col-lg-12 -->
		</div> <!-- close /.row -->
		</div> <!-- close /.container -->	
	</nav>
</header>

<main id="main-content" class="subpages" role="main" tabindex="-1">
<div class="page-title">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
                  <h1>TIDIRC Application</h1>
			</div> <!-- /.col-lg-12 -->
		</div> 
	</div> <!-- /.container -->
</div> <!-- /.page-title -->
<div class="page-breadcrumb">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
                <ol class="breadcrumb">
                    <li> <a href="/IS/index.html">Home</a> </li>
                    <li><a href="../index.html">Training &amp; Education</a></li>
                    <li><a href="index.html">TIDIRC</a></li>
                    <li>TIDIRC Application</li>
                  </ol>
		</div> <!-- /.col-lg-12 -->
	</div> 
</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<div class="container">
<!-- intro area -->	
	<div class="row">
		<div class="col-md-9 col-md-push-3">                 
			<p class="intro">Applications are due by noon on January 16, 2019. Applicants will be notified of their acceptance status by February 8, 2019.</p>
			<p class="intro">For questions concerning the training or application process, please review the <a href="/IS/training-education/tidirc/faqs.html">FAQ page</a> or contact the Implementation Science Team at <a href="mailto:NCIdccpsISteam@mail.nih.gov">NCIdccpsISteam@mail.nih.gov</a>.</p>
			<div id="thankyou" runat="server"></div>
			<form id="form1" runat="server">
				<div class="row">
					<div class="col-md-12 required-statement">
						<p class="alert alert-danger">All Fields Are Required Unless Stated Otherwise.</p> 
					</div> 
					<div class="col-md-6">
						<asp:Label ID="Label1" runat="server" AssociatedControlID="TXT_FirstName" Text="First Name"></asp:Label>
					  <asp:TextBox ID="TXT_FirstName" class="form-control" runat="server"></asp:TextBox> 
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_FirstName" Display="Dynamic" ErrorMessage="Please enter a first name." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-6">
						<asp:Label ID="Label2" runat="server" AssociatedControlID="TXT_LastName" Text="Last Name"></asp:Label>
					  <asp:TextBox ID="TXT_LastName" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_LastName" Display="Dynamic" ErrorMessage="Please enter a last name." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-6">
						<asp:Label ID="Label3" runat="server" AssociatedControlID="TXT_Title" Text="Title"></asp:Label>
					  <asp:TextBox ID="TXT_Title" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_Title" Display="Dynamic" ErrorMessage="Please enter title." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-6">
						<asp:Label ID="Label4" runat="server" AssociatedControlID="TXT_Organization" Text="Organization"></asp:Label>
					  <asp:TextBox ID="TXT_Organization" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXT_Organization" Display="Dynamic" ErrorMessage="Please enter an organization" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
                </div>
                <div class="row">
                    <div class="col-md-6">
						<asp:Label ID="Label27" runat="server" AssociatedControlID="TXT_DocLevelCredentials" Text="Please indicate doctoral level credentials or equivalent (e.g. Ph.D., Sc.D., M.D., Dr.P.H., D.O., D.V.M., D.N.Sc., etc., or terminal degrees in other clinical professions (e.g. MSGC) will be accepted)"></asp:Label>
					  <asp:TextBox ID="TXT_DocLevelCredentials" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TXT_DocLevelCredentials" Display="Dynamic" ErrorMessage="Please indicate doctoral level credentials or equivalent." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-12">
						<asp:Label ID="Label5" runat="server" AssociatedControlID="TXT_Address1" Text="Address"></asp:Label>
					  <asp:TextBox ID="TXT_Address1" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXT_Address1" Display="Dynamic" ErrorMessage="Please enter an address." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
						
						<asp:Label ID="Label6" runat="server" AssociatedControlID="TXT_Address2" Text="Address (optional)"></asp:Label>
					  <asp:TextBox ID="TXT_Address2" class="form-control" runat="server"></asp:TextBox>
					</div> 	
					<div class="col-md-6">
						<asp:Label ID="Label7" runat="server" AssociatedControlID="TXT_City" Text="City"></asp:Label>
					  <asp:TextBox ID="TXT_City" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TXT_City" Display="Dynamic" ErrorMessage="Please enter a city." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-3">	
						<asp:Label ID="Label8" runat="server" AssociatedControlID="TXT_State" Text="State/Province/Region"></asp:Label>
					  <asp:TextBox ID="TXT_State" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TXT_State" Display="Dynamic" ErrorMessage="Please enter a state/province/region." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 	
					<div class="col-md-3">	
						<asp:Label ID="Label9" runat="server" AssociatedControlID="TXT_Zip" Text="Zip/Postal Code"></asp:Label>
					  <asp:TextBox ID="TXT_Zip" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TXT_Zip" Display="Dynamic" ErrorMessage="Please enter a 5-digit zip code." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
						<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Zip" Display="Dynamic" ErrorMessage="Please enter a valid zip/postal code." CssClass="alert alert-danger" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
					</div>
                    <div class="col-md-12">	
						<asp:Label ID="Label26" runat="server" AssociatedControlID="TXT_Country" Text="Country"></asp:Label>
					  <asp:TextBox ID="TXT_Country" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TXT_Country" Display="Dynamic" ErrorMessage="Please enter a country." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div>
					<div class="col-md-6">
						<asp:Label ID="Label10" runat="server" AssociatedControlID="TXT_Phone" Text="Phone"></asp:Label>
					  <asp:TextBox ID="TXT_Phone" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TXT_Phone" Display="Dynamic" ErrorMessage="Please enter a phone number." CssClass="alert alert-danger" ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$"></asp:RequiredFieldValidator><br>
					</div> 	
					<div class="col-md-6">
						<asp:Label ID="Label11" runat="server" AssociatedControlID="TXT_Email" Text="Email"></asp:Label>
					  <asp:TextBox ID="TXT_Email" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TXT_Email" Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Email" Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert alert-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br>
					</div> 
				</div> 
				<hr>
				<div class="row">
					<div class="col-md-12">
						<asp:Label ID="Label12" runat="server" AssociatedControlID="TXT_Race" Text="Race (check as many as apply)"></asp:Label>
					  <asp:CheckBoxList ID="TXT_Race" runat="server">
							<asp:ListItem>American Indian or Alaska Native</asp:ListItem>
							<asp:ListItem>Asian</asp:ListItem>
							<asp:ListItem>Black or African American</asp:ListItem>
							<asp:ListItem>Native Hawaiian or Other Pacific Islander</asp:ListItem>
							<asp:ListItem>White</asp:ListItem>
							<asp:ListItem>Prefer not to answer</asp:ListItem>
						</asp:CheckBoxList>
						<asp:Label ID="Label13" runat="server" AssociatedControlID="TXT_Race_other" Text="Race (other)"></asp:Label>
					  <asp:TextBox ID="TXT_Race_other" class="form-control" runat="server"></asp:TextBox>
						<asp:CustomValidator ID="RequiredFieldValidator19" ErrorMessage="Please select a race." Display="Dynamic" CssClass="alert alert-danger" ClientValidationFunction="ValidateRaceCheckBoxList" runat="server" />

						<asp:Label ID="Label23" runat="server" AssociatedControlID="TXT_AreYouHispanic" Text="Are you Hispanic or Latino? (A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture or origin, regardless of race.)"></asp:Label> 
					  <asp:DropDownList ID="TXT_AreYouHispanic" class="form-control" runat="server">
							<asp:ListItem disabled="disabled" selected="selected" hidden="hidden" Value="-1">- Select One -</asp:ListItem>
							<asp:ListItem>No</asp:ListItem>
							<asp:ListItem>Yes</asp:ListItem>
						</asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TXT_AreYouHispanic" ErrorMessage="Please select an answer." Display="Dynamic" CssClass="alert alert-danger" InitialValue="-1"></asp:RequiredFieldValidator>
						<asp:Label ID="Label22" runat="server" AssociatedControlID="TXT_Gender" Text="Gender"></asp:Label>
					  <asp:DropDownList ID="TXT_Gender" class="form-control" runat="server">
							<asp:ListItem disabled="disabled" selected="selected" hidden="hidden" Value="-1">- Select One -</asp:ListItem>
							<asp:ListItem>Male</asp:ListItem>
							<asp:ListItem>Female</asp:ListItem>
						</asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TXT_Gender" ErrorMessage="Please select an answer." Display="Dynamic" CssClass="alert alert-danger" InitialValue="-1"></asp:RequiredFieldValidator>
					</div> 
				</div> 
				<hr>
				<div class="row">
					<div class="col-md-12">
						<asp:Label ID="Label14" runat="server" AssociatedControlID="TXT_InvestigatorLevel" Text="Investigator Level"></asp:Label>
					  <asp:DropDownList ID="TXT_InvestigatorLevel" class="form-control" runat="server">
							<asp:ListItem disabled="disabled" selected="selected" hidden="hidden" Value="-1">- Select One -</asp:ListItem>
							<asp:ListItem>Junior Investigator</asp:ListItem>
							<asp:ListItem>Mid-level Investigator</asp:ListItem>
							<asp:ListItem>Senior Investigator</asp:ListItem>
						</asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXT_InvestigatorLevel" ErrorMessage="Please select an answer." Display="Dynamic" CssClass="alert alert-danger" InitialValue="-1"></asp:RequiredFieldValidator>
					
						<asp:Label ID="Label15" runat="server" AssociatedControlID="TXT_FieldOfExpertise" Text="Field of Expertise (e.g. obesity, palliative care, cancer care delivery)"></asp:Label>
					  <asp:TextBox ID="TXT_FieldOfExpertise" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TXT_FieldOfExpertise" Display="Dynamic" ErrorMessage="Please enter a field of expertise." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <p><strong>Research Areas of Interest</strong></p>
                        <p>All trainees are sorted into small groups based on their submitted research proposals. During the in-person meeting there may be additional opportunities for activity and interaction based more broadly on research area or interest. Please select two areas of interest from the below options: </p>
                    </div>
                </div>
                <div class="row">
					<div class="col-md-7">
                    	<asp:Label ID="Label16" runat="server" AssociatedControlID="TXT_Continuum" Text="Cancer Control Continuum (select no more than two)"></asp:Label>
					  <asp:CheckBoxList ID="TXT_Continuum" runat="server">
							<asp:ListItem>Prevention</asp:ListItem>
							<asp:ListItem>Detection</asp:ListItem>
							<asp:ListItem>Diagnosis</asp:ListItem>
							<asp:ListItem>Treatment</asp:ListItem>
							<asp:ListItem>Survivorship</asp:ListItem>
							<asp:ListItem>Palliative</asp:ListItem>
						</asp:CheckBoxList>
                        <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="Select no more than two." Display="Dynamic" CssClass="alert alert-danger alert-inline"></asp:CustomValidator>
	                </div>
                    <div class="col-md-5">	
						<asp:Label ID="Label24" runat="server" AssociatedControlID="TXT_Sector" Text="Sector (select no more than two)"></asp:Label>
					  <asp:CheckBoxList ID="TXT_Sector" runat="server">
							<asp:ListItem>Healthcare Delivery</asp:ListItem>
							<asp:ListItem>Oncology</asp:ListItem>
							<asp:ListItem>Primary Care</asp:ListItem>
							<asp:ListItem>Workplace</asp:ListItem>
							<asp:ListItem>Decision Making</asp:ListItem>
							<asp:ListItem>Communication</asp:ListItem>
							<asp:ListItem>Community (school, church, etc.)</asp:ListItem>
							<asp:ListItem>Policy</asp:ListItem>
						</asp:CheckBoxList>
                        <asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="Select no more than two." Display="Dynamic" CssClass="alert alert-danger alert-inline"></asp:CustomValidator>                        
                    </div>
				</div>
                <div class="row">
					<div class="col-md-7">
                        <asp:Label ID="Label17" runat="server" AssociatedControlID="TXT_Populations" Text="Population(s) (select no more than two)"></asp:Label>
					    <asp:CheckBoxList ID="TXT_Populations" runat="server">
							<asp:ListItem>Age (Include text field for specification e.g. children, etc)</asp:ListItem>
							<asp:ListItem>Health Disparities/Underserved (include text field if desired)</asp:ListItem>
							<asp:ListItem>Rural</asp:ListItem>
							<asp:ListItem>Sexual Gender Minority</asp:ListItem>
						</asp:CheckBoxList>
                        <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="Select no more than two." Display="Dynamic" CssClass="alert alert-danger alert-inline"></asp:CustomValidator>                        
                    </div>
                    <div class="col-md-5">
                      <asp:Label ID="Label25" runat="server" AssociatedControlID="TXT_Methods" Text="Methods (select no more than two)"></asp:Label>
					  <asp:CheckBoxList ID="TXT_Methods" runat="server">
							<asp:ListItem>Qualitative</asp:ListItem>
							<asp:ListItem>Mixed</asp:ListItem>
							<asp:ListItem>Hybrid</asp:ListItem>
						</asp:CheckBoxList>
                        <asp:CustomValidator ID="CustomValidator8" runat="server" ErrorMessage="Select no more than two." Display="Dynamic" CssClass="alert alert-danger alert-inline"></asp:CustomValidator>
                    </div>
				</div>


				<hr>
				<div class="row">
					<div class="col-md-12">
						<h3>Supporting Documents</h3>
						<p>Please be sure to <i>name all your files</i> with your last name followed by an underscore and the type of document. All documents must be either MS Word or Adobe PDF files and should not exceed 1 MB in file size.</p>
						
						<asp:Label ID="Label18" runat="server" AssociatedControlID="UP_PersonalStatement_File" Text="Personal Statement To Upload"></asp:Label>
						<asp:FileUpload ID="UP_PersonalStatement_File" class="form-control" runat="server" />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="UP_PersonalStatement_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_PersonalStatement_File" runat="server" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert alert-danger" />
						<asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="UP_PersonalStatement_File" Display="Dynamic" ErrorMessage="File size should not be greater than 1 MB." CssClass="alert alert-danger" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
						
						<asp:Label ID="Label19" runat="server" AssociatedControlID="UP_LettersOfRec_File" Text="Letters of Recommendation To Upload"></asp:Label>
						<asp:FileUpload ID="UP_LettersOfRec_File" class="form-control" runat="server" />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="UP_LettersOfRec_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_LettersOfRec_File" runat="server" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert alert-danger" />
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="UP_LettersOfRec_File" Display="Dynamic" ErrorMessage="File size should not be greater than 1 MB." CssClass="alert alert-danger" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
						
						<asp:Label ID="Label20" runat="server" AssociatedControlID="UP_Curriculum_File" Text="Curriculum Vitae To Upload"></asp:Label>
						<asp:FileUpload ID="UP_Curriculum_File" class="form-control" runat="server" />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="UP_Curriculum_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_Curriculum_File" runat="server" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert alert-danger" />
						<asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="UP_Curriculum_File" Display="Dynamic" ErrorMessage="File size should not be greater than 1 MB." CssClass="alert alert-danger" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
						
						<asp:Label ID="Label21" runat="server" AssociatedControlID="UP_ConceptPaper_File" Text="Concept Paper To Upload"></asp:Label>
						<asp:FileUpload ID="UP_ConceptPaper_File" class="form-control" runat="server" />
						<asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="UP_ConceptPaper_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_ConceptPaper_File" runat="server" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert alert-danger" />
						<asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="UP_ConceptPaper_File" Display="Dynamic" ErrorMessage="File size should not be greater than 1 MB." CssClass="alert alert-danger" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
						
						<hr>
						<asp:Button ID="BTN_UploadClicked" class="btn btn-default btn-inline" runat="server" Text="Submit Application" /><br>
						<div class="spacer-20"></div>
					</div> 
				</div>

                <script type="text/javascript">
                    function ValidateRaceCheckBoxList(sender, args) {
                        var checkBoxList = document.getElementById("<%=TXT_Race.ClientID %>");
                        var checkboxes = checkBoxList.getElementsByTagName("input");
                        var isValid = false;
                        for (var i = 0; i < checkboxes.length; i++) {
                            if (checkboxes[i].checked) {
                                isValid = true;
                                break;
                            }
                        }

                        var inputfield = document.getElementById("<%=TXT_Race_other.ClientID %>");
                        if ($(inputfield).val() == '0' || $(inputfield).val() == '' || $(inputfield).val() == 'undefined' || $(inputfield).val() == null) {

                        }
                        else {
                            isValid = true;
                        }

                        args.IsValid = isValid;
                    }
                </script>
			</form> 
	  </div> <!-- /.col-md-9 -->
		<div class="col-md-3 col-md-pull-9">
			<div class="sidebar-nav">
				<h2 class="hidden-xs hidden-sm">Section Menu</h2>
				<div class="navbar-header">
					<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#section-menu-responsive" aria-controls="section-menu-responsive" aria-expanded="false">
						<div class="nav-hamburger">
							<span class="sr-only">Toggle Section Menu</span>
							<span class="glyphicon glyphicon-th"></span>
						</div> <!-- /.nav-hamburger -->
						<div class="nav-menu-title">Section Menu</div>
					</button>
				</div> <!-- /.navbar-header -->
				<nav id="section-menu-responsive" class="navbar-collapse collapse" role="navigation" aria-expanded="false">
					<ul class="nav">
						<li><a href="index.html">Welcome to TIDIRC</a></li>
						<li><a href="eligibility.html">Participant Eligibility Requirements &amp; Application Procedure</a></li>
                  		<li class="active"><a href="application.aspx">TIDIRC Application</a></li>
                  		<li><a href="faqs.html">FAQ</a></li>
					</ul>
				</nav>
			</div>
            <div class="spacer-20"></div><!-- /.sidebar -->
		</div> 
	</div> 
</div> <!-- /.container -->
<!-- end intro area -->		
</main> <!-- /#main-content -->

<footer role="contentinfo">
<div class="lightgray-row update-row">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<p class="update"><span class="bold">Last Updated:</span> November 28, 2018</p>
		</div> <!-- /.col-lg-12 -->
	</div> 
</div> <!-- /.container -->
</div> <!-- /.lightgray-row -->
<div class="container">
	<div class="row links">
		<div class="col-md-3">
			<ul class="list-unstyled program-links">
                <li><h2>Implementation Science</h2></li>
				<li><a href="/IS/index.html">IS Home</a></li>
				<li><a href="/IS/funding.html">Funding Opportunities</a></li>
				<li><a href="/IS/training-education/index.html">Training &amp; Education</a></li>
				<li><a href="/IS/tools/index.html">Research &amp; Practice Tools</a></li>
				<li><a href="/IS/about.html">About IS</a></li>
			</ul>
		</div> 
		<div class="col-md-3">
			<ul class="list-unstyled dccps-links">
				<li><h2>DCCPS</h2></li>
				<li><a href="/">DCCPS Home</a></li>
				<li><a href="/program_areas.html">Program Areas</a></li> 
				<li><a href="/current_research.html">Research Portfolios</a></li>
				<li><a href="/funding.html">Funding Opportunities</a></li>
				<li><a href="/cancer_resources.html">Publications &amp; Data</a></li>
				<li><a href="/research-emphasis/index.html">Research Emphasis</a></li> 
				<li><a href="/od/index.html">About DCCPS</a></li> 
			</ul>
		</div> 
		<div class="col-md-3">
			<ul class="list-unstyled nih-links">
				<li><h2>Cancer.gov</h2></li>
				<li><a href="https://www.cancer.gov/contact">Contact Us</a></li>
				<li><a href="https://www.cancer.gov/policies">Policies</a></li>
				<li><a href="https://www.cancer.gov/policies/disclaimer">Disclaimer</a></li>
				<li><a href="https://www.cancer.gov/policies/accessibility">Accessibility</a></li>
				<li><a href="https://www.cancer.gov/policies/foia">FOIA</a></li>
			</ul>
		</div> 
		<div class="col-md-3">
			<ul class="list-unstyled gov-links">
				<li><a href="https://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
				<li><a href="https://www.nih.gov/">National Institutes of Health</a></li>
				<li><a href="https://www.cancer.gov/">National Cancer Institute</a></li>
				<li><a href="https://www.usa.gov/">USA.gov</a></li>
			</ul>
		</div> 
	</div> 
</div> <!-- /.container -->
<div class="lightgray-row">
<div class="container">
	<div class="row">
	  <div class="col-md-3 col-sm-6">
	    <div class="livehelp"> <a href="https://livehelp.cancer.gov"><img src="../../../images/livehelp_2x.png" alt="LiveHelp Cancer.gov"></a> <a href="tel:1-800-422-6237"> 1-800-4-CANCER
	      <div class="livehelp-tel">(1-800-422-6237)</div>
	      </a> </div>
	    <!-- /.livehelp -->
	    </div>
	  
		<div class="col-md-9 col-sm-6">
			<div class="tagline-container">
				<p class="tagline">NIH...Turning Discovery Into Health<sup>&reg;</sup></p>
			</div> <!-- /.tagline-container -->
		</div> 
	</div> 
</div> <!-- /.container -->
</div> <!-- /.lightgray-row -->
</footer>
<!-- begin back to top button -->
<div class="vertical flip-container" ontouchstart="this.classList.toggle('hover');">
    <a href="#" class="scrollToTop flipper">
        <div class="front"></div>
        <div class="back"></div>
        <span class="sr-only">Back to Top</span>
	</a>
</div>
<!-- end back to top button -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/IS/js/bootstrap.min.js"></script>
<!-- Dropdown Hover or Click: https://github.com/CWSpear/bootstrap-hover-dropdown -->
<script src="/IS/js/bootstrap-hover-dropdown.min.js"></script>
<!-- Custom jQuery -->
<script src="/IS/js/scripts-min.js"></script>
<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>