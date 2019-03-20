<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="IS_webinars" %>

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
<meta name="keywords" content="">
<meta name="author" content="National Cancer Institute, Division of Cancer Control and Population Science">
<title>Webinar Registration | IS | DCCPS/NCI/NIH</title>
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
                                    <li class="landing-page-link"><a href="/IS/funding.html">Funding Opportunities <span class="sr-only">Landing Page</span></a></li>
                                    <li><a href="/IS/sample-grant-applications.html">Examples of Funded Grants</a></li>
									<li><a href="/IS/funding-webinars.html">Funding Webinars</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" tabindex="0">Training &amp; Education<span class="sr-only">Open Dropdown</span><b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="landing-page-link active"><a href="/IS/training-education/index.html">Training &amp; Education <span class="sr-only">Training &amp; Education</span></a></li>
                                    <li class="active"><a href="/IS/training-education/Webinars.aspx">Webinars</a></li>
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
            	
                  <h1>Webinar Registration</h1>
                   
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
						<li><a href="Webinars.aspx">Webinars</a></li>
                        <li>Webinar Registration</li>
                    </ul>
		</div> <!-- /.col-lg-12 -->
	</div> <!-- /.row -->
</div> <!-- /.container -->
</div> <!-- /.page-breadcrumb -->
<form id="formregistration" runat="server">

<div class="container">
    <div class="row">
        <div class="col-md-12">
        <h3 class="first"><asp:Literal ID="WEBINAR_topic_title" runat="server"></asp:Literal></h3>
        <br>
          <table style="width:98%" border="0" class="table">
            <tr>
                <th style="width:42%" class="cells" scope="col">
                    <span class="register">Register</span>
                </th>
                <th style="width:4%" scope="col">
                </th>
                <th style="width:54%" scope="col">
                    <span class="required">* Required fields</span>
                </th>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtfirstname" Text="First Name" ID="Label1" runat="server"></asp:Label>
                    <span class="required">*</span>:
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtfirstname" CssClass="textfield_effect" runat="server" MaxLength="150"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname"
                        Display="Dynamic" ErrorMessage="<br/>*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtlastname" Text=" Last Name" ID="Label2" runat="server"></asp:Label>
                    <span class="required">*</span>:
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtlastname" CssClass="textfield_effect" runat="server" MaxLength="150"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlastname"
                        ErrorMessage="<br/>*Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtemail" Text="E-mail" ID="Label3" runat="server"></asp:Label>
                    <span class="required">*</span>:
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtemail" CssClass="textfield_effect" runat="server" MaxLength="150"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemail"
                        ErrorMessage="<br/>*Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemail"
                        CssClass="ErrorMessage" ErrorMessage="<br/>Invalid E-mail." Display="Dynamic"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtemail2" Text="Confirm E-mail" ID="Label4" runat="server"></asp:Label>
                    <span class="required">*</span>:
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtemail2" CssClass="textfield_effect" runat="server" MaxLength="150"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtemail2"
                        ErrorMessage="<br />*Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail2"
                        CssClass="ErrorMessage" ErrorMessage="<br />Invalid E-mail." ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" 
                        ControlToCompare="txtemail" ControlToValidate="txtemail2" CssClass="error" 
                        Display="Dynamic" ErrorMessage="&lt;br/&gt;*Emails must match" ForeColor="Red" 
                        SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtorg" Text="Organization" ID="Label5" runat="server"></asp:Label>
                    <span class="required">*</span>:
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtorg" CssClass="textfield_effect" runat="server" MaxLength="150"
                        Width="250px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtorg"
                        ErrorMessage="<br/>*Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtmoi" Text="How did you hear about the seminar?"
                        ID="Label6" runat="server"></asp:Label>
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtmoi" CssClass="textfield_effect" runat="server" MaxLength="500"
                        Width="250px" Rows="3" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="cells">
                    <asp:Label AssociatedControlID="txtparticipants" Text="How many participants are you registering for?"
                        ID="Label7" runat="server"></asp:Label>
                    <br />
                    <em>(will others be viewing with you?)</em>
                </td>
                <td>&nbsp;
                    
                </td>
                <td>
                    <asp:TextBox ID="txtparticipants" CssClass="textfield_effect" runat="server" MaxLength="4"
                        Width="50px">1</asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtparticipants"
                        ErrorMessage="<br/>*Required" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtparticipants"
                        ErrorMessage="<br/>Please enter a number only." Operator="DataTypeCheck" Type="Integer"
                        Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtparticipants"
                        ErrorMessage="<br/>Please enter a number greater than 1." Operator="GreaterThan"
                        ValueToCompare="0" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
                <tr>
                <td class="cells center" colspan="3">
                    <asp:CheckBox ID="CK_Sub" Checked="false" Text=" I’d like to receive future webinar invitations and monthly newsletters from the Implementation Science Team." runat="server" />
                </td>

                </tr>
            <tr>
                <td class="cells center" colspan="3">
                    <asp:Button ID="btnregister" CssClass="btn btn-default btn-inline" runat="server" Text="Register Now!" />
                    <asp:Button ID="BTN_Cancel" CssClass="btn btn-default btn-inline" CausesValidation="false" runat="server"
                        Text="Cancel" />
                </td>
            </tr>
        </table>
        <hr />
        <h1><asp:Literal ID="LIT_Results" runat="server"></asp:Literal></h1>


        	</div> <!-- /.col-md-12 -->
    </div> <!-- /.row -->
</div> <!-- /.container -->

</form>
<div class="spacer-30"></div>
<!-- end intro area -->		

<span class="sr-only"></span>
		
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
<!-- Web Analytics -->
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
<script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>