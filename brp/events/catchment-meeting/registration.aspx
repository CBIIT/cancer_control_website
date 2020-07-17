<%@ Page Language="VB" AutoEventWireup="false" CodeFile="registration.aspx.vb" Inherits="CAA_Testing_testReg" %>

<!doctype html>
<html lang="en">
<head>
<script src="//assets.adobedtm.com/f1bfa9f7170c81b1a9a9ecdcc6c5215ee0b03c84/satelliteLib-339f9157d73ce92dfb58c341869b41fef294030a.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-P5PMZ88');</script>
<!-- End Google Tag Manager -->
<!-- SEO -->
<meta name="description" content="">
<meta name="author" content="National Cancer Institute, Division of Cancer Control and Population Science">
    <title>Meeting Registration | Cancer and Accelerated Aging: Advancing Research for Healthier Survivors | DCCPS/NCI/NIH</title>
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
<link href="/brp/css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts Source Sans & Merriweather -->
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i|Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<!-- Styles.css is compiled from LESS files -->
<link href="/brp/css/styles.css" rel="stylesheet">
<link href="/css/application.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
<!--[if lte IE 9]>
	<link href="/css/ie-styles-min.css" rel="stylesheet" type="text/css">
<![endif]-->
</head>

<body class="brp">
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P5PMZ88"
height="0" width="0" style="display:none;visibility:hidden" title="Google Tag Manager"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
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
					<img src="/brp/images/nci-dccps-logo_2x.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-large">
					<img src="/brp/images/nci-dccps-logo-mobile.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-small">
				</a>
			</div> <!-- /.col-lg-12 -->
		</div> <!-- /.nci-logo-row -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->
	</div> <!-- /.nci-logo-area -->
	<!-- End NCI-DCCPS logo for site -->
	<!-- Program Area Color Banner -->
	<div class="program-banner">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="program-name">Behavioral Research Program</div>
			</div> <!-- /.col-lg-12 -->
		</div> <!-- /.row -->
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
					<li><a href="/brp/">BRP Home</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Funding Opportunities <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/funding/">Funding Opportunities <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/funding/funding-opportunities.html">Find Funding Opportunities</a></li>
							<li><a href="/brp/funding/apply.html">How to Apply</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Priority Areas <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/priority-areas/">Priority Areas <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/tcrb/">Tobacco Control</a></li>
							<li><a href="/brp/hbrb/dietary_behaviors.html">Diet, Weight, and Physical Activity</a></li>
							<li><a href="/brp/hbrb/sun-protection.html">Sun Protection</a></li>
							<li><a href="/brp/bbpsb/affect-emotion-and-cognition.html">Decision-Making, Affect, and Emotion</a></li>
							<li><a href="/brp/hcirb/social-media.html">Social Media</a></li>
							<li><a href="/brp/priority-areas/big-data.html">Integrative Data Analysis</a></li>
							<li><a href="/brp/bbpsb/aging-trajectories.html">Aging Trajectories in Cancer Survivors</a></li>
							<li><a href="/brp/bbpsb/cognitive-changes/perception.html">Perception, Attention, and Cognition</a></li>
						</ul>
					</li>
					<li><a href="/brp/research/index.html">Research Resources and Tools</a></li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Program Branches <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/program-branches.html">Program Branches <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/bbpsb/index.html">Basic Biobehavioral and Psychological Sciences Branch (BBPSB)</a></li>
							<li><a href="/brp/hbrb/index.html">Health Behaviors Research Branch (HBRB)</a></li>
							<li><a href="/brp/hcirb/index.html">Health Communication and Informatics Research Branch (HCIRB)</a></li>
							<li><a href="/brp/tcrb/index.html">Tobacco Control Research Branch (TCRB)</a></li>
						</ul>
					</li>
					<li class="dropdown active">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">About BRP <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/about.html">About BRP <span class="sr-only">Landing Page</span></a></li>
							<li><a href="https://staffprofiles.cancer.gov/brp/prgmStaffHome.do">Staff</a></li>
							<li><a href="/brp/career_training.html">Career and Training</a></li>
							<li><a href="/brp/events.html">Events</a></li>
							<li><a href="/funding-foa-applicants.html">Webinars</a></li>
							<li><a href="/brp/e-newsletter/index.html">BRP Scientific News</a></li>
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
				<h1>Meeting Registration</h1>
			</div> <!-- /.col-lg-12 -->
		</div> <!-- close /.row -->
	</div> <!-- close /.container -->
</div> <!-- /.page-title -->
<div class="page-breadcrumb">
    <div class="container">
	    <div class="row">
		    <div class="col-lg-12">
                  <ol class="breadcrumb">
                        <li><a href="/brp/index.html">Home</a></li>
                        <li><a href="index.html">Population Health Assessment in Cancer Center Catchment Areas Meeting</a></li>
                        <li>Meeting Registration</li>
                  </ol>
		    </div> <!-- /.col-lg-12 -->
	    </div> <!-- /.row -->
	</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <form id="form1" runat="server" class="form-caa">
			<!--<asp:Literal ID="LIT_FK_Event" Text="2" runat="server"></asp:Literal>-->
			<div class="row">
				<div class="col-sm-9">
					<p>The registration period has closed. If you have any questions please <a href="mailto:anna.gaysynsky@nih.gov">email us</a>.</p>
				</div>
            </div>
				<!--
            <div class="row">
				<div class="col-sm-12">
					<p class="pull-right small">OMB No.: 0925-0740<br>
					  Expiration Date:&nbsp; 07/31/2022 </p>
					<p class="small" style="clear: both;"><em>Collection of this information is authorized by The Public  Health Services Act, Section 410 (42 U.S.C. § 285 : US Code - Section 285:  Purpose of Institute). Rights of applicants are protected by The Privacy Act of  1974. Participation is voluntary, and there are no penalties for not submitting  an abstract or withdrawing an abstract from consideration at any time. Refusal  to participate will not affect your benefits in any way. The information  collected will be kept private to the extent provided by law and only made  available to other meeting attendees. The information gathered through this  registration page will help the conference organizers plan the meeting.</em></p>
					  <p class="small"><em>Public reporting burden for this collection of information is estimated to  average 6 minutes per response, including the time for reviewing instructions,  searching existing data sources, gathering and maintaining the data needed, and  completing and reviewing the collection of information. An agency may not  conduct or sponsor, and a person is not required to respond to, a collection of  information unless it displays a currently valid OMB control number. Send  comments regarding this burden estimate or any other aspect of this collection  of information, including suggestions for reducing this burden to: NIH, Project  Clearance Branch, 6705 Rockledge Drive, MSC 7974, Bethesda, MD 20892-7974,  ATTN: PRA #0925-0740.  Do not return the completed form to this address.</em></p>
					<p><strong>Registration for this meeting will be open until Friday, February 28, 2020, or until maximum attendance capacity is reached.</strong></p>
					<p>Meeting  registration is free.</p>
				<p><b>*</b> Indicates required field</p>
				</div>
            </div>
            <div class="spacer-20"></div>
			
            <div class="row">
					<div class="col-md-5">
						<asp:Label ID="Label1" runat="server" AssociatedControlID="TXT_FirstName" Text="First Name *"></asp:Label>
					  <asp:TextBox ID="TXT_FirstName" class="form-control" runat="server"></asp:TextBox> 
						<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_FirstName" Display="Dynamic" ErrorMessage="Please enter a first name." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
					<div class="col-md-2">
						<asp:Label ID="Label2" runat="server" AssociatedControlID="TXT_MiddleInitial" Text="Middle Initial"></asp:Label>
					    <asp:TextBox ID="TXT_MiddleInitial" class="form-control" runat="server"></asp:TextBox>
					</div>
					<div class="col-md-5">
						<asp:Label ID="Label5" runat="server" AssociatedControlID="TXT_LastName" Text="Last Name *"></asp:Label>
					  <asp:TextBox ID="TXT_LastName" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXT_LastName" Display="Dynamic" ErrorMessage="Please enter a last name." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div> 
            </div>
            <div class="spacer-20"></div>
            <div class="row">
                    <div class="col-md-5">
						<asp:Label ID="Label16" runat="server" AssociatedControlID="TXT_Degree" Text="Degree(s) (e.g., MD and PhD) *"></asp:Label>
					  <asp:TextBox ID="TXT_Degree" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TXT_Degree" Display="Dynamic" ErrorMessage="Please enter degree." CssClass="alert alert-danger"></asp:RequiredFieldValidator>
					</div>
					<div class="col-md-7">
						<asp:Label ID="Label4" runat="server" AssociatedControlID="DDList_Organization" Text="Institutional Affiliation *"></asp:Label>

                        <asp:DropDownList ID="DDList_Organization" runat="server" Width="100%">
                             <asp:ListItem Text="--Select--" Value="" />
                             <asp:ListItem Text="National Cancer Institute" Value="National Cancer Institute" />
                             <asp:ListItem Text="ICF" Value="ICF" />
                             <asp:ListItem Text="Abramson Cancer Center" Value="Abramson Cancer Center" />
                             <asp:ListItem Text="Albert Einstein Cancer Center" Value="Albert Einstein Cancer Center" />
                             <asp:ListItem Text="Alvin J. Siteman Cancer Center" Value="Alvin J. Siteman Cancer Center" />
                             <asp:ListItem Text="Arizona Cancer Center" Value="Arizona Cancer Center" />
                             <asp:ListItem Text="Case Comprehensive Cancer Center" Value="Case Comprehensive Cancer Center" />
                             <asp:ListItem Text="Chao Family Comprehensive Cancer Center " Value="Chao Family Comprehensive Cancer Center " />
                             <asp:ListItem Text="City of Hope Comprehensive Cancer Center" Value="City of Hope Comprehensive Cancer Center" />
                             <asp:ListItem Text="Cold Spring Harbor Laboratory Cancer Center" Value="Cold Spring Harbor Laboratory Cancer Center" />
                             <asp:ListItem Text="Dan L Duncan Comprehensive Cancer Center" Value="Dan L Duncan Comprehensive Cancer Center" />
                             <asp:ListItem Text="Dana-Farber/Harvard Cancer Center" Value="Dana-Farber/Harvard Cancer Center" />
                             <asp:ListItem Text="David H. Koch Institute for Integrative Cancer Research at MIT" Value="David H. Koch Institute for Integrative Cancer Research at MIT" />
                             <asp:ListItem Text="Duke Cancer Institute" Value="Duke Cancer Institute" />
                             <asp:ListItem Text="Fox Chase Cancer Center" Value="Fox Chase Cancer Center" />
                             <asp:ListItem Text="Fred and Pamela Buffett Cancer Center" Value="Fred and Pamela Buffett Cancer Center" />
                             <asp:ListItem Text="Fred Hutchinson/University of Washington Cancer Consortium" Value="Fred Hutchinson/University of Washington Cancer Consortium" />
                             <asp:ListItem Text="Georgetown Lombardi Comprehensive Cancer Center" Value="Georgetown Lombardi Comprehensive Cancer Center" />
                             <asp:ListItem Text="Harold C. Simmons Comprehensive Cancer Center" Value="Harold C. Simmons Comprehensive Cancer Center" />
                             <asp:ListItem Text="Herbert Irving Comprehensive Cancer Center" Value="Herbert Irving Comprehensive Cancer Center" />
                             <asp:ListItem Text="Holden Comprehensive Cancer Center" Value="Holden Comprehensive Cancer Center" />
                             <asp:ListItem Text="Hollings Cancer Center" Value="Hollings Cancer Center" />
                             <asp:ListItem Text="Huntsman Cancer Institute" Value="Huntsman Cancer Institute" />
                             <asp:ListItem Text="Indiana University Melvin and Bren Simon Cancer Center" Value="Indiana University Melvin and Bren Simon Cancer Center" />
                             <asp:ListItem Text="Jonsson Comprehensive Cancer Center" Value="Jonsson Comprehensive Cancer Center" />
                             <asp:ListItem Text="Knight Cancer Institute" Value="Knight Cancer Institute" />
                             <asp:ListItem Text="Laura and Isaac Perlmutter Cancer Center at NYU Langone Health" Value="Laura and Isaac Perlmutter Cancer Center at NYU Langone Health" />
                             <asp:ListItem Text="Markey Cancer Center" Value="Markey Cancer Center" />
                             <asp:ListItem Text="Masonic Cancer Center" Value="Masonic Cancer Center" />
                             <asp:ListItem Text="Massey Cancer Center" Value="Massey Cancer Center" />
                             <asp:ListItem Text="Mayo Clinic Cancer Center" Value="Mayo Clinic Cancer Center" />
                             <asp:ListItem Text="Mays Cancer Center at UT Health San Antonio" Value="Mays Cancer Center at UT Health San Antonio" />
                             <asp:ListItem Text="Memorial Sloan-Kettering Cancer Center" Value="Memorial Sloan-Kettering Cancer Center" />
                             <asp:ListItem Text="Moffitt Cancer Center" Value="Moffitt Cancer Center" />
                             <asp:ListItem Text="Norris Cotton Cancer Center at Dartmouth" Value="Norris Cotton Cancer Center at Dartmouth" />
                             <asp:ListItem Text="O&rsquo;Neal Comprehensive Cancer Center" Value="O&rsquo;Neal Comprehensive Cancer Center" />
                             <asp:ListItem Text="Purdue University Center for Cancer Research" Value="Purdue University Center for Cancer Research" />
                             <asp:ListItem Text="Robert H. Lurie Comprehensive Cancer Center" Value="Robert H. Lurie Comprehensive Cancer Center" />
                             <asp:ListItem Text="Roswell Park Comprehensive Cancer Center" Value="Roswell Park Comprehensive Cancer Center" />
                             <asp:ListItem Text="Rutgers Cancer Institute of New Jersey" Value="Rutgers Cancer Institute of New Jersey" />
                             <asp:ListItem Text="Salk Institute Cancer Center" Value="Salk Institute Cancer Center" />
                             <asp:ListItem Text="Sanford Burnham Prebys Medical Discovery Institute" Value="Sanford Burnham Prebys Medical Discovery Institute" />
                             <asp:ListItem Text="Sidney Kimmel Cancer Center at Thomas Jefferson University" Value="Sidney Kimmel Cancer Center at Thomas Jefferson University" />
                             <asp:ListItem Text="Sidney Kimmel Comprehensive Cancer Center" Value="Sidney Kimmel Comprehensive Cancer Center" />
                             <asp:ListItem Text="St. Jude Children's Research Hospital" Value="St. Jude Children's Research Hospital" />
                             <asp:ListItem Text="Stanford Cancer Institute (SCI)" Value="Stanford Cancer Institute (SCI)" />
                             <asp:ListItem Text="Stephenson Cancer Center" Value="Stephenson Cancer Center" />
                             <asp:ListItem Text="The Barbara Ann Karmanos Cancer Institute" Value="The Barbara Ann Karmanos Cancer Institute" />
                             <asp:ListItem Text="The Jackson Laboratory Cancer Center" Value="The Jackson Laboratory Cancer Center" />
                             <asp:ListItem Text="The Ohio State University Comprehensive Cancer Center" Value="The Ohio State University Comprehensive Cancer Center" />
                             <asp:ListItem Text="The Tisch Cancer Institute at Mount Sinai" Value="The Tisch Cancer Institute at Mount Sinai" />
                             <asp:ListItem Text="The University of Chicago Comprehensive Cancer Center" Value="The University of Chicago Comprehensive Cancer Center" />
                             <asp:ListItem Text="The University of Kansas Cancer Center" Value="The University of Kansas Cancer Center" />
                             <asp:ListItem Text="The University of Texas MD Anderson Cancer Center" Value="The University of Texas MD Anderson Cancer Center" />
                             <asp:ListItem Text="The Wistar Institute Cancer Center" Value="The Wistar Institute Cancer Center" />
                             <asp:ListItem Text="UC Davis Comprehensive Cancer Center" Value="UC Davis Comprehensive Cancer Center" />
                             <asp:ListItem Text="UC San Diego Moores Cancer Center" Value="UC San Diego Moores Cancer Center" />
                             <asp:ListItem Text="UCSF Helen Diller Family Comprehensive Cancer Center" Value="UCSF Helen Diller Family Comprehensive Cancer Center" />
                             <asp:ListItem Text="UNC Lineberger Comprehensive Cancer Center" Value="UNC Lineberger Comprehensive Cancer Center" />
                             <asp:ListItem Text="University of Colorado Cancer Center" Value="University of Colorado Cancer Center" />
                             <asp:ListItem Text="University of Hawaii Cancer Center" Value="University of Hawaii Cancer Center" />
                             <asp:ListItem Text="University of Maryland Marlene and Stewart Greenebaum Comprehensive Cancer Center" Value="University of Maryland Marlene and Stewart Greenebaum Comprehensive Cancer Center" />
                             <asp:ListItem Text="University of Michigan Rogel Cancer Center" Value="University of Michigan Rogel Cancer Center" />
                             <asp:ListItem Text="University of New Mexico Cancer Center" Value="University of New Mexico Cancer Center" />
                             <asp:ListItem Text="University of Virginia Cancer Center" Value="University of Virginia Cancer Center" />
                             <asp:ListItem Text="University of Wisconsin Carbone Cancer Center" Value="University of Wisconsin Carbone Cancer Center" />
                             <asp:ListItem Text="UPMC Hillman Cancer Center" Value="UPMC Hillman Cancer Center" />
                             <asp:ListItem Text="USC Norris Comprehensive Cancer Center" Value="USC Norris Comprehensive Cancer Center" />
                             <asp:ListItem Text="Vanderbilt-Ingram Cancer Center" Value="Vanderbilt-Ingram Cancer Center" />
                             <asp:ListItem Text="Wake Forest Baptist Comprehensive Cancer Center" Value="Wake Forest Baptist Comprehensive Cancer Center" />
                             <asp:ListItem Text="Winship Cancer Institute" Value="Winship Cancer Institute" />
                             <asp:ListItem Text="Yale Cancer Center" Value="Yale Cancer Center" />
                             <asp:ListItem Text="Other" Value="Other" />
                        </asp:DropDownList>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DDList_Organization" Display="Dynamic" ErrorMessage="Please select an institutional affiliation" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                        <div id="otherInstitution">
                            <asp:Label ID="Label3" runat="server" AssociatedControlID="TXT_Institution_Other" Text="Other, please specify"></asp:Label>
					        <asp:TextBox ID="TXT_Institution_Other" class="form-control" runat="server"></asp:TextBox>
                        </div>
					</div> 
            </div>
            <div class="spacer-20"></div>
            <div class="row">
					<div class="col-md-6">
						<asp:Label ID="Label11" runat="server" AssociatedControlID="TXT_Email" Text="Email *"></asp:Label>
					  <asp:TextBox ID="TXT_Email" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TXT_Email" Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert alert-danger"></asp:RequiredFieldValidator> 
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Email" Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert alert-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br>
					</div> 
					<div class="col-md-6">
						<asp:Label ID="Label10" runat="server" AssociatedControlID="TXT_Phone" Text="Phone Number *"></asp:Label>
					  <asp:TextBox ID="TXT_Phone" class="form-control" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TXT_Phone" Display="Dynamic" ErrorMessage="Please enter a phone number." CssClass="alert alert-danger" ValidationExpression="^(\(?\s*\d{3}\s*[\)\-\.]?\s*)?[2-9]\d{2}\s*[\-\.]\s*\d{4}$"></asp:RequiredFieldValidator><br>
					</div>
            </div>
            <hr>

                <div class="row">
                    <div class="col-md-12">
                        <asp:Button ID="BTN_UploadClicked" class="btn btn-default btn-inline" runat="server" Text="Submit" />
                        <asp:Button ID="BTN_Cancel" CssClass="btn btn-default btn-inline" CausesValidation="false" runat="server" Text="Cancel" />
                    </div>
                </div>
                <div class="spacer-20"></div>-->
    </form>
        </div> <!-- /.col-md-9 -->
	</div> <!-- close /.row -->
</div> <!-- close /.container -->
	<div class="spacer-30"></div>
</main>

<footer role="contentinfo">
<div class="lightgray-row update-row">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<p class="update"><span class="bold">Last Updated:</span>March 2, 2020</p>
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.lightgray-row -->
<div class="container">
	<div class="row links">
		<div class="col-md-3">
			<ul class="list-unstyled program-links">
				<li><h2>Behavioral Research Program</h2></li>
				<li><a href="/brp/index.html">BRP Home</a></li>
				<li><a href="/brp/funding/">Funding Opportunities</a></li>
				<li><a href="/brp/priority-areas/">Priority Areas</a></li>
				<li><a href="/brp/research/index.html">Research Resources and Tools</a></li>
				<li><a href="/brp/program-branches.html">Program Branches</a></li>
				<li><a href="/brp/about.html">About BRP</a></li>
			</ul>
		</div> <!-- /.col-md-3 -->
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
		</div> <!-- /.col-md-3 -->
		<div class="col-md-3">
			<ul class="list-unstyled nih-links">
				<li><h2>Cancer.gov</h2></li>
				<li><a href="https://www.cancer.gov/contact">Contact Us</a></li>
				<li><a href="https://www.cancer.gov/policies">Policies</a></li>
				<li><a href="https://www.cancer.gov/policies/disclaimer">Disclaimer</a></li>
				<li><a href="https://www.cancer.gov/policies/accessibility">Accessibility</a></li>
				<li><a href="https://www.cancer.gov/policies/foia">FOIA</a></li>
				<li><a href="https://livehelp.cancer.gov">Help</a></li>
			</ul>
		</div> <!-- /.col-md-3 -->
		<div class="col-md-3">
			<ul class="list-unstyled gov-links">
				<li><a href="https://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
				<li><a href="https://www.nih.gov/">National Institutes of Health</a></li>
				<li><a href="https://www.cancer.gov/">National Cancer Institute</a></li>
				<li><a href="https://www.usa.gov/">USA.gov</a></li>
			</ul>
		</div> <!-- /.col-md-3 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
<div class="lightgray-row">
<div class="container">
	<div class="row">
	  <div class="col-md-3 col-sm-6">
	    <div class="livehelp"> <a href="https://livehelp.cancer.gov"><img src="../../images/livehelp_2x.png" alt="Contact information for NCI's LiveHelp service, https://livehelp.cancer.gov"></a> <a href="tel:1-800-422-6237"> 1-800-4-CANCER
	      <div class="livehelp-tel">(1-800-422-6237)</div>
	      </a> </div>
	    <!-- /.livehelp -->
	    </div>
	  <!-- /.col-md-3 -->
		<div class="col-md-9 col-sm-6">
			<div class="tagline-container">
				<p class="tagline">NIH...Turning Discovery Into Health<sup>&reg;</sup></p>
			</div> <!-- /.tagline-container -->
		</div> <!-- /.col-md-3 -->
	</div> <!-- /.row -->
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
<!-- javascript -->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/brp/js/bootstrap.min.js"></script>
<!-- Dropdown Hover or Click: https://github.com/CWSpear/bootstrap-hover-dropdown -->
<script src="/brp/js/bootstrap-hover-dropdown.min.js"></script>
<!-- Custom jQuery -->
<script src="/brp/js/scripts-min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#otherInstitution').css("display", "none");
    });

    $('#DDList_Organization').change(function() {
        if (this.value == 'Other') {
            $('#otherInstitution').css("display", "block");
        }
        else {
            $('#otherInstitution').css("display", "none");
        }
    });
</script>
<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>