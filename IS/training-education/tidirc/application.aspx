<%@ Page Language="VB" AutoEventWireup="false" CodeFile="application.aspx.vb" Inherits="IS_training_education_tidirc_application" %>

<!DOCTYPE html>
<html lang="en">
  <head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-NMGZRC ');</script>
<!-- End Google Tag Manager -->

  <title>TIDIRC Application - Implementation Science - Division of Cancer Control &amp; Population Sciences</title>
  <link rel="icon" 
      type="image/jpeg" 
      href="/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="nci, dccps, Cancer Control and Population Sciences, cancer">
    <meta name="author" content="">
  <meta name="description" content="Implementation Science homepage" />
  <!-- Le styles -->
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../../../css/bootstrap-nci.css" rel="stylesheet">
    <link type="text/css" media="screen" rel="stylesheet" href="../../../IS/css/is-style.css" />
    <link href="../css/print.css" rel="stylesheet" media="print" />

      <style type="text/css">
          .alert {
              padding: 3px 35px 3px 14px;
          }
          #TXT_Race label {
              display:inline;
              margin-left: 0.5em;
          }
      </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script>document.createElement('footer');</script>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
  <style type="text/css" id="holderjs-style">.holderjs-fluid {font-size:16px;font-weight:bold;text-align:center;font-family:sans-serif;margin:0}</style>
  
  </head>
  <body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-NMGZRC"
height="0" width="0" style="display:none;visibility:hidden" title="Google Tag Manager"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!-- skip navigation of site -->
  	<div id="skipmenu">
	<a href="#skip" class="skippy">Skip Navigation</a>
	<a id="top"></a>
	</div> <!-- end skipmenu -->
	<div id="header-nci">
    	    <a href="/"> <img alt="National Cancer Institute" src="../../../images/dccps-logo.png"> </a>
    </div>
    <div id="header">
      <div id="cancercontrol-banner">
    	<span>Implementation Science</span>
    </div>
  </div>
	<div id="main-container">
      <!-- NAVBAR
    ================================================== -->
        <div class="navbar navbar-inverse">
        <div id="header-search">
		<form method="get" action="https://barney2.cit.nih.gov/search" name="search">
  	  <input type="hidden" name="site" value="DCCPS" />
  	  <input type="hidden" name="client" value="DCCPS_frontend" />
  	  <input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
  	  <input type="hidden" name="output" value="xml_no_dtd" />
      <input type="hidden" name="filter" value="0" />
  	  <input type="hidden" name="getfields" value="*" />
  	  <label for="searchbox">Search: </label>
        <input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" placeholder="Search" />
  	  <input type="image" src="../../../images/hbutton-new.gif"  class="hbutton" name="btnG" id="btnG" alt="Search" />
  	</form>
	</div>
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse" value="Menu">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li><a href="/IS/index.html">Home</a></li>
<li class="dropdown">
                  <a class="hover-link" href="/IS/about.html">About IS <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="/IS/about.html">Vision &amp; Mission</a></li>
                  <li><a href="/IS/staff.html">Staff</a></li>
                </ul>
                </li>
                <li class="dropdown">
                  <a class="hover-link" href="/IS/funding.html">Funding Opportunities <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="/IS/funding.html#apply">Apply for Grants</a></li>
                    <li><a href="/IS/funding.html#generalgrant">Resources for Prospective Grantees </a></li>
                    <!--<li><a href="#">Sample Grant Applications </a></li>-->
                    <li><a href="/IS/funding.html#grantmanship">General Grant Resources</a></li>
                  </ul>
                  <div>
                    <div> </div>
                  </div>
</li>
                <li class="dropdown">
                  <a class="hover-link" href="/IS/tools/index.html">Research &amp; Practice Tools <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="/IS/tools/research.html">Research Tools</a></li>
                    <li><a href="/IS/tools/practice.html">Practice Tools</a></li>
                  <li><a href="/IS/tools/partnerships.html">Research-Practice Partnerships</a></li></ul>
                </li>
                <li class="dropdown">
                  <a class="hover-link" href="/IS/training-education/index.html">Training &amp; Education <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  <li><a href="https://cyberseminar.cancercontrolplanet.org/implementationscience/">Advanced Topics Webinar Series</a></li>
                  <li><a href="/IS/training-education/index.html#trainings">Training Programs</a></li>
                  <li><a href="/IS/training-education/index.html#conference">Conference</a></li>
                </ul>
                </li>               
</ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
          <div id="topbanner"></div>
        </div><!-- /.navbar -->
		        <div class="container-fluid">
                <a id="skip"></a>
                <div class="row-fluid">
          <div id="sidebar" class="span3">
              <div class="well sidebar-nav">
                <ul class="nav nav-list">
                  <li class="nav-header"><a href="index.html">Welcome</a></li>
                  <li class="nav-header"><a href="application.aspx">TIDIRC Application</a></li>
                  <li class="nav-header"><a href="faqs.html">FAQ</a></li>
                </ul>
              </div>
              <!--/.well -->
            </div>		
            <div id="content" class="span9">
                <div class="row">
                <div class="span12">
                  <ul class="breadcrumb">
                    <li class="home-breadcrumb"> <a href="/IS/index.html">Home</a> </li>
                    <li class="parent">
    <div class="heading"><a href="../index.html">Training &amp; Education</a></div>       
    <div class="divider"><span>></span></div>
  </li>
                      <li class="parent">
    <div class="heading"><a href="index.html">TIDIRC</a></div>       
    <div class="divider"><span>></span></div>
  </li>
                    <li class="active">
                      <div class="heading">TIDIRC Application</div>
                      <div class="divider"><span>></span></div>
                    </li>
                  </ul>
                </div>
              </div>    
                <div class="row-fluid">
           		  <div class="span12">
                  <h1>TIDIRC Application</h1>

                         <p>To apply for TIDIRC, please complete the following application by February 10, 2018 at 12:00PM ET.</p>
                  <div id="thankyou" runat="server"></div>
    <form id="form1" runat="server">
        <div>
            <div class="row-fluid">
                <div class="span6">
                    <asp:Label ID="Label1" runat="server" AssociatedControlID="TXT_FirstName" Text="First Name:"></asp:Label> <asp:TextBox ID="TXT_FirstName" runat="server"></asp:TextBox><br /> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TXT_FirstName" Display="Dynamic" ErrorMessage="Please enter a first name." CssClass="alert"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="Label2" runat="server" AssociatedControlID="TXT_LastName" Text="Last Name:"></asp:Label> <asp:TextBox ID="TXT_LastName" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TXT_LastName" Display="Dynamic" ErrorMessage="Please enter a last name." CssClass="alert"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="Label3" runat="server" AssociatedControlID="TXT_Title" Text="Title:"></asp:Label> <asp:TextBox ID="TXT_Title" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TXT_Title" Display="Dynamic" ErrorMessage="Please enter title." CssClass="alert"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="Label4" runat="server" AssociatedControlID="TXT_Organization" Text="Organization:"></asp:Label> <asp:TextBox ID="TXT_Organization" runat="server"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TXT_Organization" Display="Dynamic" ErrorMessage="Please enter an organization" CssClass="alert"></asp:RequiredFieldValidator><br />
       <asp:Label ID="Label10" runat="server" AssociatedControlID="TXT_Phone" Text="Phone:"></asp:Label> <asp:TextBox ID="TXT_Phone" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TXT_Phone" Display="Dynamic" ErrorMessage="Please enter a phone number." CssClass="alert"></asp:RequiredFieldValidator><br />
                <asp:Label ID="Label11" runat="server" AssociatedControlID="TXT_Email" Text="Email:"></asp:Label> <asp:TextBox ID="TXT_Email" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TXT_Email" Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert"></asp:RequiredFieldValidator> 
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TXT_Email"
                 Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator><br />
                </div>
                <div class="span6">
                    <asp:Label ID="Label5" runat="server" AssociatedControlID="TXT_Address1" Text="Address:"></asp:Label> <asp:TextBox ID="TXT_Address1" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TXT_Address1" Display="Dynamic" ErrorMessage="Please enter an address." CssClass="alert"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label6" runat="server" AssociatedControlID="TXT_Address2" Text="Address (optional):"></asp:Label> <asp:TextBox ID="TXT_Address2" runat="server"></asp:TextBox><br /><br />
        <asp:Label ID="Label7" runat="server" AssociatedControlID="TXT_City" Text="City:"></asp:Label> <asp:TextBox ID="TXT_City" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TXT_City" Display="Dynamic" ErrorMessage="Please enter a city." CssClass="alert"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label8" runat="server" AssociatedControlID="TXT_State" Text="State:"></asp:Label> <asp:TextBox ID="TXT_State" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TXT_State" Display="Dynamic" ErrorMessage="Please enter a state." CssClass="alert"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label9" runat="server" AssociatedControlID="TXT_Zip" Text="Zip Code:"></asp:Label> <asp:TextBox ID="TXT_Zip" runat="server"></asp:TextBox><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TXT_Zip" Display="Dynamic" ErrorMessage="Please enter a 5-digit zip code." CssClass="alert"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TXT_Zip" Display="Dynamic" ErrorMessage="Please enter a valid 5-digit zip code." CssClass="alert" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator><br />
        
                </div>
            </div>
            <hr />
            <div class="row-fluid">
                <div class="span6">
                    <asp:Label ID="Label12" runat="server" AssociatedControlID="TXT_Race" Text="Race (check as many as apply):"></asp:Label> <asp:CheckBoxList ID="TXT_Race" runat="server">
                <asp:ListItem>American Indian or Alaska Native</asp:ListItem>
                <asp:ListItem>Asian</asp:ListItem>
                <asp:ListItem>Black or African American</asp:ListItem>
                <asp:ListItem>Native Hawaiian or Other Pacific Islander</asp:ListItem>
                <asp:ListItem>White</asp:ListItem>
                <asp:ListItem>Prefer not to answer</asp:ListItem>
            </asp:CheckBoxList>
        <asp:Label ID="Label13" runat="server" AssociatedControlID="TXT_Race_other" Text="Race (other):"></asp:Label> <asp:TextBox ID="TXT_Race_other" runat="server"></asp:TextBox><br /><br />
        
                </div>
                <div class="span6">
                    <asp:Label ID="Label22" runat="server" AssociatedControlID="TXT_Gender" Text="Gender:"></asp:Label> <asp:DropDownList ID="TXT_Gender" runat="server">
                        <asp:ListItem></asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:DropDownList><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TXT_Gender" Display="Dynamic" ErrorMessage="Please enter a gender." CssClass="alert"></asp:RequiredFieldValidator><br />
                    <asp:Label ID="Label23" runat="server" AssociatedControlID="TXT_AreYouHispanic" Text="Are you Hispanic or Latino? (A person of Cuban, Mexican, Puerto Rican, South or Central American, or other Spanish culture or origin, regardless of race.)"></asp:Label> 
            <asp:DropDownList ID="TXT_AreYouHispanic" runat="server">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
                <asp:ListItem>Yes</asp:ListItem>
            </asp:DropDownList><br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="TXT_AreYouHispanic" Display="Dynamic" ErrorMessage="Please select an answer." CssClass="alert"></asp:RequiredFieldValidator><br />
        
                </div>
            </div>
            <hr />
            <div class="row-fluid">
                <div class="span6">
                    <asp:Label ID="Label14" runat="server" AssociatedControlID="TXT_InvestigatorLevel" Text="Investigator Level:"></asp:Label> <asp:DropDownList ID="TXT_InvestigatorLevel" runat="server">
                        <asp:ListItem></asp:ListItem>
                <asp:ListItem>Junior Investigator</asp:ListItem>
                <asp:ListItem>Mid-level Investigator</asp:ListItem>
                <asp:ListItem>Senior Investigator</asp:ListItem>
            </asp:DropDownList><br /> <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TXT_InvestigatorLevel" Display="Dynamic" ErrorMessage="Please select an investigator level." CssClass="alert"></asp:RequiredFieldValidator><br />
                </div>
                <div class="span6">
                    <asp:Label ID="Label15" runat="server" AssociatedControlID="TXT_FieldOfExpertise" Text="Field of Expertise (e.g. obesity, palliative care, cancer care delivery):"></asp:Label> <asp:TextBox ID="TXT_FieldOfExpertise" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TXT_FieldOfExpertise" Display="Dynamic" ErrorMessage="Please enter a field of expertise." CssClass="alert"></asp:RequiredFieldValidator><br />
                </div>
            </div>

            <h2>Supporting Documents</h2>
            <p>Please be sure to <strong>name all your files</strong> with your last name followed by an underscore and the type of document. All documents must be either MS Word or Adobe PDF files and should not exceed 1 MB in file size.</p>
        <asp:Label ID="Label18" runat="server" AssociatedControlID="UP_PersonalStatement_File" Text="Personal Statement To Upload:"></asp:Label> <asp:FileUpload ID="UP_PersonalStatement_File" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="UP_PersonalStatement_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert"></asp:RequiredFieldValidator> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_PersonalStatement_File" runat="server" ForeColor="Red" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert" /><br />
        <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="UP_PersonalStatement_File" ErrorMessage="File size should not be greater than 1 MB." OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
        <asp:Label ID="Label19" runat="server" AssociatedControlID="UP_LettersOfRec_File" Text="Letters of Recommendation To Upload:"></asp:Label> <asp:FileUpload ID="UP_LettersOfRec_File" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="UP_LettersOfRec_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert"></asp:RequiredFieldValidator> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_LettersOfRec_File" runat="server" ForeColor="Red" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert" /><br />
        <asp:Label ID="Label20" runat="server" AssociatedControlID="UP_Curriculum_File" Text="Curriculum Vitae To Upload:"></asp:Label> <asp:FileUpload ID="UP_Curriculum_File" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="UP_Curriculum_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert"></asp:RequiredFieldValidator> 
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_Curriculum_File" runat="server" ForeColor="Red" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert" /><br />
        <asp:Label ID="Label21" runat="server" AssociatedControlID="UP_ConceptPaper_File" Text="Concept Paper To Upload:"></asp:Label> <asp:FileUpload ID="UP_ConceptPaper_File" runat="server" /> <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="UP_ConceptPaper_File" Display="Dynamic" ErrorMessage="Please add an attachment." CssClass="alert"></asp:RequiredFieldValidator> 
         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" ValidationExpression="([a-zA-Z0-9\s_\\.\-:])+(.doc|.docx|.pdf)$" ControlToValidate="UP_ConceptPaper_File" runat="server" ForeColor="Red" ErrorMessage="Please select a valid Word or PDF File file." Display="Dynamic" CssClass="alert" /><br />
        <br /><br />
            <asp:Button ID="BTN_UploadClicked" runat="server" Text="Submit Application" />

            <br />
            <p>All application documents must be submitted electronically by February 10, 2018&nbsp;at 12:00PM ET.</p></div>
    </form>
</div><!--/span-->
                              </div><!--/row-->          
            </div><!--/span-->
          </div>
      </div>
  	</div>
      <!-- FOOTER -->
    <footer>
      	<div class="container-fluid">
        	<div class="row-fluid bottom-border bottom-margin">
            <div class="span12 topfoot">
            <div class="row-fluid top-span">
             <div class="span4">
             	<p class="footer-header"><a href="/IS/index.html">Home</a></p>
             </div><!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/IS/about.html">About IS</a></p>
             </div><!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/IS/funding.html">Funding Opportunities</a></p>
             </div><!--/span-->
             </div>
             <div class="row-fluid"><div class="row-fluid top-span">
             <div class="span4">
             	<p class="footer-header"><a href="/IS/tools/index.html">Research &amp; Practice Tools </a></p>
             </div><!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/IS/training-education/index.html">Training &amp; Education</a></p>
             </div><!--/span-->
             <div class="span4"></div><!--/span-->
             </div>
             </div>
       </div>
            <div class="last-updated">
              <p class="center"><strong>Last Updated: January 10, 2018</strong></p>
       <a href="https://www.cancer.gov/contact" class="help-image"><img class="footer-help" src="/images/footer-help-logo.png" alt="help-logo" /></a><p class="can-numb"><strong>1-800-4-CANCER <br /> (1-800-422-6237)</strong></p>
     </div>
       </div><!--/row-->
          <div class="row-fluid">

            <div class="span12 footer-box center">
          	  <ul>
                <li><a href="/index.html">Site Home</a></li>
                <li>|</li>
                <li><a href="https://www.cancer.gov/contact">Contact Us</a></li>
                <li>|</li>
                <li><a href="https://www.cancer.gov/policies/disclaimer">Disclaimer Policy</a></li>
                <li>|</li>
                <li><a href="https://www.cancer.gov/policies/accessibility">Accessibility</a></li>
                <li>|</li>
                <li><a href="https://www.cancer.gov/policies/foia">FOIA</a></li>
              </ul>
              <ul>
                <li><a href="https://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
                <li>|</li>
                <li><a href="https://www.nih.gov/">National Institutes of Health</a></li>
                <li>|</li>
                <li><a href="https://www.cancer.gov/">National Cancer Institute</a></li>
                <li>|</li>
                <li><a href="https://www.usa.gov/">USA.gov</a></li>
              </ul>
            </div><!--/span-->
            <p class="center">NIH...Turning Discovery Into Health <sup>&reg;</sup></p>
          </div><!--/row-->
        </div>
      </footer>
    <!-- javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../../../js/bootstrap.min.js"></script>
    <script src="../../../js/respond.min.js"></script>
    <script src="../../../js/twitter.js"></script>
        <script>
            !function ($) {
                $(function () {
                    // carousel demo
                    $('#myCarousel').carousel({
                        interval: 16000
                    })
                })
            }(window.jQuery)
            $('#playButton').click(function () {
                $('#myCarousel').carousel('cycle');
            });
            $('#pauseButton').click(function () {
                $('#myCarousel').carousel('pause');
            });

            var config2 = {
                "id": '711988974030557184',
                "domId": 'is-tweets',
                "maxTweets": 3,
                "enableLinks": true
            };
            twitterFetcher.fetch(config2);

            // This adds 'placeholder' to the items listed in the jQuery .support object. 
            jQuery(function () {
                jQuery.support.placeholder = false;
                test = document.createElement('input');
                if ('placeholder' in test) jQuery.support.placeholder = true;
            });
            // This adds placeholder support to browsers that wouldn't otherwise support it. 
            $(function () {
                if (!$.support.placeholder) {
                    var active = document.activeElement;
                    $(':text').focus(function () {
                        if ($(this).attr('placeholder') != '' && $(this).val() == $(this).attr('placeholder')) {
                            $(this).val('').removeClass('hasPlaceholder');
                        }
                    }).blur(function () {
                        if ($(this).attr('placeholder') != '' && ($(this).val() == '' || $(this).val() == $(this).attr('placeholder'))) {
                            $(this).val($(this).attr('placeholder')).addClass('hasPlaceholder');
                        }
                    });
                    $(':text').blur();
                    $(active).focus();
                    $('form:eq(0)').submit(function () {
                        $(':text.hasPlaceholder').val('');
                    });
                }
            });

            jQuery('ul.nav li.dropdown').hover(function () {
                jQuery(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn();
            }, function () {
                jQuery(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut();
            });

            $(window).resize(function () {
                if ($(window).width() < 776) {
                    $("#sidebar").insertAfter($("#content"));
                } else {
                    $("#sidebar").prepend($("#containingrow"));
                }
            });

            $(document).ready(function () {
                if ($(window).width() < 768) {
                    $("#sidebar").insertAfter($("#content"));
                }
            });
	</script>
    
    <script type="text/javascript">
        var theObject = document.getElementById("NEI_SubForm")
        theObject.style.display = "block"

        $(function () {
            setIFrameSize();
            $(window).resize(function () {
                setIFrameSize();
            });
        });

        function setIFrameSize() {
            var windowSize = $(window).width();
            var parentDivWidth = $("#myframe").parent().width();
            $("#myframe")[0].setAttribute("width", parentDivWidth);
            if (windowSize <= 1023 && windowSize >= 480) {
                $("#myframe")[0].setAttribute("height", "170");
            }
            else {
                $("#myframe")[0].setAttribute("height", "148");
            }
        }
      </script>

<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>

    
</body>
</html>
