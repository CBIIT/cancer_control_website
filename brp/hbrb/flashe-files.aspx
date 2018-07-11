<%@ Page Language="VB" AutoEventWireup="false" CodeFile="flashe-files.aspx.vb" Inherits="dataset" %>

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
<title>FLASHE Public Use Data Files and Supporting Documentation | BRP | DCCPS/NCI/NIH</title>
    
<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">
<!-- Default Favicons -->
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="icon" type="image/png" href="favicon.png">
<!-- Add to homescreen for Chrome on Android -->
<meta name="mobile-web-app-capable" content="yes">
<meta name="application-name" content="DCCPS">
<link rel="icon" sizes="192x192" href="images/touch/chrome-touch-icon-192x192.png">
<!-- Add to homescreen for Safari on iOS -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="default">
<meta name="apple-mobile-web-app-title" content="DCCPS">
<link rel="apple-touch-icon" href="images/touch/apple-touch-icon.png">
<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts Source Sans & Merriweather -->
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i|Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<!-- Styles.css is compiled from LESS files -->
<link href="../css/styles.css" rel="stylesheet">
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
							<li><a href="https://staffprofiles.cancer.gov/brp/granteeList.do">Featured Grantees</a></li>
						</ul>
					</li>
					<li class="dropdown">
						<a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Priority Areas <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li class="landing-page-link"><a href="/brp/priority-areas/">Priority Areas <span class="sr-only">Landing Page</span></a></li>
							<li><a href="/brp/tcrb/">Tobacco</a></li>
							<li><a href="/brp/hbrb/dietary_behaviors.html">Diet, Weight and Physical Activity</a></li>
							<li><a href="/brp/hbrb/sun-protection.html">Sun Protection</a></li>
							<li><a href="/brp/priority-areas/health-behaviors/hpv-vaccination.html">HPV Vaccination</a></li>
							<li><a href="/brp/bbpsb/affective_science.html">Affect and Emotion</a></li>
							<li><a href="/brp/bbpsb/cognitive-changes.html">Cognition</a></li>
							<li><a href="/brp/hcirb/social-media.html">Social Media</a></li>
							<li><a href="/brp/priority-areas/big-data.html">Integrative Data Analysis and Big Data</a></li>
						</ul>
					</li>
                    <li><a href="/brp/research/index.html">Data and Tools</a></li>
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
    		<h1>FLASHE Public Use Data Files and Supporting  Documentation </h1>
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
                    <li>FLASHE Data Terms of Use</li>
                  </ul> 
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<div class="container">
<!-- intro area -->	
	<div class="row">
		<div class="col-md-9 col-md-push-3">
        	<p class="intro">This page contains data files (available in SAS and SPSS formats), survey instruments, and other documentation to assist you in analyzing FLASHE data.</p>
			<h2 id="Adolescent">Adolescent and parent data</h2>
			<p>Adolescents ages 12-17 were surveyed about their diet, physical activity, and demographics. The results are saved in separate data sets that can be linked across files using participant or dyad identification numbers.</p>
			<ul class="inline-links">
				<li>Download adolescent demographic data (<a href="/brp/hbrb/docs/Teen-Demographic-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Teen-Demographic-SPSS.zip">SPSS</a>)</li>
				<li>Download adolescent diet data (<a href="/brp/hbrb/docs/Teen-Diet-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Teen-Diet-SPSS.zip">SPSS</a>) &ndash; Updated October 2017</li>
				<li>Download adolescent physical activity data (<a href="/brp/hbrb/docs/Teen-PA-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Teen-PA-SPSS.zip">SPSS</a>) &ndash; Added October 2017</li>
				<li>Download adolescent physical activity monitor data (coming soon!)</li>
			</ul>
			<p>Parents of adolescents were surveyed about diet, physical activity, and demographics. The results are saved in separate data sets that can be linked across files using participant or dyad identification numbers.</p>
			<ul class="inline-links">
				<li>Download parent demographic data (<a href="/brp/hbrb/docs/Parent-Demographic-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Parent-Demographic-SPSS.zip">SPSS</a>)</li>
				<li>Download parent diet data (<a href="/brp/hbrb/docs/Parent-Diet-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Parent-Diet-SPSS.zip">SPSS</a>) &ndash; Updated October 2017</li>
				<li>Download parent physical activity data (<a href="/brp/hbrb/docs/Parent-PA-SAS.zip">SAS</a>, <a href="/brp/hbrb/docs/Parent-PA-SPSS.zip">SPSS</a>) &ndash; Added October 2017</li>
			</ul>
			<p>A multiply imputed dataset is provided to facilitate analyses with eight variables in the parent physical activity survey that had a high percent of missing data. More information can be found in the FLASHE data users guide and methodology report.</p>
			<ul class="inline-links">
				<li>Download multiple imputation dataset (coming soon!)</li>
			</ul>
			<h2 id="Survey">Survey instruments</h2>
			<ul class="inline-links">
				<li>Adolescent demographic survey instrument (<a href="/brp/hbrb/docs/Teen_Demo_PUF_Instrument.pdf" target="_blank">PDF</a>)</li>
				<li>Adolescent diet survey instrument (<a href="/brp/hbrb/docs/Teen_Diet_PUF_Instrument.pdf" target="_blank">PDF</a>)</li>
				<li>Adolescent physical activity survey instrument (<a href="/brp/hbrb/docs/Teen_PA_PUF_Instrument.pdf" target="_blank">PDF</a>)</li>
				<li>Parent demographic survey instrument (<a href="/brp/hbrb/docs/Parent_Demo_PUF_Instrument.pdf" target="_blank">PDF</a>) </li>
				<li>Parent diet survey instrument (<a href="/brp/hbrb/docs/Parent_Diet_PUF_Instrument.pdf" target="_blank">PDF</a>)</li>
				<li>Parent physical activity survey instrument (<a href="/brp/hbrb/docs/Parent_PA_PUF_Instrument.pdf" target="_blank">PDF</a>)</li>
			</ul>
			<h2 id="Methods">Methods summary and data user guides</h2>
			<ul class="inline-links">
				<li>Codebook (<a href="/brp/hbrb/docs/FLASHE-Public-Codebook.xlsx">XLS</a>)</li>
				<li>Data user&rsquo;s guide (<a href="docs/FLASHE-Data-Users-Guide.pdf" target="_blank">PDF</a>)</li>
				<li>FLASHE methods summary report (<a href="/brp/hbrb/docs/FLASHE_Methods_Report.pdf" target="_blank">PDF</a>)</li>
				<li>Item source and reference list - Diet (<a href="docs/item-source-and-reference-list-diet.pdf" target="_blank">PDF</a>)</li>
				<li>Item source and reference list - Physical activity (<a href="docs/item-source-and-reference-list-physical-activity.pdf" target="_blank">PDF</a>)</li>
			</ul>
			<h2 id="GeoFLASHE">GeoFLASHE data and  resources</h2>
            <p>GeoFLASHE data are  neighborhood characteristics calculated for use with FLASHE survey data. These  data are available for data users to merge with FLASHE survey data to conduct  analyses examining neighborhood characteristics and behavior.</p>
            <ul class="inline-links">
              <li>Codebook (<a href="docs/FLASHE-GeoData-Codebook-revised-GeoFLASHE5.bNCI1.xlsx" target="_blank">XLS</a>)</li>
              <li>GeoFLASHE methods report  (<a href="docs/GeoFLASHE-Methods-Report-NCI.pdf" target="_blank">PDF</a>) </li>
              <li>GeoFLASHE data (SPSS, SAS  file)  (coming soon!)</li>
            </ul>
			<h2 id="Dyadic">Dyadic analysis resources</h2>
			<p>FLASHE data can be used to conduct individual- or dyadic-level analyses. The <a href="/brp/hbrb/flashe-dyadic-analysis.aspx">dyadic analysis resource</a> page and <a href="/brp/hbrb/flashe-webinar.html">introductory webinar</a> provide information on conducting dyadic analyses with FLASHE data.</p>
			<h2 id="Papers">Share your FLASHE projects</h2>
			<p><strong>FLASHE Data Users &ndash; tell us  how you are using FLASHE data!</strong></p>
			<p>Your responses will help  us understand how the data are being used. Please email a brief description of  your project and/ or a list of presentations or manuscripts to <a href="mailto:nciflashe@mail.nih.gov">nciflashe@mail.nih.gov</a>. Your responses will not be shared  with the public. </p>
			<h2 id="Contacts">Contacts</h2>
			<p>For more information about the Family Life, Activity, Sun, Health, and Eating (FLASHE) study, please contact: </p>
			<p><a href="https://staffprofiles.cancer.gov/brp/prgmStaffProfile.do?contactId=1612&amp;bioType=stf">Linda Nebeling, Ph.D., M.P.H., R.D</a>.<br>
				Deputy Associate Director<br>
				Behavioral Research Program<br>
				National Cancer Institute<br>
				<a href="mailto:linda.nebeling@nih.gov">linda.nebeling@nih.gov</a></p>
			<p><a href="https://staffprofiles.cancer.gov/brp/prgmStaffProfile.do?contactId=1439602&amp;bioType=stf">April Oh, Ph.D., M.P.H</a>.<br>
				Program Director<br>
				Health Communication and Informatics Research Branch<br>
				National Cancer Institute<br>
				<a href="mailto:april.oh@nih.gov">april.oh@nih.gov</a></p>
			<p><a href="https://staffprofiles.cancer.gov/brp/prgmStaffProfile.do?contactId=6098881&amp;bioType=flw">Laura Dwyer, Ph.D.</a><br>
				Contractor &ndash; Cape Fox Facilities  Services<br>
				Behavioral Research Program<br>
				National Cancer Institute <br>
				<a href="mailto:laura.dwyer@nih.gov">laura.dwyer@nih.gov</a></p>
			<h2 id="FAQ">FAQ</h2>
			<ol class="inline-links">
				<li><strong> What does FLASHE stand for?</strong><br>
					FLASHE is the acronym given to this cross-sectional, internet-based survey. It stands for Family Life, Activity, Sun, Health, and Eating study.</li>
				<li><strong> Why was this survey created?</strong><br>
					The survey was created so researchers can examine cancer-preventive behaviors in adolescents and their parents. The survey includes comprehensive questions about diet, physical activity, sedentary behavior, sleep patterns, sun safety, and tobacco use. This type of comprehensive information has not been included in other publicly available data resources. The goal of the study is to better understand the dynamic relationship between environment, psychosocial factors, and behavior from a parent-adolescent perspective.</li>
				<li><strong> When was the survey conducted? </strong><br>
					The survey was conducted between April and October 2014.</li>
				<li><strong> What was the sample size of this study?</strong><br>
					To view the sample size, see the FLASHE flowchart.
				</li>
				<li><strong> How can these data be used for cancer control?</strong><br>
					The data can be used to identify significant associations in cancer-preventive health behaviors among parents and their adolescent children. Researchers and public health practitioners can use the findings to develop targeted health interventions.</li>
				<li><strong>What is the funding statement for the FLASHE study?<br>
					</strong>The FLASHE Study was funded by the National Cancer Institute (NCI) under contract number HHSN261201200039I issued to Westat, Inc.</li>
				<li><strong> Who designed the survey?</strong><br>
					This survey was designed through extensive and thoughtful input from scientists and program officials in the federal government, nonprofit organizations, and several academic institutions.</li>
				<li><strong> Who conducted the survey?</strong> <br>
					Westat, Inc., a research group based in Rockville, Maryland.</li>
				<li><strong> How were participants recruited?<br>
					</strong>The sample was drawn from an already existing group of respondents. Ipsos, a panel research organization, invites people to join its panel through print ads, internet banner ads, random digit dialing omnibus surveys, and panelist referrals. Ipsos screened its participants to identify eligible households. Within each household, one adolescent was selected from the eligible adolescents living there. Ipsos provided the sample of eligible households to Westat, which sent out invitations to participate in the FLASHE study.</li>
				<li><strong>Did participants get paid for their participation?</strong><br>
					Yes. All participants received $5 for each completed survey or $10 for completing the survey early. Participants received either $20 or $40 for returning the accelerometer after completing the motion study.</li>
				<li><strong>How do I contact the program?</strong><br>
					Please email: <a href="mailto:nciflashe@mail.nih.gov">nciflashe@mail.nih.gov</a></li>
				<li><strong>Do I need permission to use the data?</strong><br>
					No. All data sets from the FLASHE study are available for free download. You will need to agree to certain terms to maintain data integrity. </li>
				<li><strong>Will I be contacted by the National Cancer Institute in the future?</strong><br>
					We might send emails when updates to the FLASHE dataset are available.</li>
				<li><strong>Where can I find information on sampling procedures?</strong><br>
					You can download the <a href="/brp/hbrb/docs/FLASHE_Methods_Report.pdf">methodology report and data user&rsquo;s guide</a>.</li>
				<li><strong>Where can I find information about dyadic analysis?</strong><br>
					Go to the <a href="/brp/hbrb/flashe-dyadic-analysis.aspx">dyadic analysis resource</a> page or view an <a href="/brp/hbrb/flashe-webinar.html">introductory webinar</a>. </li>
			</ol>
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
			<p class="update"><span class="bold">Last Updated:</span> April 9, 2018</p>
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
				<li><a href="/brp/research/index.html">Data and Tools</a></li>
				<li><a href="/brp/program-branches.html">Program Branches</a></li>
				<li><a href="/brp/about.html">About BRP</a></li>
				<li><a href="/brp/archive/index.html">BRP Archive</a></li>
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
<script src="../brp/js/bootstrap.min.js"></script>
<!-- Dropdown Hover or Click: https://github.com/CWSpear/bootstrap-hover-dropdown -->
<script src="../brp/js/bootstrap-hover-dropdown.min.js"></script>
<!-- Custom jQuery -->
<script src="../brp/js/scripts-min.js"></script>
<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>
