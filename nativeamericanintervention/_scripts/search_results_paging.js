var data_searchresults;

var totalRecordsFromService = 0;
var firstpage = 1;
var lastpage = 1;
var ItemsPerPage = 10;
var CurrentPage = 1;
var firstflag = 0;
var FirstTitle_OnPage = '';
var LastTitle_OnPage = '';


var searchstringXLS = '';
var CancerSite_XLS = '';
var tempConsortiumstring_XLS = '';
var tempInterventionSitestring_XLS = '';
var tempInterventionSitestring_XLS = '';

var tempInterventionSitestring = '';
var tempConsortiumstring = '';
var tempInterventionKeywords = '';
var tempCancerSites = '';

$(document).ready(function () {
    $("#TXT_SRCH").keydown(function (event) {
        if (event.keyCode == 13) {
            $("#BTN_Search_Pubs").trigger("click");
            return false;
        }
    });


    $("#modalClose").click(function () {
        $(".modal-overlay").hide();
        return false;
    });


    $('#select_itemsperpage').on('change', function () {
        $(".searchmodal-overlay").show();
        ScrollToTopOfSearch();
        intialize();
        return false;
    });

    
    $(':checkbox').bind('click', function () {
        $(".searchmodal-overlay").show();
        ScrollToTopOfSearch();
        intialize();
        //return false;
    });

    $('#BTN_Search_Pubs').click(function () {

        $(".searchmodal-overlay").show();
        //intialize();

        var strsearchString = $('#TXT_SRCH').val();
        if (strsearchString == '') {
            alert("Enter a Search term.");
            $(".searchmodal-overlay").hide();
        }
        else {
            intialize();
        }
        return false;
    });


    var strsearchString = getQuery('srch');
    if (strsearchString) {
        $('#TXT_SRCH').val(strsearchString);
        intialize();
    }


});  // end ready

function ScrollToTopOfSearch() {
    $('html, body').animate({
        scrollTop: $("#hyp_home_searchResults").offset().top
    }, 500);
}




function DoExport_Clicked() {
    switch ($('#ddl_export').val()) {
        case '1':
            $('#LINK_Export_Dyn')[0].click();
            break;
            ;
        case '2':
            $('#LINK_Export_Dyn_WORD')[0].click();
            break;
            ;
        case '3':
            $('#LINK_Export_Dyn_WORD_ABS')[0].click();
            break;
            ;
        default:
            break;
            ;
    }
    return false;
}

function intialize() {

    $("#dv_prev").hide();
    $("#dv_next").hide();

    ItemsPerPage = $('#select_itemsperpage').val();

    // Build the array of selected checkboxes

    // tempPrgramfilterstring can be removed, no longer used
    tempConsortiumstring = '|';
    tempInterventionSitestring = '|';
    tempInterventionKeywords = '|';
    tempCancerSites = '|';
    

    $.each($("input:checkbox"), function () {


        if (String($(this).attr("id")).indexOf("CK_CancerConsortium_") > -1) {
            if ($(this).is(":checked")) {
                tempConsortiumstring += '|' + $(this).val() + '|';
            }
        }
        if (String($(this).attr("id")).indexOf("CK_InterventionSite_") > -1) {
            if ($(this).is(":checked")) {
                tempInterventionSitestring += '|' + $(this).val() + '|';
            }
        }
        if (String($(this).attr("id")).indexOf("CK_InterventionKeywords_") > -1) {
            if ($(this).is(":checked")) {
                tempInterventionKeywords += '|' + $(this).val() + '|';
            }
        }
        if (String($(this).attr("id")).indexOf("CK_CancerSite_") > -1) {
            if ($(this).is(":checked")) {
                tempCancerSites += '|' + $(this).val() + '|';
            }
        }
    });


    tempConsortiumstring += '|';
    tempInterventionSitestring += '|';
    tempInterventionKeywords += '|';
    tempCancerSites += '|';




    //console.log('tempConsortiumstring' + tempConsortiumstring);
    //console.log('tempInterventionSitestring' + tempInterventionSitestring);
    //console.log('tempInterventionKeywords' + tempInterventionKeywords);


    
    GetSearchResults('Next', '', function (mydata) {
        
        data_searchresults = mydata;
        PopulatethePage();
        
        numberofitemsfound.innerHTML = "";
        $("#numberofitemsfound").hide();

        GetSearchResults_Counter(function (mydata) {
            totalRecordsFromService = mydata.d;
            RWB_CustomPagingDisplay(1, ItemsPerPage)
        });
    });

}



function GetSearchResults_Counter(callback) {

    var strsearchString = HandleApostrophes($('#TXT_SRCH').val().toLowerCase());
    var strsearchString2 = '';
    var strsearchString3 = '';
    var strsearchString4 = '';

    if (strsearchString.indexOf(" and ") >= 0) {
        
        var parts = strsearchString.split(' and ');
        strsearchString = parts[0];
        strsearchString2 = parts[1];
        strsearchString3 = parts[2];
        strsearchString4 = parts[3];

        if (parts.length < 4) {
            strsearchString4 = '';
        }
        if (parts.length < 3) {
            strsearchString3 = '';
        }
        if (parts.length < 2) {
            strsearchString2 = '';
        }
    }

    //console.log("PK_CancerSite222=" + tempCancerSites);
    //TXT_SRCH
    // Below gets a cached datatable that is already filtered for the search term
    $.ajax({
        type: "POST",
         url: "/nativeamericanintervention/services/jquerydata.asmx/List_SearchResults_Main_Counter",
         data: "{'strsearchString':'" + strsearchString + "','strsearchString2':'" + strsearchString2 + "','strsearchString3':'" + strsearchString3 + "','strsearchString4':'" + strsearchString4 + "','PK_CancerSite':'" + tempCancerSites + "','Consortiumstring':'" + tempConsortiumstring + "','InterventionSite':'" + tempInterventionSitestring + "','InterventionKeywords':'" + tempInterventionKeywords + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        error: function (xhr, status, error) {
            console.log("responseText=" + xhr.responseText + "\n textStatus=" + status + "\n errorThrown=" + error);
        },
        success: function (data) {
            callback(data);
        }
    });
}


function GetSearchResults(direction, PagingTitle, callback) {


    var strsearchString = HandleApostrophes($('#TXT_SRCH').val().toLowerCase());
    var strsearchString2 = '';
    var strsearchString3 = '';
    var strsearchString4 = '';

    if (strsearchString.indexOf(" and ") >= 0) {


        var parts = strsearchString.split(' and ');
        strsearchString = parts[0];
        strsearchString2 = parts[1];
        strsearchString3 = parts[2];
        strsearchString4 = parts[3];

        if (parts.length < 4) {
            strsearchString4 = '';
        }
        if (parts.length < 3) {
            strsearchString3 = '';
        }
        if (parts.length < 2) {
            strsearchString2 = '';
        }
    }


    //console.log("direction-" + direction);
    //console.log("PagingTitle" + HandleApostrophes(PagingTitle));
    //console.log("PK_CancerSite=" + tempCancerSites);
    


    $("#LINK_Export_Dyn").attr("href", "export.aspx?TXT_searchstringXLS=" + strsearchString + "&PK_CancerSite=" + tempCancerSites + "&Consortiumstring=" + tempConsortiumstring + "&InterventionSite=" + tempInterventionSitestring + "&InterventionKeywords=" + tempInterventionKeywords + "&TXT_searchstringXLS2=" + strsearchString2 + "&TXT_searchstringXLS3=" + strsearchString3 + "&TXT_searchstringXLS4=" + strsearchString4)
    $("#LINK_Export_Dyn_WORD").attr("href", "word.aspx?TXT_searchstringXLS=" + strsearchString + "&PK_CancerSite=" + tempCancerSites + "&Consortiumstring=" + tempConsortiumstring + "&InterventionSite=" + tempInterventionSitestring + "&InterventionKeywords=" + tempInterventionKeywords + "&TXT_searchstringXLS2=" + strsearchString2 + "&TXT_searchstringXLS3=" + strsearchString3 + "&TXT_searchstringXLS4=" + strsearchString4)
    $("#LINK_Export_Dyn_WORD_ABS").attr("href", "word.aspx?TXT_searchstringXLS=" + strsearchString + "&PK_CancerSite=" + tempCancerSites + "&Consortiumstring=" + tempConsortiumstring + "&InterventionSite=" + tempInterventionSitestring + "&InterventionKeywords=" + tempInterventionKeywords + "&TXT_searchstringXLS2=" + strsearchString2 + "&TXT_searchstringXLS3=" + strsearchString3 + "&TXT_searchstringXLS4=" + strsearchString4 + "&ABS=1")
    

    $.ajax({
        type: "POST",
        url: "/nativeamericanintervention/services/jquerydata.asmx/List_SearchResults_Main_Top10",
        data: "{'strsearchString':'" + strsearchString + "','PagingDirection':'" + direction + "','PagingTitle':'" + HandleApostrophes(PagingTitle) + "','ItemsPerPage':'" + ItemsPerPage + "','strsearchString2':'" + strsearchString2 + "','strsearchString3':'" + strsearchString3 + "','strsearchString4':'" + strsearchString4 + "','PK_CancerSite':'" + tempCancerSites + "','Consortiumstring':'" + tempConsortiumstring + "','InterventionSite':'" + tempInterventionSitestring + "','InterventionKeywords':'" + tempInterventionKeywords + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        error: function (xhr, status, error) {
            console.log("responseText=" + xhr.responseText + "\n textStatus=" + status + "\n errorThrown=" + error);
            console.log("errorThrown=" + error);
        },
        success: function (data) {
            callback($.parseJSON(data.d));
        }
    });
}

function ShowAbstract(PK_ID) {
    for (var i = 0; i < data_searchresults.length; i++) {
        if (data_searchresults[i].PK_PublicationID == PK_ID) {
            p_abstract.innerHTML = '<h2>' + data_searchresults[i].Pub_Title + '</h2><p>' + data_searchresults[i].Abstract + '</p>';
        }
    }
    $(".modal-overlay").show();
}

function PopulatethePage() {

    $('#dv_results').empty();
    $("#TXT_table").val('');

    firstflag = 0;

    for (var i = 0; i < data_searchresults.length; i++) {
        if (firstflag == 0) {
            firstflag = 1;
            FirstTitle_OnPage = data_searchresults[i].Pub_Title;
        }
        LastTitle_OnPage = data_searchresults[i].Pub_Title;
        setResult(data_searchresults[i]);
    }

    $(".searchmodal-overlay").hide();
}

var str_buildingResults = '';

function setResult(Data_PublicationItem) {


    str_buildingResults = ''

    str_buildingResults += '<li><a href="' + Data_PublicationItem.Pub_URL + '" target="_blank"><h3>' + Data_PublicationItem.Pub_Title + '</h3></a>';
  
    str_buildingResults += Data_PublicationItem.Full_Citation;
    str_buildingResults += '<br/>';

    if (Data_PublicationItem.PMID !== null) {
        str_buildingResults += '<strong>PMID:</strong> ' + Data_PublicationItem.PMID + '<br/>';
    }
    //if (Data_PublicationItem.Accession_Number !== null) {
    //    str_buildingResults += '<strong>Accession_Number:</strong> ' + Data_PublicationItem.Accession_Number + '<br/>';
    //}
    if (Data_PublicationItem.SubCancerSites !== null) {
        str_buildingResults += '<strong>Cancer Sites(s):</strong> ' + StripDeliminators(Data_PublicationItem.SubCancerSites) + '<br/>';
    }

    if (Data_PublicationItem.CancerConsortiums_Stuff !== null) {
        str_buildingResults += '<strong>Cancer Continuum(s):</strong> ' + StripDeliminators(Data_PublicationItem.CancerConsortiums_Stuff) + '<br/>';
    }


    if (Data_PublicationItem.InterventionSites_Stuff !== null) {
        str_buildingResults += '<strong>Intervention Site(s):</strong> ' + StripDeliminators(Data_PublicationItem.InterventionSites_Stuff) + '<br/>';
    }

    if (Data_PublicationItem.Keywords_Stuff !== null) {
        str_buildingResults += '<strong>Intervention Type(s):</strong> ' + StripDeliminators(Data_PublicationItem.Keywords_Stuff) + '<br/>';
    }

    str_buildingResults += '<p><a href="javascript:void(0)" onclick="ShowAbstract(' + Data_PublicationItem.PK_PublicationID + ');">Show Abstract</a></p>';


    str_buildingResults += '<hr/></li>';

    $("#dv_results").append(str_buildingResults);

}

function PrevClicked() {

    $(".searchmodal-overlay").show();
    ScrollToTopOfSearch();
    //console.log('here===' + FirstTitle_OnPage)
    GetSearchResults('Prev', FirstTitle_OnPage, function (mydata) {
        data_searchresults = mydata;
        CurrentPage -= 1;
        numberofitemsfound.innerHTML = "";
        RWB_CustomPagingDisplay(CurrentPage, ItemsPerPage)
        PopulatethePage();
        ScrollToTopOfSearch();
    });
    return false;
}

function NextClicked() {

    $(".searchmodal-overlay").show();
    ScrollToTopOfSearch();
        GetSearchResults('Next', LastTitle_OnPage, function (mydata) {
            data_searchresults = mydata;
            CurrentPage += 1;
            numberofitemsfound.innerHTML = "";
            RWB_CustomPagingDisplay(CurrentPage, ItemsPerPage)
            PopulatethePage();
            ScrollToTopOfSearch();
        });
    return false;
}

function RWB_CustomPagingDisplay(CurrentPage, ItemsPerPage) {

    numberofitemsfound.innerHTML = "";
    var startcount = 0;
    startcount = (((CurrentPage - 1) * (ItemsPerPage)) + 1);
    var endcount = 0;
    endcount = (CurrentPage * ItemsPerPage);

    if (endcount > totalRecordsFromService) {
        var remainder = (totalRecordsFromService % ItemsPerPage);
        endcount = ((ItemsPerPage * (CurrentPage - 1)) + remainder);
    }
    

    //enable disable Previous button
    if (startcount == 1) {
        $("#dv_prev").unbind('click');
        $('#dv_prev').removeClass('ENabled_Nav_Links');
        $('#dv_prev').addClass('disabled_Nav_Links');        
    }
    else {
        $("#dv_prev").unbind('click');
        $("#dv_prev").bind('click', PrevClicked);
        $('#dv_prev').removeClass('disabled_Nav_Links');
        $('#dv_prev').addClass('ENabled_Nav_Links');
    }

    //enable disable Next button
    if (endcount == totalRecordsFromService) {
        $("#dv_next").unbind('click');
        $('#dv_next').removeClass('ENabled_Nav_Links');
        $('#dv_next').addClass('disabled_Nav_Links');
    }
    else {
        $("#dv_next").unbind('click');
        $("#dv_next").bind('click', NextClicked);
        $('#dv_next').removeClass('disabled_Nav_Links');
        $('#dv_next').addClass('ENabled_Nav_Links');
    }

    numberofitemsfound.innerHTML = '<p><strong>Showing Records ' + startcount + ' - ' + endcount + ' out of ' + totalRecordsFromService + '<strong></p>';

    if (totalRecordsFromService == 0) {
        numberofitemsfound.innerHTML = '<p><strong>No publications found.</strong></p>';


        $("#div_TopNav_rwb").hide();
        $("#navigation_Panel_RWB").hide();
        $("#P_Blurb").hide();

    }
    else
    {
        $("#div_TopNav_rwb").show();
        $("#navigation_Panel_RWB").show();
        $("#P_Blurb").hide();


    }
    $("#numberofitemsfound").show();

    $("#dv_prev").show();
    $("#dv_next").show();

}

function ClearFilters() {

    $.each($("input:checkbox"), function () {
        //console.log("NNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNNN");
        $(this).prop("checked", false);

    });

    $('#DDL_Start').val('-1');
    $('#DDL_End').val('-1');
    $('#DDL_PubTypes').val('-1');
    
    $(".searchmodal-overlay").show();
    ScrollToTopOfSearch();
    intialize();
    return false;
}



function getQuery(key) {
    var temp = location.search.match(new RegExp(key + "=(.*?)($|\&)", "i"));
    if (!temp) return;
    return decodeURIComponent(temp[1]);
}



function StripDeliminators(strString) {
    ////////console.log('xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx=' + strString)
    if (strString) {

        while (strString.indexOf("||") >= 0) {
            strString = strString.replace("||", ", ");
        }

        while (strString.indexOf("|") >= 0) {
            strString = strString.replace("|", "");
        }
        return strString
    }
    else {
        return '';
    }
    return strString;
}

function ChangeCommasToPipes(strString) {
    while (strString.indexOf(",") >= 0) {
        strString = strString.replace(",", "|");
    }
    return strString
}


function JS_ConvertFromNull(strString) {
    if (strString == null) {
        return '|0|';
    }
    else if (strString == '') {
        return '|0|';
    }
    else {
        return strString.toString();
    }
}

function HandleApostrophes(str) {
    if (str) {
        return str.replaceAll('\'', '&#039;');
    }
    else {
        return ''
    }
}

String.prototype.replaceAll = function (str1, str2, ignore) {
    return this.replace(new RegExp(str1.replace(/([\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, function (c) { return "\\" + c; }), "g" + (ignore ? "i" : "")), str2);
};
