<%@ Page Language="VB" AutoEventWireup="false" CodeFile="flashe-subscribe.aspx.vb" Inherits="subscribe" %>

<!doctype html>
<html lang="en">
<head>
<script src="//assets.adobedtm.com/f1bfa9f7170c81b1a9a9ecdcc6c5215ee0b03c84/satelliteLib-339f9157d73ce92dfb58c341869b41fef294030a.js"></script>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- SEO -->
<meta name="description" content="" />
	
<meta name="author" content="National Cancer Institute, Division of Cancer Control and Population Science">
<title>FLASHE Listserv - Behavioral Research Program - Cancer Control and Population Sciences</title>
    
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
<!--[if lte IE 9]>
	<link href="../brp/css/ie-styles-min.css" rel="stylesheet" type="text/css">
<![endif]-->
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->
  
</head>

<!-- Set body class to program name in order for correct program colors to be applied -->
<body class="brp">
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
					<img src="../../images/nci-dccps-logo_2x.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-large">
					<img src="../../images/nci-dccps-logo-mobile.png" alt="National Cancer Institute, Division of Cancer Control & Population Sciences" class="nci-logo-small">
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
				<div class="program-name">Behavorial Research Program</div>
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
							<li><a href="/brp/funding/funding-opportunities.html">Apply for Behavioral Grants</a></li>
							<li><a href="/brp/funding/sample-application.html">Sample Grant Applications</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Priority Areas <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/priority-areas/">Priority Areas <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/tcrb/">Tobacco Control</a></li>
							<li><a href="/brp/hbrb/dietary_behaviors.html">Diet, Weight and Physical Activity</a></li>
							<li><a href="/brp/hbrb/sun-protection.html">Sun Protection</a></li>
							<li><a href="/brp/hcirb/hpv-vaccination.html">HPV Vaccination</a></li>
							<li><a href="/brp/bbpsb/affective_science.html">Affect and Emotion</a></li>
							<li><a href="/brp/bbpsb/cognitive-changes/perception.html">Cognition</a></li>
							<li><a href="/brp/hcirb/social-media.html">Social Media</a></li>
							<li><a href="/brp/priority-areas/big-data.html">Integrative Data Analysis</a></li>
						</ul>
					</li>
                    <li><a href="/brp/research/index.html">Research Resources and Tools</a></li>
					<li class="dropdown active">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Program Branches <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/program-branches.html">Program Branches <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/bbpsb/index.html">Basic Biobehavioral and Psychological Sciences Branch (BBPSB)</a></li>
							<li class="active"><a href="/brp/hbrb/index.html">Health Behaviors Research Branch (HBRB)</a></li>
							<li><a href="/brp/hcirb/index.html">Health Communication and Informatics Research Branch (HCIRB)</a></li>
							<li><a href="/brp/tcrb/index.html">Tobacco Control Research Branch (TCRB)</a></li>
						</ul>
					</li>
					<li class="dropdown">
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
    		<h1>FLASHE Listserv</h1>
			</div> <!-- /.col-lg-12 -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</div> <!-- /.page-title -->
<div class="page-breadcrumb">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
                <ul class="breadcrumb">
                    <li><a href="/brp/">Home</a></li>
                    <li><a href="/brp/program-branches.html">Program Branches</a></li>
                    <li><a href="/brp/hbrb/index.html">HBRB</a></li>
					<li><a href="/brp/hbrb/key-initiatives.html">Key Initiatives</a></li>
                    <li><a href="/brp/hbrb/flashe.html">FLASHE</a></li>
                    <li>FLASHE Listserv</li>
                  </ul> 
                
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<div class="container">
<!-- intro area -->	
	<div class="row">
		<div class="col-md-9 col-md-push-3">
        	<p>Use the following form to subscribe or unsubscribe from the FLASHE Listserv.</p>
			<div id="thankyou" class="email-validation-message" runat="server"></div>
				<form id="frm_SubScribe" runat="server">
					<div class="form-group">
						<asp:Label ID="Label1" runat="server" AssociatedControlID="txtemailTerms" Text="E-mail Address"></asp:Label>
						<asp:TextBox ID="txtemailTerms" runat="server" class="form-control"  size="28" type="text" placeholder="example@email.com"></asp:TextBox>
						<div class="form-type-radio radio">
							<label for="RD_Sub" class="control-label">
							<asp:RadioButton ID="RD_Sub" runat="server" GroupName="ISsubunsub" />
							<div class="control__indicator"></div>
							Subscribe</label>
						</div> <!-- /.input-line -->
						<div class="form-type-radio radio">
							<label for="RD_Unsub" class="control-label">
							<asp:RadioButton ID="RD_Unsub" runat="server" GroupName="ISsubunsub" />
							<div class="control__indicator"></div>
							Unsubscribe</label>
						</div> <!-- /.input-line -->
						<asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn btn-default" type="button" />
					</div> <!-- /.form-group -->
					<asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" CssClass="alert" ErrorMessage="Please check the box to proceed."
					 ForeColor="Red"></asp:CustomValidator>

					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailTerms"
					Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert"></asp:RequiredFieldValidator>
					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailTerms"
					Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert"
					ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
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
						<div class="nav-menu-title">HBRB Section Menu</div>
					</button>
				</div> <!-- /.navbar-header -->
				<nav id="section-menu-responsive" class="navbar-collapse collapse" role="navigation" aria-expanded="false">
					<ul class="nav">
                    	<li class="active"><a href="/brp/hbrb/key-initiatives.html">HBRB Key Initiatives</a></li>
						<li><a href="https://staffprofiles.cancer.gov/brp/prgmStaffHome.do?grpId=52811&pposId=1421424&cposId=1421449">HBRB Staff</a></li>
						<li><a href="/brp/funding/funding-opportunities.html#hbrb">HBRB Funding Opportunities</a></li>
                   	</ul>
				</nav>
			</div>
            <div class="spacer-20"></div>
		</div> <!-- /.col-md-3 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->	

<!-- End the Connect Section -->		
</main> <!-- /#main-content -->
	

<footer role="contentinfo">
<div class="lightgray-row update-row">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<p class="update"><span class="bold">Last Updated:</span> August 8, 2017</p>
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
	    <div class="livehelp"> <a href="https://livehelp.cancer.gov"><img src="/brp/images/livehelp_2x.png" alt="Contact information for NCI's LiveHelp service, https://livehelp.cancer.gov"></a> <a href="tel:1-800-422-6237"> 1-800-4-CANCER
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="/brp/js/bootstrap.min.js"></script>
<!-- Dropdown Hover or Click: https://github.com/CWSpear/bootstrap-hover-dropdown -->
<script src="/brp/js/bootstrap-hover-dropdown.min.js"></script>
<!-- Custom jQuery -->
<script src="/brp/js/scripts-min.js"></script>
<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>