<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Publications.aspx.vb" Inherits="nativeamericanintervention_Publications" %>

<html>
<!DOCTYPE html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <!-- InstanceBeginEditable name="doctitle" -->
    <title>Intervention Research to Improve Native American Health (IRINAH) - National Cancer Institute - Cancer Control and Population Sciences</title>
    <!-- InstanceEndEditable -->
    <link rel="icon" type="image/jpeg" href="/images/favicon.ico">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="keywords" content="nci, dccps, Cancer Control and Population Sciences, cancer">
    <meta name="author" content="">
    <!-- InstanceBeginEditable name="metatags" -->
    <meta name="description" content="" />
    <!-- InstanceEndEditable -->

    <link href="../css/style.css" rel="stylesheet">
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/bootstrap-responsive.css" rel="stylesheet">
    <link href="../css/bootstrap-nci.css" rel="stylesheet">
    <link href="../css/native-style.css" rel="stylesheet">
    <link href="../css/print.css" rel="stylesheet" media="print" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script>document.createElement('footer');</script>
      <script src="/js/html5shiv.js"></script>
    <![endif]-->

    <!-- Fav and touch icons -->
    <style type="text/css" id="holderjs-style">
        .holderjs-fluid {
            font-size: 16px;
            font-weight: bold;
            text-align: center;
            font-family: sans-serif;
            margin: 0;
        }
    </style>
    <!-- InstanceBeginEditable name="head" -->
    <!-- InstanceEndEditable -->

    <!-- RWB 8/31/2016 Custom code for the search ==-->

    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    <link href="/nativeamericanintervention/_css/modal.css" rel="stylesheet" />
    <link href="/nativeamericanintervention/_css/searchingspinner.css" rel="stylesheet" />
    <script src="/nativeamericanintervention/_scripts/search_results_paging.js"></script>
    <script src="/nativeamericanintervention/_scripts/autocomplete.js"></script>
    <link rel="stylesheet" href="/nativeamericanintervention/_css/sol.css" />
    <script type="text/javascript" src="/nativeamericanintervention/_scripts/sol.js"></script>
    <link rel="stylesheet" href="/nativeamericanintervention/_css/ccpubs.css" />

</head>

<body>
    <div id="skipmenu">
        <a href="#skip" class="skippy">Skip Navigation</a>
        <a id="top"></a>
    </div>


    <div class="modal-overlay">
        <div class="modalContainer">
            <img id="modalClose" alt="close icon" src="/nativeamericanintervention/images/close.gif" /><img class="modalDefaultImage" id="modalimage" alt="image for modal" src="/images/spacer.gif" />

            <div id="p_abstract"></div>

        </div>
    </div>

    <div class="searchmodal-overlay">
        <div class="searchmodalContainer">


            <img id="searchmodal_Spinner" alt="close icon" src="/nativeamericanintervention/images/ring-alt.gif" />


            <p id="modalloading_p">Loading...</p>
        </div>
    </div>
    <!-- end skipmenu -->

    <div id="header-nci">
        <a href="https://www.cancer.gov/">
            <img alt="National Cancer Institute" src="/images/native-banner.jpg">
        </a>
    </div>

    <div id="main-container">

        <!-- NAVBAR
    ================================================== -->


        <div class="navbar navbar-inverse">
            <div id="header-search" class="native">
                <form method="get" action="https://barney2.cit.nih.gov/search" name="search">
                    <input type="hidden" name="site" value="DCCPS" />
                    <input type="hidden" name="client" value="DCCPS_frontend" />
                    <input type="hidden" name="proxystylesheet" value="DCCPS_frontend" />
                    <input type="hidden" name="output" value="xml_no_dtd" />
                    <input type="hidden" name="filter" value="0" />
                    <input type="hidden" name="getfields" value="*" />
                    <label for="searchbox">Search: </label>
                    <input id="searchbox" type="text" name="q" size="15" maxlength="255" class="htextf" placeholder="Search" />
                    <input type="image" src="../images/hbutton-new.gif" class="hbutton" name="btnG" id="btnG" alt="Search" />
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
                        <li><a href="/nativeamericanintervention/index.html">Home</a></li>
                        <li>
                            <a href="/nativeamericanintervention/funded.html">Funded Projects</a></li>
                        <li>
                            <a href="/nativeamericanintervention/contacts.html">Agency Contacts</a></li>
                        <li>
                            <a href="/nativeamericanintervention/objectives.html">Specific Research Objectives</a>
                        </li>
                        <li>
                            <a href="/nativeamericanintervention/publications.aspx">Literature Database</a>
                        </li>
                        <li>
                            <a href="/nativeamericanintervention/resources.html">Grant Preparation</a>
                        </li>
                        <li>
                            <a href="/nativeamericanintervention/other-resources.html">Other Resources</a>
                        </li>

                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
            <!-- /.navbar-inner -->
            <div id="topbanner">
                <!-- InstanceBeginEditable name="Top Banner" -->
                <!-- InstanceEndEditable -->
            </div>
        </div>
        <!-- /.navbar -->
        <form runat="server">
            <div class="container-fluid">
                <a id="skip"></a>
                <div class="row-fluid">
                    <div id="sidebar" class="span3">
                        <div class="well sidebar-nav">


                            <div id="dv_filterOptions">


                                <label class="filterLabel" for="TXT_SRCH">Search:</label>
                                <input class="width-85" id="TXT_SRCH" name="TXT_SRCH" type="text" />

                                <input id="BTN_Search_Pubs" name="BTN_Search_Pubs" class="BTN_Search_Pubs_resultsPage" type="image" src="/images/hbutton-new.gif" alt="Search Publications" />

                                <a href="javascript:void(0)" class="btn" id="filters-btn">Filters</a>
                                <div class="filters-section">




                                    <label class="filterLabel">Cancer Site:</label>

                                    <asp:Repeater ID="DDL_CancerSite" runat="server">
                                        <ItemTemplate>

                                            <label id="LABEL_child_<%# Eval("PK_CancerSite")%>" class="chkbox_label">
                                                <input id="CK_CancerSite_<%# Eval("PK_CancerSite")%>" class="Checkbox_CancerSite" value="<%# Eval("PK_CancerSite")%>" type="checkbox" /><%# Eval("CancerSite")%></label>

                                        </ItemTemplate>
                                    </asp:Repeater>


                                    <label class="filterLabel">Cancer Continuum:</label>

                                    <asp:Repeater ID="RPTR_CancerSites" runat="server">
                                        <ItemTemplate>

                                            <label id="LABEL_child_<%# Eval("PK_CancerConsortium")%>" class="chkbox_label">
                                                <input id="CK_CancerConsortium_<%# Eval("PK_CancerConsortium")%>" class="Checkbox_CancerSite" value="<%# Eval("PK_CancerConsortium")%>" type="checkbox" /><%# Eval("CancerConsortium")%></label>

                                        </ItemTemplate>
                                    </asp:Repeater>



                                    <label class="filterLabel">Intervention Site:</label>


                                    <asp:Repeater ID="RPTR_InterventionSite" runat="server">
                                        <ItemTemplate>
                                            <label id="LABEL_child_<%# Eval("PK_InterventionSite")%>" class="chkbox_label">
                                                <input id="CK_InterventionSite_<%# Eval("PK_InterventionSite")%>" class="Checkbox_CancerSite" value="<%# Eval("PK_InterventionSite")%>" type="checkbox" />
                                                <%# Eval("InterventionSite")%>
                                            </label>

                                        </ItemTemplate>
                                    </asp:Repeater>




                                    <label class="filterLabel">Intervention Type:</label>

                                    <asp:Repeater ID="RPTR_Keyword" runat="server">
                                        <ItemTemplate>

                                            <label id="LABEL_child_<%# Eval("PK_Keyword")%>" class="chkbox_label">
                                                <input id="CK_InterventionKeywords_<%# Eval("PK_Keyword")%>" class="Checkbox_CancerSite" value="<%# Eval("PK_Keyword")%>" type="checkbox" />
                                                <%# Eval("Keyword")%></label>

                                        </ItemTemplate>
                                    </asp:Repeater>



                                    <input id="Button1" class="btn btn-info" onclick="ClearFilters();" type="button" value="Clear Filters" />
                                </div>
                            </div>






                        </div>
                        <!--/.well -->
                    </div>
                    <div id="content" class="span9">
                        <!-- InstanceBeginEditable name="Breadcrumbs" -->
                        <!-- InstanceEndEditable -->
                        <div class="row-fluid">
                            <!-- InstanceBeginEditable name="Main Content" -->
                            <div class="span12">

                                <h1 id="hyp_home_searchResults">Literature Database: Cancer Interventions</h1>
                                <div id="P_Blurb">


                                    <p>The Literature Database: Cancer  Interventions is a searchable database of citations since 1994 for cancer control  intervention research with American Indian, Alaska Native, and Native Hawaiian (United States) and First Nations (Canada) populations. </p>
                                    <p>Please use the search bar and  filters to identify relevant literature. At this time, eight &ldquo;Cancer Sites&rdquo; are  listed because the literature currently included only addresses those cancer sites. Over time the list will grow. </p>
                                    <p>If you have any comments or questions,  please contact Shobha Srinivasan at <a href="mailto:ss688k@nih.gov">ss688k@nih.gov</a>. </p>


                                </div>

                                <div class="container-fluid" id="div_TopNav_rwb">
                                    <div class="row-fluid" id="srch_rsults_top">

                                        <div id="divLink_export" class="span12">
                                            <select id="ddl_export">
                                                <option value="1">Export to Excel</option>
                                                <option value="2">Export to Word</option>
                                                <option value="3">Export to Word (With Abstract)</option>
                                            </select>
                                            <input id="BTN_Export" class="btn btn-info" onclick="DoExport_Clicked();" type="button" value="Export" />
                                            <a target="_blank" style="display: none;" href="javascript:void(0)" id="LINK_Export_Dyn">Export XLS</a>
                                            <a target="_blank" style="display: none;" href="javascript:void(0)" id="LINK_Export_Dyn_WORD">Export DOC</a>
                                            <a target="_blank" style="display: none;" href="javascript:void(0)" id="LINK_Export_Dyn_WORD_ABS">Export DOC ABS</a>

                                        </div>

                                    </div>


                                    <div class="row-fluid" id="srch_rsults_top_Items">
                                        <div class="span6">
                                            <div id="numberofitemsfound"></div>
                                        </div>
                                        <div class="span6" id="ItemsCount">
                                            <label>Items per page:</label>
                                            <select id="select_itemsperpage">
                                                <option>10</option>
                                                <option>25</option>
                                                <option>50</option>
                                            </select>
                                        </div>
                                    </div>

                                    <hr />
                                    <ul id="dv_results">
                                    </ul>


                                    <div id="navigation_Panel_RWB">
                                        <a id="dv_prev" href="javascript:void(0)">< Previous</a>
                                        <a id="dv_next" href="javascript:void(0)">Next ></a>
                                    </div>


                                </div>
                                <!-- InstanceEndEditable -->
                            </div>
                            <!--/row-->
                        </div>
                        <!--/span-->

                        <!--/span-->
                    </div>
                    <!-- /.row -->
                    <hr class="featurette-divider">
                    <!-- /END THE FEATURETTES -->
                </div>
        </form>
        <!-- /.container -->
    </div>
    <!-- FOOTER -->
    <footer>
        <div class="container-fluid">
            <div class="row-fluid bottom-border bottom-margin">
                <div class="row-fluid">
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/index.html">Home</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/funded.html">Currently Funded Projects</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="http://grants.nih.gov/grants/guide/pa-files/PAR-14-260.html">Funding Opportunity (PAR-14-260)</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/contacts.html">Agency Contacts</a></p>
                    </div>
                    <!--/span-->
                </div>
                <div class="row-fluid">
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/objectives.html">Specific Research Objectives and Scope by Institute</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/resources.html">Grant Preparation Resources</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="/nativeamericanintervention/other-resources.html">Other Resources</a></p>
                    </div>
                    <!--/span-->
                    <div class="span3">
                        <p class="footer-header"><a href="/research-emphasis/index.html">Cross-Cutting Areas</a></p>
                    </div>
                    <!--/span-->
                </div>
                <div class="last-updated">
                    <p class="center">
                        <strong>Last Updated:
                        <!-- InstanceBeginEditable name="Last Updated" -->
                            June 17, 2015<!-- InstanceEndEditable --></strong>
                    </p>
                    <a href="https://www.cancer.gov/contact" class="help-image">
                        <img class="footer-help" src="/images/footer-help-logo.png" alt="help-logo" /></a><p class="can-numb">
                            <strong>1-800-4-CANCER
                            <br />
                                (1-800-422-6237)</strong>
                        </p>
                </div>
            </div>
            <!--/row-->
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
                        <li>|</li>
                        <li><a href="/help.html">Help</a></li>
                    </ul>
                    <ul>
                        <li><a href="http://www.hhs.gov/">U.S. Department of Health and Human Services</a></li>
                        <li>|</li>
                        <li><a href="https://www.nih.gov/">National Institutes of Health</a></li>
                        <li>|</li>
                        <li><a href="https://www.cancer.gov/">National Cancer Institute</a></li>
                        <li>|</li>
                        <li><a href="https://www.usa.gov/">USA.gov</a></li>
                    </ul>
                </div>
                <!--/span-->
                <p class="center">NIH...Turning Discovery Into Health <sup>&reg;</sup></p>
            </div>
            <!--/row-->
        </div>
    </footer>
    <!-- javascript -->
    <%--<script src="../js/jquery-1.10.1.min.js"></script>--%>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/respond.min.js"></script>

    <script>
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


    <script type="text/javascript" src="/JS/Omniture/WA_DCCPS_PageLoad.js"></script>

    <script>
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-47020801-1', 'cancer.gov');
        ga('send', 'pageview');
        ga('set', 'anonymizeIp', true);

    </script>

    <!-- InstanceBeginEditable name="Scripts" -->
    <!-- InstanceEndEditable -->
</body>
<!-- InstanceEnd -->
</html>
