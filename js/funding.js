	$(document).ready(function() {
			
	$.fn.dataTable.ext.classes.sPageButton = 'btn';

	var table1 = $('#fundingopps').dataTable( {
		"oLanguage": {
			"sSearch": "<span class='sr-only'>Search Terms: </span>",
			"sLengthMenu": "Results per page: _MENU_ ",
			"sInfo": "<b>Showing</b> _START_-_END_ of _TOTAL_",
			"sInfoEmpty": '<b>Showing</b> _START_-_END_ of _TOTAL_',
			"searchPlaceholder": "Search..."                        
		},
		"sDom": 'f<"top"Bil><"mobile-table-wraper"t><"bottom"p><"clear">',
		buttons: [
        	{ extend: 'excel', text: 'Export to Excel <span class="excel-icon"></span>', className: 'btn btn-default btn-inline' },
			{ extend: 'print', text: 'Print Search <span class="print-icon"></span>', className: 'btn btn-default btn-inline' }
    	],
		"order": [[ 4, "asc" ]],
		"iDisplayLength": 10,
		"perPage": 10,
        "pageLengths": [10, 25, 50, 100],
		"pagingType": "numbers",
		"aoColumns": [
			{ "sWidth": "" },
			{ "sWidth": "","type": "html" },
			{ "sWidth": "" },
			{ "sWidth": "" },
			{ "sWidth": "","type": "date" },
			{ "sWidth": "","type": "html" },
			{ "bVisible": false },
			{ "bVisible": false }
		],
		"autoWidth": true,
		"stateSave": true
	} );
		
		var table2 = $('#fundingarchive').dataTable( {
		"oLanguage": {
			"sSearch": "<span class='sr-only'>Search Terms: </span>",
			"sLengthMenu": "Results per page: _MENU_ ",
			"sInfo": "<b>Showing</b> _START_-_END_ of _TOTAL_",
			"sInfoEmpty": '<b>Showing</b> _START_-_END_ of _TOTAL_',
			"searchPlaceholder": "Search..."                        
		},
		"sDom": 'f<"top"Bil><"mobile-table-wraper"t><"bottom"p><"clear">',
		buttons: [
        	{ extend: 'excel', text: 'Export to Excel <span class="excel-icon"></span>', className: 'btn btn-default btn-inline', exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 6]
                } },
			{ extend: 'print', text: 'Print Search <span class="print-icon"></span>', className: 'btn btn-default btn-inline', exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 6 ]
                } }
    	],
		"order": [[ 4, "des" ]],
		"iDisplayLength": 10,
		"perPage": 10,
        "pageLengths": [10, 25, 50, 100],
		"pagingType": "numbers",
		"aoColumns": [
			{ "sWidth": "35%" },
			{ "sWidth": "15%","type": "html" },
			{ "sWidth": "12%" },
			{ "sWidth": "15%" },
			{ "sWidth": "18%","type": "date" },
			{ "bVisible": false },
			{ "bVisible": false },
			{ "bVisible": false }
		],
		"autoWidth": true,
		"stateSave": true
	} );
	
	$(".dataTables_filter input").attr("placeholder", "Enter search terms here");
	$('.dt-buttons > *').removeClass('dt-button');
		
	$("#btnCopy").insertAfter($(".buttons-excel"));
		
	$('#category input').on('change', function () {
		categoryClicked();
	});
			
	$('#funding input').on('change', function () {
		fundingClicked();
	});
		
	$('#activity input').on('change', function () {
		activityClicked();
	});
		
	$('#type input').on('change', function () {
		typeClicked();
	});
		
	function categoryClicked() {
	var categorytypes = $('input:checkbox[name="category"]:checked').map(function() {
		return '' + this.value + '';
	  }).get().join('|');
	table1.fnFilter(categorytypes, 6, true, false, false, false);
	table2.fnFilter(categorytypes, 6, true, false, false, false);
	}
	function fundingClicked() {
		var fundingtypes = $('input:checkbox[name="funding"]:checked').map(function() {
			return '' + this.value + '';
		  }).get().join('|');
		table1.fnFilter(fundingtypes, 1, true, false, false, false);
		table2.fnFilter(fundingtypes, 1, true, false, false, false);
	}
	function activityClicked() {
		var activitytypes = $('input:checkbox[name="activity"]:checked').map(function() {
			return '' + this.value + '';
		  }).get().join('|');
		table1.fnFilter(activitytypes, 2, true, false, false, false);
		table2.fnFilter(activitytypes, 2, true, false, false, false);
	}
	function typeClicked() {
		var typetypes = $('input:checkbox[name="type"]:checked').map(function() {
			return '^' + this.value + '$';
		  }).get().join('|');
		table1.fnFilter(typetypes, 7, true, false, false, false);
		table2.fnFilter(typetypes, 7, true, false, false, false);
	}
		
	if (window.location.href.indexOf("?") >= 0) {
		var param = decodeURI(getUrlVars()["category"]);
		param = param.replace(/\+/g,' ').replace(/\,/g,'%2C');
		jQuery.each(param.split("%2C"), function (i, val) {
			$(":checkbox[name='category'][value='" + val + "']").prop("checked", true);
			categoryClicked();
		});
		param = decodeURI(getUrlVars()["funding"]);
		param = param.replace(/\+/g,' ').replace(/\,/g,'%2C');
		jQuery.each(param.split("%2C"), function (i, val) {
			$(":checkbox[name='funding'][value='" + val + "']").prop("checked", true);
			fundingClicked();
		});
		param = decodeURI(getUrlVars()["activity"]);
		param = param.replace(/\+/g,' ').replace(/\,/g,'%2C');
		jQuery.each(param.split("%2C"), function (i, val) {
			$(":checkbox[name='activity'][value='" + val + "']").prop("checked", true);
			activityClicked();
		});
		param = decodeURI(getUrlVars()["type"]);
		param = param.replace(/\+/g,' ').replace(/\,/g,'%2C');
		jQuery.each(param.split("%2C"), function (i, val) {
			$(":checkbox[name='type'][value='" + val + "']").prop("checked", true);	
			typeClicked();
		});
		param = decodeURI(getUrlVars()["search"]);
	
		if(param === 'undefined') {
	
		}
		else{
			param = param.replace(/\+/g,' ').replace(/\,/g,'%2C');
			$('.dataTables_filter input').val("hey");
			table1.fnFilter(param);
			table2.fnFilter(param);
		}
		
		window.history.pushState("object or string", "Title", "/"+window.location.href.substring(window.location.href.lastIndexOf('/') + 1).split("?")[0]);

	}

	table1.on('page.dt', function() {
	  $('html, body').animate({
		scrollTop: $(".dataTables_wrapper").offset().top
	   }, 'slow');
	});
		
		table2.on('page.dt', function() {
	  $('html, body').animate({
		scrollTop: $(".dataTables_wrapper").offset().top
	   }, 'slow');
	});
});
		
function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}

$('#btnCopy').click(function () {
	var search = "";
    var category = [];
    var funding = [];
    var activity = [];
    var type = [];
    var label = "";
	
	search = $('.dataTables_filter input').val();
	
    $.each($("input[name='category']:checked"), function () {
        label = ($(this).val());
        category.push(label);
    });

    label = "";
    $.each($("input[name='funding']:checked"), function () {
        label = ($(this).val());
        funding.push(label);
    });

    label = "";
    $.each($("input[name='activity']:checked"), function () {
        label = ($(this).val());
        activity.push(label);
    });

    label = "";
    $.each($("input[name='type']:checked"), function () {
        label = ($(this).val());
        type.push(label);
    });

    var stringvalues = "";
	if(category.length > 0)
    	stringvalues = "&category=" + category.join("%2C");
	if(funding.length > 0)
    	stringvalues += "&funding=" + funding.join("%2C");
	if(activity.length > 0)
    	stringvalues += "&activity=" + activity.join("%2C");
	if(type.length > 0)
    	stringvalues += "&type=" + type.join("%2C");
	if(search !== "")
    	stringvalues += "&search=" + search;

	stringvalues = stringvalues.replace(/\s/g,"+");
	stringvalues = stringvalues.replace(/&/g,"%26");
	
	var url = "";
	
	if(stringvalues == "")
		url = window.location.href;
	else
		url = window.location.href + "?" + stringvalues;
	
	var email = '';
    var subject = 'Apply for Cancer Control Grants';
    window.location = 'mailto:' + email + '?subject=' + subject + '&body=' + url;	
		
});
		
$(document).ready(function() {
  $('.showhide-filters').click(function() {
	$(this).next().toggleClass('toggle');
  });
});