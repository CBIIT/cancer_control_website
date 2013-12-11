
// Version 2.1
var wa_production_report_suite = 'ncidccps-cancercontrolpopulationsciences';
var wa_dev_report_suite = 'ncidccps-cancercontrolpopulationsci-dev';
var wa_channel = ''; 
var wa_search_function_name = ''; 
var wa_production_url_match = ''; 
var wa_production_linkInternalFilters = 'javascript:,cancercontrol.cancer.gov/is,';
wa_production_linkInternalFilters += 'ccplanet.cancer.gov,';
wa_production_linkInternalFilters += 'cancercontrolplanet.org,';
wa_production_linkInternalFilters += 'ccplanettraining.cancer.gov,';
wa_production_linkInternalFilters += 'appliedresearch.cancer.gov,';
wa_production_linkInternalFilters += 'healthservices.cancer.gov,';
wa_production_linkInternalFilters += 'outcomes.cancer.gov,';
wa_production_linkInternalFilters += 'riskfactor.cancer.gov,';
wa_production_linkInternalFilters += 'breastscreening.cancer.gov,';
wa_production_linkInternalFilters += 'crn.cancer.gov,';
wa_production_linkInternalFilters += 'appliedresearch.cancer.gov/icsn,';
wa_production_linkInternalFilters += 'cancercontrol.cancer.gov/brp,';
wa_production_linkInternalFilters += 'staffprofiles.cancer.gov/brp,';
wa_production_linkInternalFilters += 'hints.cancer.gov,';
wa_production_linkInternalFilters += 'secure.mmgct.com/hints-gem,';
wa_production_linkInternalFilters += 'www.smokefree.gov,';
wa_production_linkInternalFilters += 'women.smokefree.gov,';
wa_production_linkInternalFilters += 'teen.smokefree.gov,';
wa_production_linkInternalFilters += 'espanol.smokefree.gov,';
wa_production_linkInternalFilters += 'meetings.smokefree.gov,';
wa_production_linkInternalFilters += 'class.cancer.gov,';
wa_production_linkInternalFilters += 'blog-epi.grants.cancer.gov,';
wa_production_linkInternalFilters += 'epi.grants.cancer.gov,';
wa_production_linkInternalFilters += 'li-gis.cancer.gov,';
wa_production_linkInternalFilters += 'surveillance.cancer.gov,';
wa_production_linkInternalFilters += 'costprojections.cancer.gov,';
wa_production_linkInternalFilters += 'cisnet.cancer.gov,';
wa_production_linkInternalFilters += 'cisnet.cancer.gov/projections/colorectal,';
wa_production_linkInternalFilters += 'gis.cancer.gov,';
wa_production_linkInternalFilters += 'sae.cancer.gov,';
wa_production_linkInternalFilters += 'statfund.cancer.gov,';
wa_production_linkInternalFilters += 'statecancerprofiles.cancer.gov,';
wa_production_linkInternalFilters += 'cancercontrol.cancer.gov/ocs,';
wa_production_linkInternalFilters += 'cancercontrol.cancer.gov/funding,';
wa_production_linkInternalFilters += 'cancercontrol.cancer.gov,';
wa_production_linkInternalFilters += 'maps.cancer.gov/overview,';
wa_production_linkInternalFilters += 'progressreport.cancer.gov,';
wa_production_linkInternalFilters += 'publications.cancer.gov,';
wa_production_linkInternalFilters += 'seer.cancer.gov,';
wa_production_linkInternalFilters += 'training.seer.cancer.gov,';
wa_production_linkInternalFilters += 'intranet.cancer.gov/dccps';

var wa_dev_linkInternalFilters = 'javascript:'; 
var wa_is_production_report_suite = false;
var wa_p30 = "";
var wa_p44 = "";
var wa_hier2 = "";
var page_URL = document.URL;


if (page_URL.indexOf('appliedresearch.cancer.gov/icsn') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'appliedresearch.cancer.gov/icsn/';
	wa_is_production_report_suite = true;
	wa_p30 = 'International Screening Network';
}
else if (page_URL.indexOf('appliedresearch.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'appliedresearch.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Applied Research Main';
}
else if (page_URL.indexOf('breastscreening.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'breastscreening.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Breast Cancer Surveillance Consortium';
}
else if (page_URL.indexOf('cancercontrol.cancer.gov/brp') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov/brp';
	wa_is_production_report_suite = true;
	wa_p30 = 'Behavioral Research Main';
	wa_p44 = 'BRP Main';
}
else if (page_URL.indexOf('staffprofiles.cancer.gov/brp') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov/brp';
	wa_is_production_report_suite = true;
	wa_p30 = 'Behavioral Research Main';
	wa_p44 = 'BRP Staff and Grantee Profiles';
}
else if (page_URL.indexOf('cancercontrol.cancer.gov/funding') != -1) {	
	wa_channel = 'DCCPS - OD Funding';
	wa_search_function_name = 'DCCPS - OD Funding - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov/funding';
	wa_is_production_report_suite = true;
}
else if (page_URL.indexOf('cancercontrol.cancer.gov/is') != -1) {	
	wa_channel = 'DCCPS - IS';
	wa_search_function_name = 'DCCPS - IS - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov/is';
	wa_is_production_report_suite = true;
	wa_p30 = 'Implementation Science Main';
	wa_p44 = 'IS Main';
}
else if (page_URL.indexOf('cancercontrol.cancer.gov/ocs') != -1) {	
	wa_channel = 'DCCPS - OCS';
	wa_search_function_name = 'DCCPS - OCS - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov/ocs';
	wa_is_production_report_suite = true;
}
else if (page_URL.indexOf('cancercontrol.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - OD';
	wa_search_function_name = 'DCCPS - OD - Search';
	wa_production_url_match = 'cancercontrol.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'DCCPS OD Main';
}
else if (page_URL.indexOf('cancercontrolplanet.org') != -1) {	
	wa_channel = 'DCCPS - IS';
	wa_search_function_name = 'DCCPS - IS - Search';
	wa_production_url_match = 'cancercontrolplanet.org';
	wa_is_production_report_suite = true;
	wa_p30 = 'PLANET';
	wa_p44 = 'CC PLANET International';
}
else if (page_URL.indexOf('ccplanet.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - IS';
	wa_search_function_name = 'DCCPS - IS - Search';
	wa_production_url_match = 'ccplanet.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'PLANET';
	wa_p44 = 'CC PLANET';
}
else if (page_URL.indexOf('ccplanettraining.cancer.gov') != -1) {
	wa_channel = 'DCCPS - IS';
	wa_search_function_name = 'DCCPS - IS - Search';
	wa_production_url_match = 'ccplanettraining.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'PLANET';
	wa_p44 = 'CC PLANET Training';
}
else if (page_URL.indexOf('cisnet.cancer.gov/projections/colorectal') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'cisnet.cancer.gov/projections/colorectal';
	wa_is_production_report_suite = true;
	wa_p30 = 'CISNET';
	wa_p44 = 'CISNET Projections'; 
}
else if (page_URL.indexOf('cisnet.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'cisnet.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'CISNET';
	wa_p44 = 'CISNET Main';	
}
else if (page_URL.indexOf('class.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'class.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'CLASS';
	wa_p44 = 'CLASS';
}
else if (page_URL.indexOf('costprojections.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'costprojections.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Costs of Care';
}
else if (page_URL.indexOf('crn.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'crn.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'HMO Cancer Research Network';
}
else if (page_URL.indexOf('blog-epi.grants.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - EGRP';
	wa_search_function_name = 'DCCPS - EGRP - Search';
	wa_production_url_match = 'epi.grants.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Epidemiology Matters Blog';
}
else if (page_URL.indexOf('epi.grants.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - EGRP';
	wa_search_function_name = 'DCCPS - EGRP - Search';
	wa_production_url_match = 'epi.grants.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Epidemiology Genomics Main';
}
else if (page_URL.indexOf('espanol.smokefree.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'espanol.smokefree.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Smokefree';
	wa_p44 = 'Smokefree Espanol';
}
else if (page_URL.indexOf('li-gis.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - EGRP';
	wa_search_function_name = 'DCCPS - EGRP - Search';
	wa_production_url_match = 'li-gis.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'LI GIS';
}
else if (page_URL.indexOf('gis.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'gis.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'GIS';
}
else if (page_URL.indexOf('healthservices.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'healthservices.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Health Services Economics';
}
else if (page_URL.indexOf('hints.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'hints.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'HINTS';
	wa_p44 = 'HINTS main';
}
else if (page_URL.indexOf('intranet.cancer.gov/dccps') != -1) {	
	wa_channel = 'DCCPS - Intranet';
	wa_search_function_name = 'DCCPS - Intranet - Search';
	wa_production_url_match = 'intranet.cancer.gov/dccps';
	wa_is_production_report_suite = true;
}
else if (page_URL.indexOf('maps.cancer.gov/overview') != -1) {	
	wa_channel = 'DCCPS - OD';
	wa_search_function_name = 'DCCPS - OD - Search';
	wa_production_url_match = 'maps.cancer.gov/overview';
	wa_is_production_report_suite = true;
	wa_p30 = 'Funding Info and Trends';
}
else if (page_URL.indexOf('meetings.smokefree.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'meetings.smokefree.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Smokefree';
	wa_p44 = 'Smokefree Meetings';
}
else if (page_URL.indexOf('outcomes.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'outcomes.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Outcomes Research';
}
else if (page_URL.indexOf('progressreport.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - OD';
	wa_search_function_name = 'DCCPS - OD - Search';
	wa_production_url_match = 'progressreport.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Cancer Trends Progress Report';
}
else if (page_URL.indexOf('publications.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - OD';
	wa_search_function_name = 'DCCPS - OD - Search';
	wa_production_url_match = 'publications.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Cancer Control Publications';
}
else if (page_URL.indexOf('riskfactor.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - ARP';
	wa_search_function_name = 'DCCPS - ARP - Search';
	wa_production_url_match = 'riskfactor.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Risk Factor Monitoring Methods';
}
else if (page_URL.indexOf('sae.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'sae.cancer.gov';
	wa_is_production_report_suite = true;
    wa_p30 = 'Small Area Estimates';
}
else if (page_URL.indexOf('secure.mmgct.com/hints-gem') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'secure.mmgct.com/hints-gem';
	wa_is_production_report_suite = true;
	wa_p30 = 'HINTS';
	wa_p44 = 'HINTS GEM';
}
else if (page_URL.indexOf('training.seer.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SEER';
	wa_search_function_name = 'DCCPS - SEER - Search';
	wa_production_url_match = 'training.seer.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'SEER Training';
}
else if (page_URL.indexOf('seer.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SEER';
	wa_search_function_name = 'DCCPS - SEER - Search';
	wa_production_url_match = 'seer.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'SEER Main';
}
else if (page_URL.indexOf('statecancerprofiles.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'statecancerprofiles.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'State Cancer Profiles';
}
else if (page_URL.indexOf('statfund.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';	
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'statfund.cancer.gov';
	wa_is_production_report_suite = true;
    wa_p30 = 'StatFund';
}
else if (page_URL.indexOf('surveillance.cancer.gov') != -1) {	
	wa_channel = 'DCCPS - SRP';
	wa_search_function_name = 'DCCPS - SRP - Search';
	wa_production_url_match = 'surveillance.cancer.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Surveillance Research Main';
}
else if (page_URL.indexOf('teen.smokefree.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'teen.smokefree.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Smokefree';
	wa_p44 = 'Smokefree Teen';
}
else if (page_URL.indexOf('women.smokefree.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'women.smokefree.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Smokefree';
	wa_p44 = 'Smokefree Women';
}
else if (page_URL.indexOf('www.smokefree.gov') != -1) {	
	wa_channel = 'DCCPS - BRP';
	wa_search_function_name = 'DCCPS - BRP - Search';
	wa_production_url_match = 'www.smokefree.gov';
	wa_is_production_report_suite = true;
	wa_p30 = 'Smokefree';
	wa_p44 = 'Smokefree';
}
else {
	wa_channel = 'DCCPS - Development';
	wa_search_function_name = 'DCCPS - Development - Search';
	wa_is_production_report_suite = false;
}


if (wa_is_production_report_suite) 
    // production 
    var s_account=wa_production_report_suite;
else 
    // non-production
    var s_account=wa_dev_report_suite;

var pageNameOverride = location.hostname.toLowerCase() + location.pathname.toLowerCase();