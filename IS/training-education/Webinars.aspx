<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Webinars.aspx.vb" Inherits="WS_Testing_Default" %>

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
<meta name="description" content="Register for upcoming webinars and view archived sessions from the Advanced Topics in Implementation Science webinar series and Research to Reality.">
<meta name="keywords" content="">
<meta name="author" content="National Cancer Institute, Division of Cancer Control and Population Science">
<title>Webinars | IS | DCCPS/NCI/NIH</title>
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
<link href="../../css/bootstrap.min.css" rel="stylesheet">
<!-- Google Fonts Source Sans & Merriweather -->
<link href="https://fonts.googleapis.com/css?family=Merriweather:300,300i|Source+Sans+Pro:300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<!-- Styles.css is compiled from LESS files -->
<link href="../css/styles-min.css" rel="stylesheet">
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
				<div class="program-name">Implementation Science</div>
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
                            <li><a href="/IS/">IS Home</a></li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Funding Opportunities <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="disabled-landing-page-link"><a href="/IS/funding.html">Funding Opportunities <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/sample-grant-applications.html">Examples of Funded Grants</a></li>
									<li><a href="/IS/funding-webinars.html">Funding Webinars</a></li>
                                </ul>
                            </li>
							<li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Initiatives <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="disabled-landing-page-link"><a href="/IS/initiatives/index.html">Initiatives <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/initiatives/iscc.html">Implementation Science Consortium in Cancer</a></li>
                                </ul>
                            </li>
                            <li class="dropdown active">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Training &amp; Education<span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="disabled-landing-page-link"><a href="/IS/training-education/index.html">Training &amp; Education <span class="sr-only">Training &amp; Education</span></a></li>
                                    <li class="active"><a href="/IS/training-education/Webinars.aspx">Webinars</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Research &amp; Practice Tools <span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="disabled-landing-page-link"><a href="/IS/tools/index.html">Research &amp; Practice Tools <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/tools/research.html">Research Tools</a></li>
                                    <li><a href="/IS/tools/practice.html">Practice Tools</a></li>
                                    <li><a href="/IS/tools/partnerships.html">Research-Practice Partnerships</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">About IS<span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="disabled-landing-page-link"><a href="/IS/about.html">About IS<span class="sr-only">Landing Page</span></a></li>
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
            	
                  <h1>Webinars</h1>
                   
			</div> 
			<!-- /.col-lg-12 -->
		</div> <!-- /.row -->
	</div> <!-- /.container -->
</div> <!-- /.page-title -->
<div class="page-breadcrumb">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
                    <ul class="breadcrumb">
                        <li><a href="/IS/index.html">Home</a></li>
                        <li><a href="index.html">Training &amp; Education</a></li>
						<li>Webinars</li>
                    </ul>
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<form id="form2" runat="server">
    
<div class="container">
	<div class="row">
		<div class="col-md-8">
            <p class="intro">Register for upcoming webinars and view archived sessions from the Advanced Topics in Implementation Science series and Research to Reality.</p>
            <div class="row">
                <div class="col-md-6">
                    <img src="/IS/images/AdvancedTopics_thumbnail.jpg" class="img-responsive" alt="Advanced Topics logo">
                    <h3>Advanced Topics in Implementation Science Webinars</h3>
                    <p>Listen in as leaders in the field discuss advanced dissemination and implementation research topics and answer questions from the community.</p>
                </div>
                <div class="col-md-6">
                    <img src="/IS/images/R2R_thumbnail.jpg" class="img-responsive" alt="R2R logo">
                    <h3>Research to Reality (R2R) Cyber Seminars</h3>
                    <p><a href="https://researchtoreality.cancer.gov/">Research to Reality</a> (R2R) Cyber Seminars bring together cancer control practitioners and researchers to discuss moving evidence-based programs into practice.</p>
                </div>
            </div> <!-- /.row -->
            
		</div> <!-- /.col-md-8 -->
        <div class="col-md-4">
                <div id="dv_CurrentWebinars"></div>
                <script type="text/x-jquery-tmpl" id="contentTemplate_Current">
                    <div class="sidebar-box">
                        <h2 class="first">Upcoming Webinars</h2>
                        <h3 class="first"><a href='details.aspx?ID=${PK_webinar}'>${topic}</a></h3>
                        <!-- {0} is PK_webinar, {1} is topic -->
                        <p>
                            <b>${MonthDisplay} ${YearDisplay} </b><br>
                            ${splitwords_BriefDesc}...
                            <!-- year Month -->
                        </p>
                        <p>
                            {{if Presenters != ''}} <b>Presenter(s):</b> ${Presenters}<br />{{/if}} 
                            <!-- FEATURES/PRESENTERS ARE SET IN db -->
                            {{if categoryHTML != ''}} <b>Category:</b> ${categoryHTML}<br /> {{/if}}
                            <!-- Category goes here (set in DB) -->
                        </p>
						<div class="row">
		                    <div class="col-md-12 text-center">
			                    <a href='registration.aspx?ID=${PK_webinar}' class="btn btn-default btn-inline">Register Now!</a>
                            </div> <!-- /.col-md-12 -->
	                    </div> <!-- close /.row -->
                    </div> <!-- /.sidebar-box -->
                </script>
				<div id="dv_FutureWebinars"></div>
                <script type="text/x-jquery-tmpl" id="contentTemplate_Future">
                    <div class="sidebar-box">
                        <h3 class="first"><a href='details.aspx?ID=${PK_webinar}'>${topic}</a></h3>
                        <!-- {0} is PK_webinar, {1} is topic -->
                        <p>
                            ${YearDisplay} ${MonthDisplay} 
                            ${splitwords_BriefDesc}...
                            <!-- year Month -->
                        </p>
                        <p>
                            {{if Presenters != ''}} <b>Presenter(s):</b> ${Presenters}<br />{{/if}} 
                            <!-- FEATURES/PRESENTERS ARE SET IN db -->
                            {{if categoryHTML != ''}} <b>Category:</b> ${categoryHTML}<br /> {{/if}}
                            <!-- Category goes here (set in DB) -->
                        </p>
                    </div> <!-- /.sidebar-box -->
                </script>
        </div> <!-- /.col-md-4 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
<div class="spacer-40"></div>   
<div class="container">
    <div class="row">
        <div class="col-md-12">
            <hr>
            <h2 class="text-center">Archived Webinars</h2>
        </div> <!-- /.col-md-12 -->
    </div> <!-- /.row -->
	<div class="row">
		<div class="col-md-9 col-md-push-3">
            <div id="pager" class="clearfix"></div>
            <div id="dv_ArchiveWebinars"></div>

        <script type="text/x-jquery-tmpl" id="contentTemplate">
            <div class='ArchiveDiv'>
                <div class="row">
				    <div class="col-xs-3">
                        <img alt="{1}" src="{5}" class="img-responsive" style="width:100%; height:auto">
				    </div>
				    <div class="col-xs-9">
                        <h3><a href='Details.aspx?ID={0}'>{1}</a></h3>
					    <p><b>{3}  {2}</b></p>
                        <p>{4}</p>
                        <p>{6}</p>
				    </div>
			    </div>
                <hr />
            </div>
        </script>
        <script type="text/template" id="contentErrorTemplate">
            <div>There is no data to show.</div>
        </script>
        </div> <!-- /.col-md-9 -->
		<div class="col-md-3 col-md-pull-9">
			<h3>Filters</h3>
			<div id="webinar-filters" class="accordion-group">
				<div class="accordion-heading" id="category-heading">
					<a class="btn btn-accordion accordion-toggle collapsed" data-toggle="collapse" data-target="#category" tabindex="0" aria-controls="collapse">
						<div class="accordion-icon"><span class="glyphicon glyphicon-plus"></span></div>
						<div class="accordion-title">Category</div>
					</a>
				</div> <!-- /.accordion-heading -->
				<div id="category" class="accordion-body collapse">
					<div class="accordion-inner">
						<asp:Repeater ID="RPTR_ListCategories" runat="server">
                        <ItemTemplate>
                            <div>
                            <input onchange="CategoryClicked(<%# Eval("PK_Category")%>)" id="CKCategory_<%# Eval("PK_Category")%>" value="<%# Eval("Category")%>" type="checkbox" name="category" />
                            <label for="CKCategory_<%# Eval("PK_Category")%>"><%# Eval("Category")%></label>
                            <br>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>
					</div> <!-- /.accordion-inner -->
				</div> <!-- /.accordion-body -->
				<div class="accordion-heading" id="year-heading">
					<a class="btn btn-accordion accordion-toggle collapsed" data-toggle="collapse" data-target="#year" tabindex="0" aria-controls="collapse">
						<div class="accordion-icon"><span class="glyphicon glyphicon-plus"></span></div>
						<div class="accordion-title">Year</div>
					</a>
				</div> <!-- /.accordion-heading -->
				<div id="year" class="accordion-body collapse">
					<div class="accordion-inner">
						<asp:Repeater ID="RPTR_Years" runat="server">
                        <ItemTemplate>
                            <div>
                            <input onchange="YearClicked(<%# Eval("YearDisplay")%>)" id="CKCYear_<%# Eval("YearDisplay")%>" value="<%# Eval("YearDisplay")%>" type="checkbox" name="year" />
                            <label for="CKCYear_<%# Eval("YearDisplay")%>"><%# Eval("YearDisplay")%></label>
                            <br>
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
					</div> <!-- /.accordion-inner -->
				</div> <!-- /.accordion-body -->
				<div class="accordion-heading" id="presenter-heading">
					<a class="btn btn-accordion accordion-toggle collapsed" data-toggle="collapse" data-target="#presenter" tabindex="0" aria-controls="collapse">
						<div class="accordion-icon"><span class="glyphicon glyphicon-plus"></span></div>
						<div class="accordion-title">Presenter</div>
					</a>
				</div> <!-- /.accordion-heading -->
				<div id="presenter" class="accordion-body collapse">
					<div class="accordion-inner">
						<asp:Repeater ID="RPTR_Presenters" runat="server">
                        <ItemTemplate>
                            <div>
                            <input onchange="PresenterClicked(<%# Eval("PK_Presenter")%>)" id="CKPresenter_<%# Eval("PK_Presenter")%>" value="<%# Eval("PresenterName")%>" type="checkbox" name="presenter" />
                            <label for="CKPresenter_<%# Eval("PK_Presenter")%>"><%# Eval("PresenterName")%></label>
                            <br>
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
					</div> <!-- /.accordion-inner -->
				</div> <!-- /.accordion-body -->
				<div class="accordion-heading" id="series-heading">
					<a class="btn btn-accordion accordion-toggle collapsed" data-toggle="collapse" data-target="#series" tabindex="0" aria-controls="collapse">
						<div class="accordion-icon"><span class="glyphicon glyphicon-plus"></span></div>
						<div class="accordion-title">Series</div>
					</a>
				</div>
				<div id="series" class="accordion-body collapse">
					<div class="accordion-inner">
						<asp:Repeater ID="RPTR_Series" runat="server">
                        <ItemTemplate>
                            <div>
                            <input onchange="SeriesClicked(<%# Eval("PK_Series")%>)" id="PKSeries_<%# Eval("PK_Series")%>" value="<%# Eval("Series")%>" type="checkbox" name="series" />
                            <label for="PKSeries_<%# Eval("PK_Series")%>"><%# Eval("Series")%></label>
                            <br>
                            </div>
                        </ItemTemplate>
                        </asp:Repeater>
					</div>
				</div> <!-- /.accordion-body -->
            </div>
		</div> <!-- /.col-md-3 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</form>
<!-- end intro area -->		

<div class="spacer-30"></div>
		
</main> <!-- /#main-content -->

<footer role="contentinfo">
<div class="lightgray-row update-row">
<div class="container">
	<div class="row">
		<div class="col-lg-12">
			<p class="update"><span class="bold">Last Updated:</span> June 22, 2018</p>
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.lightgray-row -->
<div class="container">
	<div class="row links">
		<div class="col-md-3">
			<ul class="list-unstyled program-links">
                <li><h2>Implementation Science</h2></li>
				<li><a href="/IS/index.html">IS Home</a></li>
				<li><a href="/IS/funding.html">Funding Opportunities</a></li>
				<li><a href="/IS/initiatives/index.html">Initiatives</a></li>
				<li><a href="/IS/training-education/index.html">Training &amp; Education</a></li>
				<li><a href="/IS/tools/index.html">Research &amp; Practice Tools</a></li>
				<li><a href="/IS/about.html">About IS</a></li>
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
	    <div class="livehelp"> <a href="https://livehelp.cancer.gov"><img src="../../images/livehelp_2x.png" alt="LiveHelp Cancer.gov"></a> <a href="tel:1-800-422-6237"> 1-800-4-CANCER
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
<script src="/IS/js/bootstrap.min.js"></script>
<!-- Dropdown Hover or Click: https://github.com/CWSpear/bootstrap-hover-dropdown -->
<script src="/IS/js/bootstrap-hover-dropdown.min.js"></script>
<!-- Custom jQuery -->
<script src="/IS/js/scripts-min.js"></script>
<script src="/IS/js/IS-webinars.js"></script>
<script src="/IS/js/simplePaging1.0.js"></script>
<script src='https://ajax.microsoft.com/ajax/jquery.templates/beta1/jquery.tmpl.min.js'></script>

<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>
