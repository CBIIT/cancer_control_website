<%@ Page Language="VB" AutoEventWireup="false" CodeFile="flashe-terms.aspx.vb" Inherits="terms" %>

<!DOCTYPE html>
<html lang="en"><head>
    <title>Behavioral Research Program - Cancer Control and Population Sciences</title>
    <link rel="icon" 
      type="image/jpeg" 
      href="/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="The Division of Cancer Control and Population Sciences (DCCPS) aims to reduce the risk, incidence, and deaths from cancer as well as enhance the quality of life for cancer survivors.">
    
    <!-- Le styles -->
    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../css/bootstrap-nci.css" rel="stylesheet">
    <link href="../brp/css/homepage.css" rel="stylesheet">
    <link href="../brp/css/brp-style.css" rel="stylesheet">
    <link href="../css/bootstrap-lightbox.min.css" rel="stylesheet">
    
  <script type="text/javascript">
function Validate()
{
	return false;
}

function SendToLyris()
{
  if (document.frm_SubScribe.TXT_Email.value == '')
  {
    alert ('You must enter an email address');
    return false;
  }
  
    apos=document.frm_SubScribe.TXT_Email.value.indexOf("@");
  dotpos=document.frm_SubScribe.TXT_Email.value.lastIndexOf(".");
  if (apos<1||dotpos-apos<2)
    {
		alert("You must enter a valid email address");
    	return false;
	}


  if (document.frm_SubScribe.RD_SubScribe[0].checked)
  {
	  document.frm_SubScribe_LYRIS.email.value = document.frm_SubScribe.TXT_Email.value;
    document.forms.frm_SubScribe_LYRIS.submit()


  }
  else if (document.frm_SubScribe.RD_SubScribe[1].checked)
  {
	  document.frm_UNSub_LYRIS.email.value = document.frm_SubScribe.TXT_Email.value;
    document.forms.frm_UNSub_LYRIS.submit()
	  
  }
  else 
  {
	  alert("You must select subscribe or unsubscribe");
  }
//  return false;
}


</script>

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
  	<div id="skipmenu">
	<a href="#skip" class="skippy">Skip Navigation</a>
	<a id="top"></a>
	</div> <!-- end skipmenu -->
    
	<div id="header-nci">
    	    <a href="http://cancercontrol.cancer.gov/"> <img alt="National Cancer Institute" src="../images/dccps-logo.png"> </a>
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
		<form method="get" action="http://search2.google.cit.nih.gov/search" name="search">
  	  <input type="hidden" name="site" value="DCCPS" />
  	  <input type="hidden" name="client" value="DCCPS_frontend" />
  	  <input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
  	  <input type="hidden" name="output" value="xml_no_dtd" />
      <input type="hidden" name="filter" value="0" />
  	  <input type="hidden" name="getfields" value="*" />
  	  <label for="searchbox">Search: </label>
        <input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" placeholder="Search" />
  	  <input type="image" src="../images/hbutton-new.gif"  class="hbutton" name="btnG" id="btnG" alt="Search" />
  	</form>
	</div>
          <div class="navbar-inner">
            <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
            <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <div class="nav-collapse collapse">
              <ul class="nav">
                <li class="active"><a href="/brp/">BRP Home</a></li>
                <li class="dropdown">
                  <a href="/brp/priority-areas/" class="hover-link">Priority Areas <b class="caret"></b></a>
                  <ul class="dropdown-menu">
  <li>                  	  <a href="/brp/tcrb/">Tobacco</a>  </li>
  <li>  <a href="/brp/hbrb/dietary_behaviors.html">Diet, Weight  and Physical Activity</a>  </li>
  <li>  <a href="/brp/hbrb/sun-protection.html">Sun  Protection</a>  </li>
  <li>  <a href="/brp/priority-areas/health-behaviors/hpv-vaccination.html">HPV  Vaccination</a>  </li>
  <li>  <a href="/brp/bbpsb/affective_science.html">Affect  and Emotion</a>  </li>
  <li>  <a href="/brp/bbpsb/cognitive-changes/index.html">Cognition</a>  </li>
  <li>  <a href="/brp/hcirb/social-media.html">Social  Media</a>  </li>
  <li><a href="/brp/srtb/big-data.html">Integrated  Data Analysis</a> </li>
</ul>
                </li>
                <li class="dropdown">
                  <a href="/brp/funding/" class="hover-link">Funding Opportunities <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/funding/index.html#apply">Apply for Grants</a></li>
                  	<li><a href="/brp/funding/index.html#sample">Sample  Grant Applications</a></li>
                  	<li><a href="/brp/funding/index.html#resources">Grantee Resources</a></li>
                  	<li><a href="http://staffprofiles.cancer.gov/brp/granteeList.do">Featured Grantees</a></li>
</ul>
                </li>
                <li class="dropdown">
                  <a href="/brp/research/index.html" class="hover-link">Data and Tools <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/research/index.html#rt">Tools</a></li>
                  	<li><a href="/brp/research/index.html#pus">Surveys</a></li>
                  	<li><a href="/brp/research/index.html#rmd">Measures and Databases</a></li>
                  	<li><a href="/brp/research/index.html#tcg">Tobacco Cessation Guides</a></li>
                  	<li><a href="/brp/research/index.html#pub">Publications, News, and Videos</a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="/brp/about.html" class="hover-link">About BRP <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                  	<li><a href="/brp/about.html#branches">Program Branches</a></li>
                    <li><a href="/brp/about.html#staff">Staff</a></li>
                    <li><a href="/brp/career_training.html">Career and Training</a></li>
                    <li><a href="/brp/about.html#networks">Networks and Collaborations</a></li>      	
                  </ul>
                </li>
</ul>
            </div><!--/.nav-collapse -->
          </div><!-- /.navbar-inner -->
        </div><!-- /.navbar -->
		<a name="skip"></a>
    <div>
    <form id="form1" runat="server">
    <h2>HINTS Data Terms of Use</h2>
    <p>
        It is of utmost importance to ensure the confidentiality of survey participants.
        Every effort has been made to exclude identifying information on individual respondents
        from the computer files. Some demographic information such as sex, race, etc., has
        been included for research purposes. NCI expects that users of the data set will
        adhere to the strictest standards of ethical conduct for the analysis and reporting
        of nationally collected survey data. It is mandatory that all research results be
        presented/published in a manner that protects the integrity of the data and ensures
        the confidentiality of participants.</p>
    <p>
        In order for the Health Information National Trends Survey (HINTS) to provide a
        public-use or another version of data to you, it is necessary that you agree to
        the following provisions.</p>
    <ol>
        <li>You will not present/publish data in which an individual can be identified. Publication
            of small cell sizes should be avoided. </li>
        <li>You will not attempt to link nor permit others to link the data with individually
            identified records in another database. </li>
        <li>You will not attempt to learn the identity of any person whose data are contained
            in the supplied file(s).</li>
        <li>If the identity of any person is discovered inadvertently, then the following should
            be done;
            <ol type="a">
                <li>no use will be made of this knowledge, </li>
                <li>the HINTS Program staff will be notified of the incident, </li>
                <li>no one else will be informed of the discovered identity.</li>
            </ol>
        </li>
        <li>You will not release nor permit others to release the data in full or in part to
            any person except with the written approval of the HINTS Program staff. </li>
        <li>If accessing the data from a centralized location on a time sharing computer system
            or LAN, you will not share your logon name and password with any other individuals.
            You will also not allow any other individuals to use your computer account after
            you have logged on with your logon name and password. </li>
        <li>For all software provided by the HINTS Program, you will not copy, distribute, reverse
            engineer, profit from its sale or use, or incorporate it in any other software system.
        </li>
        <li>The source of information should be cited in all publications. The appropriate citation
            is associated with the data file used. Please see Suggested Citations in the Download
            HINTS Data section of this Web site, or the Readme.txt associated with the ASCII
            text version of the HINTS data. </li>
        <li>Analyses of large HINTS domains usually produce reliable estimates, but analyses
            of small domains may yield unreliable estimates, as indicated by their large variances.
            The analyst should pay particular attention to the standard error and coefficient
            of variation (relative standard error) for estimates of means, proportions, and
            totals, and the analyst should report these when writing up results. It is important
            that the analyst realizes that small sample sizes for particular analyses will tend
            to result in unstable estimates.</li>
        <li>You may receive periodic e-mail updates from the HINTS administrators.</li>
    </ol>
    <p>
        <asp:CheckBox ID="chkAcceptTerm" runat="server" />
        <asp:Label ID="Label2" runat="server" AssociatedControlID="chkAcceptTerm" Text=" Marking this box indicates that I agree to comply with the above stated provisions."></asp:Label>
        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="&lt;br/&gt;Please check the box to proceed."
            ForeColor="Red"></asp:CustomValidator>
    </p>
    <p>
        <asp:Label ID="Label1" runat="server" AssociatedControlID="txtemailTerms" Text="Please enter your email:"></asp:Label>
        <asp:TextBox ID="txtemailTerms" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtemailTerms"
            Display="Dynamic" ErrorMessage="&lt;br/&gt;Please enter an email address." ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemailTerms"
            Display="Dynamic" ErrorMessage="&lt;br/&gt;Please enter a valid email address."
            ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </p>
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Accept" />
    </p>
    </form>
        </div>
        
        </div><!-- /.container -->
  	</div>
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
              <p class="center"><strong>Last Updated: July 2, 2015</strong></p>
       <a href="http://www.cancer.gov/contact" class="help-image"><img class="footer-help" src="/images/footer-help-logo.png" alt="help-logo" /></a><p class="can-numb"><strong>1-800-4-CANCER <br /> (1-800-422-6237)</strong></p>
                </div>
       </div><!--/row-->
          <div class="row-fluid">
            <div class="span12 footer-box center">
          	  <ul>
                <li><a href="/index.html">Site Home</a></li>
                <li>|</li>
                <li><a href="http://www.cancer.gov/contact">Contact Us</a></li>
                <li>|</li>
                <li><a href="http://www.cancer.gov/policies">Policies</a></li>
                <li>|</li>
<li><a href="http://www.cancer.gov/policies/disclaimer">Disclaimer</a></li>
                <li>|</li>
                <li><a href="http://www.cancer.gov/policies/accessibility">Accessibility</a></li>
                <li>|</li>
                <li><a href="http://www.cancer.gov/policies/foia">FOIA</a></li>
                <li>|</li>
                <li><a href="/help.html">Help</a></li>
              </ul>
              <ul>
                <li><a href="http://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
                <li>|</li>
                <li><a href="http://www.nih.gov/">National Institutes of Health</a></li>
                <li>|</li>
                <li><a href="http://www.cancer.gov/">National Cancer Institute</a></li>
                <li>|</li>
                <li><a href="http://www.usa.gov/">USA.gov</a></li>
              </ul>
            </div><!--/span-->
            <p class="center">NIH...Turning Discovery Into Health <sup>&reg;</sup></p>
          </div><!--/row-->
        </div>
      </footer>

    <script src="../js/jquery-1.10.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/bootstrap.lightbox.min.js"></script>
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
    <script src="../js/respond.min.js"></script>
    <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47020801-1', 'cancer.gov');
  ga('send', 'pageview');

</script>
<script type="text/javascript" src="/JS/Omniture/WA_DCCPS_PageLoad.js"></script>


	<script type="text/javascript">
 var theObject = document.getElementById("NEI_SubForm")
    theObject.style.display="block"

 var theObject2 = document.getElementById("Lyris_SubForm")
    theObject2.style.display="none"
</script>


  </body>
</html>
