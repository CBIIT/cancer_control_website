<%@ Page Language="VB" AutoEventWireup="false" CodeFile="flashe-subscribe.aspx.vb" Inherits="subscribe" %>

<!DOCTYPE html>
<html lang="en">
<head>
<script src="//assets.adobedtm.com/f1bfa9f7170c81b1a9a9ecdcc6c5215ee0b03c84/satelliteLib-339f9157d73ce92dfb58c341869b41fef294030a.js"></script>
    <title>FLASHE Listserv - Behavioral Research Program - Cancer Control and Population Sciences</title>
    <link rel="icon" 
      type="image/jpeg" 
      href="/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="The Division of Cancer Control and Population Sciences (DCCPS) aims to reduce the risk, incidence, and deaths from cancer as well as enhance the quality of life for cancer survivors.">
    
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../../css/bootstrap-nci.css" rel="stylesheet">
    <link href="../css/brp-style.css" rel="stylesheet">
    <link href="../../css/bootstrap-lightbox.min.css" rel="stylesheet">
    
    <style type="text/css">
        #form1 {
            max-width:300px;
        }
        label {
            display: inline;
        }
        .newsSubmit { float: right; }
        .radiobutton {display:inline;}
        .input-append, .input-prepend {
            width: 100%;
        }
        .input-append input#txtemailTerms {
            width:50%;
        }
        .input-append input#btnSubmit {
            width:40%;
        }
    </style>

<script type="text/javascript">
(function() {
var hm = document.createElement('script'); hm.type ='text/javascript'; hm.async = true;
hm.src = ('++u-heatmap-it+log-js').replace(/[+]/g,'/').replace(/-/g,'.');
var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(hm, s);
})();
</script>
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script>document.createElement('footer');</script>
      <script src="js/html5shiv.js"></script>
    <![endif]-->
  <style type="text/css" id="holderjs-style">.holderjs-fluid {font-size:16px;font-weight:bold;text-align:center;font-family:sans-serif;margin:0}</style>
  </head>
<body>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-P5PMZ88"
height="0" width="0" style="display:none;visibility:hidden" title="Google Tag Manager"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<!-- skip navigation of site -->
  	<div id="skipmenu">
	<a href="#skip" class="skippy">Skip Navigation</a>
	<a id="top"></a>
	</div> <!-- end skipmenu -->
    
	<div id="header-nci">
    	    <a href="/"> <img alt="National Cancer Institute" src="../../images/dccps-logo.png"> </a>
    </div>
    <div id="header">
      <div id="cancercontrol-banner">
    	<span>Behavioral Research Program</span>
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
  	  <input type="image" src="../../images/hbutton-new.gif"  class="hbutton" name="btnG" id="btnG" alt="Search" />
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
                <li><a href="/brp/">BRP Home</a></li>
                <li class="dropdown">
                  <a href="/brp/priority-areas/" class="hover-link">Priority Areas <b class="caret"></b></a>
                  <ul class="dropdown-menu">
  <li>                  	  <a href="/brp/tcrb/">Tobacco</a>  </li>
  <li>  <a href="/brp/hbrb/dietary_behaviors.html">Diet, Weight  and Physical Activity</a>  </li>
  <li>  <a href="/brp/hbrb/sun-protection.html">Sun  Protection</a>  </li>
  <li>  <a href="/brp/priority-areas/health-behaviors/hpv-vaccination.html">HPV  Vaccination</a>  </li>
  <li>  <a href="/brp/bbpsb/affective_science.html">Affect  and Emotion</a>  </li>
  <li>  <a href="/brp/bbpsb/cognitive-changes.html">Cognition</a>  </li>
  <li>  <a href="/brp/hcirb/social-media.html">Social  Media</a>  </li>
  <li><a href="/brp/priority-areas/big-data.html">Integrated  Data Analysis</a> </li>
</ul>
                </li>
                <li class="dropdown">
                  <a href="/brp/funding/" class="hover-link">Funding Opportunities <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/funding/index.html#apply">Apply for Grants</a></li>
                  	<li><a href="/brp/funding/index.html#sample">Sample  Grant Applications</a></li>
                  	<li><a href="/brp/funding/index.html#resources">Grantee Resources</a></li>
                  	<li><a href="https://staffprofiles.cancer.gov/brp/granteeList.do">Featured Grantees</a></li>
</ul>
                </li>
                <li class="dropdown">
                  <a href="/brp/research/index.html" class="hover-link">Data and Tools <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/research/index.html#rt">Tools</a></li>
                  	<li><a href="/brp/research/index.html#pus">Surveys</a></li>
                  	<li><a href="/brp/research/index.html#rmd">Measures and Databases</a></li>
                  	<li><a href="/brp/research/index.html#tcr">Tobacco Cessation Guides</a></li>
                  	<li><a href="/brp/research/index.html#pub">Publications, News, and Videos</a></li>
                  </ul>
                </li>
                <li class="dropdown active">
                  <a href="/brp/about.html" class="hover-link">About BRP <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/about.html#branches">Program Branches</a></li>
                    <li><a href="/brp/about.html#staff">Staff</a></li>
                    <li><a href="/brp/career_training.html">Career and Training</a></li>
                    <li><a href="/brp/about.html#networks">Networks and Collaborations</a></li>
                    <li><a href="/brp/events.html">Events</a></li>
                  </ul>
                </li>
</ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->
        <div class="container-fluid">
        <div class="row-fluid">
          <div id="content" class="span9">
        
        <div class="row">
                <div class="span12">
                  <ul class="breadcrumb">
                    <li class="home-breadcrumb"> <a href="/brp/">Home</a> </li>
                    <li class="parent">
    <div class="heading"><a href="/brp/about.html">About BRP</a></div>       <div class="divider"><span>></span></div>
  </li>
<li class="parent">
    <div class="heading"><a href="/brp/hbrb/index.html">HBRB</a></div>       <div class="divider"><span>></span></div>
  </li>
  <li class="parent">
    <div class="heading"><a href="/brp/hbrb/flashe.html">FLASHE</a></div>       <div class="divider"><span>></span></div>
  </li>
                    <li class="active">
                      <div class="heading">FLASHE Listserv</div>
                      <div class="divider"><span>></span></div>
                    </li>
                  </ul>
                </div>
              </div>
              
		<a name="skip"></a>
            <div class="row-fluid">
    <div class="listimage">
    <h1>FLASHE Listserv</h1>

        <p>Use the following form to subscribe or unsubscribe from the FLASHE Listserv.</p>
        <div id="thankyou" runat="server"></div>
    <form id="form1" runat="server">
        <div>
                <asp:Label ID="Label1" runat="server" AssociatedControlID="txtemailTerms" Text="Your email:"></asp:Label><br />
                <div class="input-append">
                    <asp:TextBox ID="txtemailTerms" runat="server"></asp:TextBox>    
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" class="btn" type="button" />
                </div>
                <div class="radiobutton"> 
                <asp:RadioButton ID="RD_Sub" runat="server" GroupName="ISsubunsub" />
                    <label for="RD_Sub">Subscribe</label>
                </div>
            <br/> 
                <div class="radiobutton"> 
                    <asp:RadioButton ID="RD_Unsub" runat="server" GroupName="ISsubunsub" />
                    <label for="RD_Unsub">Unsubscribe</label>
                    </div> 
                    <br /><br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" CssClass="alert" ErrorMessage="Please check the box to proceed."
                     ForeColor="Red"></asp:CustomValidator>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailTerms"
                 Display="Dynamic" ErrorMessage="Please enter an email address." CssClass="alert"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailTerms"
                 Display="Dynamic" ErrorMessage="Please enter a valid email address." CssClass="alert"
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </form>
        </div></div>
        
        </div><!-- /.container -->
        <div class="span3" id="sidebar">
              <div class="well sidebar-nav">
                <ul class="nav nav-list">
                  <li class="nav-header"><a href="/brp/about.html#brp">Behavioral Research In Cancer Prevention and Control</a></li>
                  <li class="nav-header"><a href="/brp/about.html#branches">Program Branches</a></li>
                  <li class="nav-header"><a href="/brp/about.html#staff">Program Staff</a></li>
                </ul>
              </div>
              <!--/.well -->
            <div class="newsHighlights">
            	<h2>BRP Branches</h2>
                <p><a href="/brp/bbpsb/" class="document">Basic Biobehavioral and Psychological Sciences</a></p>
                <p><a href="/brp/hbrb/" class="document">Health Behaviors</a></p>
                <p><a href="/brp/hcirb/" class="document">Health Communication and Informatics</a></p>
                <p><a href="/brp/tcrb/" class="document">Tobacco Control</a></p>
            </div>

            </div>
</div></div></div>
    <!-- FOOTER -->
      <footer>
      	<div class="container-fluid">
        	<div class="row-fluid bottom-border bottom-margin">
            <div class="row-fluid">
             <div class="span4">
             	<p class="footer-header"><a href="/brp/">BRP Home</a></p>
             </div><!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/brp/priority-areas/">Priority Areas</a></p>
             </div>             <!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/brp/funding/">Funding Opportunities</a></p>
             </div><!--/span-->
</div>
<div class="row-fluid">
             <div class="span4">
             	<p class="footer-header"><a href="/brp/research/">Data and Tools</a></p>
             </div><!--/span-->
             <div class="span4">
             	<p class="footer-header"><a href="/brp/about.html">About BRP</a></p>
             </div><!--/span-->
             <div class="span4">
               <p class="footer-header"><a href="/brp/archive/">BRP Archive</a></p>
             </div><!--/span-->
</div>
            <div class="last-updated">
              <p class="center"><strong>Last Updated: November 18, 2015</strong></p>
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
                <li><a href="https://www.cancer.gov/policies">Policies</a></li>
                <li>|</li>
<li><a href="https://www.cancer.gov/policies/disclaimer">Disclaimer</a></li>
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

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
    <script src="../../js/bootstrap.lightbox.min.js"></script>
    <script>
      !function ($) {
        $(function(){
          $('#myCarousel').carousel()
        })
      }(window.jQuery)
	  $('#playButton').click(function () {
		  $('#myCarousel').carousel('cycle');
	  });
	  $('#pauseButton').click(function () {
		  $('#myCarousel').carousel('pause');
	  });

	jQuery('ul.nav li.dropdown').hover(function() {
  jQuery(this).find('.dropdown-menu').stop(true, true).delay(100).fadeIn();
}, function() {
  jQuery(this).find('.dropdown-menu').stop(true, true).delay(100).fadeOut();
 
});
	 
	 // This adds 'placeholder' to the items listed in the jQuery .support object. 
    jQuery(function() {
       jQuery.support.placeholder = false;
       test = document.createElement('input');
       if('placeholder' in test) jQuery.support.placeholder = true;
    });
    // This adds placeholder support to browsers that wouldn't otherwise support it. 
    $(function() {
       if(!$.support.placeholder) { 
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
	
	// This adds thumbnail support to the carousel 
	  jQuery(document).ready(function($) {
 
        $('#myCarousel').carousel({
                interval: 8000
        });
 
        //Handles the carousel thumbnails
        $('[id^=carousel-selector-]').click( function(){
                var id_selector = $(this).attr("id");
                var id = id_selector.substr(id_selector.length -1);
                var id = parseInt(id);
                $('#myCarousel').carousel(id);
        });
 
 
        // When the carousel slides, change the background of the hexagons
        $('#myCarousel').on('slid', function (e) {
                var id = $('.item.active').data('slide-number');
				
				if (id === 0) {
					document.getElementById("thumb1").src = "images/carousel-thumb-active.png";
				}
				else {
					document.getElementById("thumb1").src = "images/carousel-thumb.png";
				}
				
				if (id === 1) {
					document.getElementById("thumb2").src = "images/carousel-thumb-active.png";

				}
				else {
					document.getElementById("thumb2").src = "images/carousel-thumb.png";
				}
				
				if (id === 2) {
					document.getElementById("thumb3").src = "images/carousel-thumb-active.png";

				}
				else {
					document.getElementById("thumb3").src = "images/carousel-thumb.png";
				}
				
				if (id === 3) {
					document.getElementById("thumb4").src = "images/carousel-thumb-active.png";

				}
				else {
					document.getElementById("thumb4").src = "images/carousel-thumb.png";
				}
        });
               
			    // document.getElementById("thumb1").src = "images/carousel-thumb-active.png";
				// document.getElementById("thumb2").src = "images/carousel-thumb-active.png";
		
});

	</script>
    <script src="../../js/respond.min.js"></script>
<script type="text/javascript" src="https://static.cancer.gov/webanalytics/WA_DCCPS_PageLoad.js"></script>
  <script type="text/javascript">_satellite.pageBottom();</script>
</body>
</html>
