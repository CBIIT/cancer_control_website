
// Version 2.1
if (wa_is_production_report_suite)
    // production 
    s.linkInternalFilters = wa_production_linkInternalFilters;
else 
    // non-production
    s.linkInternalFilters = wa_dev_linkInternalFilters;

s.channel=wa_channel;

if (wa_p30 != "")
	s.prop30 = wa_p30;
	
if (wa_p44 != "")
	s.prop44 = wa_p44;

s.hier2= wa_channel + '|' + wa_p30 + '|' + wa_p44;

s.events='event1';
var s_code=s.t();if(s_code)document.write(s_code);

var NCIAnalytics = {

	SiteSearch : function() {
		// stub for old site search
	},

	SiteSearchWithValue : function(sender, value) {
		var s=s_gi(s_account); 
		s.linkTrackVars='channel,prop14,eVar14,events'; 
		s.linkTrackEvents='event2';
		s.prop14=value;
		s.eVar14=value;
		s.channel=wa_channel;
		s.events='event2';
		s.tl(this,'o',wa_search_function_name);
	},
	
	SiteSearchInternal : function() {

		var searchValue = '';
		for(i=0; i< document.forms[0].elements.length; i++) {
			if(document.forms[0].elements[i].type == "text")
				searchValue = document.forms[0].elements[i].value;
		}
		
		if(searchValue!='') {
			var s=s_gi(s_account); 
			s.linkTrackVars='channel,prop14,eVar14,events'; 
			s.linkTrackEvents='event2';
			s.prop14=s.eVar14=searchValue;
			s.channel=wa_channel;
			s.events='event2';
			s.tl(true,'o',wa_search_function_name);
		}
	},

	DownloadLink : function(linkHref,linkName){
		s.linkTrackVars='events,prop74,eVar74,prop21,eVar20,prop69,eVar69';
		var hrefExtension = linkHref.split('.').pop().toLowerCase();

		if (hrefExtension  == 'pdf')  {
			s.linkTrackEvents='event6';
			s.events='event6';
		} else if (hrefExtension  == 'mobi')  {
			s.linkTrackEvents='event21';
			s.events='event21';
		} else if (hrefExtension  == 'epub')  {
			s.linkTrackEvents='event23';
			s.events='event23';
		} 
	},

	TrackDownloads : function() {

		var myLinks = document.links;
		for(var i=0;i < myLinks.length;i++) {
			var linkDownloadFileTypeArray = s.linkDownloadFileTypes.split(",");
			var doIt = false;
			for(var j=0; j< linkDownloadFileTypeArray.length; j++) {

				if(myLinks[i].href.indexOf(linkDownloadFileTypeArray[j]) > -1) {
					doIt = true;
					break;
				}
			}
			if (doIt) {
				var thehref = linkName = '';
				thehref = myLinks[i].href.toString();
				linkName = myLinks[i].innerHTML;
				var f =function(thehref,linkName){return function(){NCIAnalytics.DownloadLink(thehref,linkName);};}(thehref,linkName);
				myLinks[i].onclick = f;
			}
		}
	},
	
	GenericSiteSearch : function() {
		var forms = document.forms;
		var par = '';
		var f =function(par){return function(){NCIAnalytics.SiteSearchInternal(par);};}(par);
				
		if(typeof forms[0] != 'undefined')  {
			if (forms[0].addEventListener) {
				forms[0].addEventListener('submit', f, false);
			} else {
				forms[0].attachEvent('onsubmit', f);
			}
		}
		
	},
	
	PageAnalytics : function() {
		NCIAnalytics.GenericSiteSearch();
		NCIAnalytics.TrackDownloads();
	}
	
}

window.onload = NCIAnalytics.PageAnalytics();
