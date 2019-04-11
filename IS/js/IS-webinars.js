var AllArchivedWebinars_ds = [];
var All_CURRENT_Webinars_ds = [];
var All_Future_Webinars_ds = [];

var DISPLAY_ArchivedWebinars_ds = [];
var DISPLAY_FutureWebinars_ds = [];
var DISPLAY_CurrentWebinars_ds = [];

var selectedCategories = '|';
var selectedYears = '|';
var selectedPresenters = '|';
var selectedSeries = '|';

var GetAllArchivedWebinars_url = "https://cyberseminar.cancercontrolplanet.org/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_ALL_Archive_webinars";
var GetAllCurrentWebinars_url = "https://cyberseminar.cancercontrolplanet.org/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_CURRENT_webinars";
var GetAllFutureWebinars_url = "https://cyberseminar.cancercontrolplanet.org/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_FUTURE_webinars";

//var GetAllArchivedWebinars_url = "http://cyberseminar_local.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_ALL_Archive_webinars";
//var GetAllCurrentWebinars_url = "http://cyberseminar_local.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_CURRENT_webinars";
//var GetAllFutureWebinars_url = "http://cyberseminar_local.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_FUTURE_webinars";

//var GetAllArchivedWebinars_url = "https://cyberseminar-stage.icfwebservices.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_ALL_Archive_webinars";
//var GetAllCurrentWebinars_url = "https://cyberseminar-stage.icfwebservices.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_CURRENT_webinars";
//var GetAllFutureWebinars_url = "https://cyberseminar-stage.icfwebservices.com/application_WS/IS_Applications.asmx/JSON_ImplementationScience_list_FUTURE_webinars";


//https://stackoverflow.com/questions/14221429/how-can-i-produce-jsonp-from-an-asp-net-web-service-for-cross-domain-calls


String.prototype.replaceAll = function (str1, str2, ignore) {
    return this.replace(new RegExp(str1.replace(/([\/\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, "\\$&"), (ignore ? "gi" : "g")), (typeof (str2) == "string") ? str2.replace(/\$/g, "$$$$") : str2);
}

$(window).on("load", function (e) {
    initialize();

    $("#BTN_Reset").on("click", function () {
        $('input[type=checkbox]').each(function () {
            $(this).prop('checked', false);
        });
        selectedCategories = '|';
        selectedYears = '|';
        selectedPresenters = '|';
        selectedSeries = '|';
        RunSearch();
    });
});

function initialize() {
    //start calling data (doing them 1 at a time in order)
    CallFutureData();
}

function CallFutureData() {
    // Set all of the FUTURE Items
    $.ajax({
        type: "POST",
        crossDomain: true,
        contentType: "application/json; charset=utf-8",
        url: GetAllFutureWebinars_url,
        data: { str_CallBack: "SetAll_FUTURE_Webinars" }, // example of parameter being passed
        dataType: "jsonp",
        success: SetAll_FUTURE_Webinars
    });
}

// This is call ed when Future Data is loaded
function CallCurrentData() {
    // Set all of the CURRENT Items
    $.ajax({
        type: "POST",
        crossDomain: true,
        contentType: "application/json; charset=utf-8",
        url: GetAllCurrentWebinars_url,
        data: { str_CallBack: "SetAll_Current_Webinars" }, // example of parameter being passed
        dataType: "jsonp",
        success: SetAll_Current_Webinars
    });
}
function CallArchiveData() {
    // Set all of the ARchived Items
    $.ajax({
        type: "POST",
        crossDomain: true,
        contentType: "application/json; charset=utf-8",
        url: GetAllArchivedWebinars_url,
        data: { str_CallBack: "SetAllArchivedWebinars" }, // example of parameter being passed
        dataType: "jsonp",
        success: SetAllArchivedWebinars
    });
}

function SetAll_FUTURE_Webinars(data) {
    All_Future_Webinars_ds = data;
    // after future is loaded, call current
    CallCurrentData();
}

function SetAll_Current_Webinars(data) {
    All_CURRENT_Webinars_ds = data;
    // after Current is loaded, call archive
    CallArchiveData();
}

function SetAllArchivedWebinars(data) {
    AllArchivedWebinars_ds = data;
    RunSearch();
}

function CategoryClicked(PK_Category) {
    selectedCategories = "|";
    var TempStr = '';
    //AllCheckboxes
    $('input[type=checkbox]').each(function () {
        //Only check if Category checkbox
        if (this.id.indexOf("CKCategory_") >= 0) {
            //Strip out the to get ID of checkbox (data)
            TempStr = this.id.replace("CKCategory_", "");
            if (this.checked) {
                //Add to the search string
                selectedCategories += TempStr + "|";
            }
        }
    });
    RunSearch();
}

function YearClicked(YearDisplay) {
    selectedYears = "|";
    var TempStr = '';
    //AllCheckboxes
    $('input[type=checkbox]').each(function () {
        //Only check if Category checkbox
        if (this.id.indexOf("CKCYear_") >= 0) {
            //Strip out the to get ID of checkbox (data)
            TempStr = this.id.replace("CKCYear_", "");
            if (this.checked) {
                //Add to the search string
                selectedYears += TempStr + "|";
            }
        }
    });
    RunSearch();
}

function PresenterClicked(YearDisplay) {
    selectedPresenters = "|";
    var TempStr = '';
    //AllCheckboxes
    $('input[type=checkbox]').each(function () {
        //Only check if Category checkbox
        if (this.id.indexOf("CKPresenter_") >= 0) {
            //Strip out the to get ID of checkbox (data)
            TempStr = this.id.replace("CKPresenter_", "");
            if (this.checked) {
                //Add to the search string
                selectedPresenters += TempStr + "|";
            }
        }
    });
    RunSearch();
}

function SeriesClicked(PK_Series) {
    selectedSeries = "|";
    var TempStr = '';
    //AllCheckboxes
    $('input[type=checkbox]').each(function () {
        //Only check if Series checkbox
        if (this.id.indexOf("PKSeries_") >= 0) {
            //Strip out the to get ID of checkbox (data)
            TempStr = this.id.replace("PKSeries_", "");
            if (this.checked) {
                //Add to the search string
                selectedSeries += TempStr + "|";
            }
        }
    });
    RunSearch();
}

function RunSearch() {
    //console.log('category Search Ran on ' + selectedCategories);
    //console.log('Year Search Ran on ' + selectedYears);
    //console.log('Presenters Search Ran on ' + selectedPresenters);

    var contentString = '';
    var PresenterString = '';
    var presentertest = '';
    var FK_PresentersDB = '';
    var tempflag = false;

    var NeedsToDisplay = true;

    DISPLAY_ArchivedWebinars_ds.length = 0;
    DISPLAY_FutureWebinars_ds.length = 0;
    DISPLAY_CurrentWebinars_ds.length = 0;

    $("#dv_FutureWebinars").empty();
    $("#dv_CurrentWebinars").empty();
    //$("#dv_ArchiveWebinars").empty();


    //VVVVVVVVV CURRENT VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    //VVVVVVVVV CURRENT VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    // loop the Current and put in div
    for (var i = 0; i < All_CURRENT_Webinars_ds.length; i++) {
        //check if years was searched for and if doesn't match, if searched
        /*if ((selectedYears !== "|") && (selectedYears.indexOf(All_CURRENT_Webinars_ds[i].YearDisplay) === -1)) {
            NeedsToDisplay = false;
        }*/
        //check if categories was searched for and if doesn't match, if searched
        /*if ((selectedCategories !== "|") && (selectedCategories.indexOf(All_CURRENT_Webinars_ds[i].FK_Category) === -1)) {
            NeedsToDisplay = false;
        }*/
        
        /*if (selectedPresenters !== "|") {
            tempflag = false;
            FK_PresentersDB = All_CURRENT_Webinars_ds[i].FK_Presenters;
            //split the presenters being searched for into an array
            var parts = selectedPresenters.split('|');
            $.each(parts, function (i) {
                // Loop the split array to test if matches the webinar being outer looped
                presentertest = "|" + parts[i] + "|";
                if (FK_PresentersDB.indexOf(presentertest) >= 0) {
                    //tempflag is false by default, but if found, set it to true
                    tempflag = true;
                }
            });
            if (tempflag === false) {
                // if the entire search presenters has been looped and not found, this webinar needs set to false
                NeedsToDisplay = false;
            }
        }*/
        
        //check if series was searched for and if doesn't match, if searched
        /*if ((selectedSeries !== "|") && (selectedSeries.indexOf(All_Future_Webinars_ds[i].FK_Series) === -1)) {
            NeedsToDisplay = false;
        }*/

        if (NeedsToDisplay === true) {
            //contentString = '';
            //PresenterString = '';
            //contentString += "<div class='CurrentDiv'>";
            //contentString += "<p>" + All_CURRENT_Webinars_ds[i].topic + "</p>";
            //contentString += "<p><a href='/implementationscience/registration.aspx?ID=" + All_CURRENT_Webinars_ds[i].PK_webinar + "'>Register Now</a></p>";
            //contentString += "<p>" + All_CURRENT_Webinars_ds[i].MonthDisplay + " " + All_CURRENT_Webinars_ds[i].YearDisplay + "<br/>";

            //if (All_CURRENT_Webinars_ds[i].Presenters !== null) {
            //    PresenterString = All_CURRENT_Webinars_ds[i].Presenters
            //    // remove the last character "|"
            //    PresenterString = PresenterString.substring(0, PresenterString.length - 1);
            //    // remove the FIRST character "|"
            //    PresenterString = PresenterString.substring(1)
            //    //Replace all Pipes "|" with comma space
            //    PresenterString = PresenterString.replaceAll("|", ", ")
            //    contentString += "features: " + PresenterString;
            //}
            //contentString += "</p>";
            //contentString += "<p>" + All_CURRENT_Webinars_ds[i].briefdesc + "</p>";
            //contentString += "</div>";
            //$("#dv_CurrentWebinars").append(contentString);

            DISPLAY_CurrentWebinars_ds.push(All_CURRENT_Webinars_ds[i]);

            $('#intro_text').addClass('col-md-6').removeClass('col-md-12');
        }
    }
    //^^^^^^^^^^^^^^^^^ CURRENT ^^^^^^^^^^^^^^^^^^^^^^
    //^^^^^^^^^^^^^^^^^ CURRENT ^^^^^^^^^^^^^^^^^^^^^^

    //VVVVVVVVV FUTURE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    //VVVVVVVVV FUTURE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    // loop the Future and put in div
    NeedsToDisplay = true;
    for (var i = 0; i < All_Future_Webinars_ds.length; i++) {
        //check if years was searched for and if doesn't match, if searched
        /*if ((selectedYears !== "|") && (selectedYears.indexOf(All_Future_Webinars_ds[i].YearDisplay) === -1)) {
            NeedsToDisplay = false;
        }*/
        //check if categories was searched for and if doesn't match, if searched
        /*if ((selectedCategories !== "|") && (selectedCategories.indexOf(All_Future_Webinars_ds[i].FK_Category) === -1)) {
            NeedsToDisplay = false;
        }*/

        /*if (selectedPresenters !== "|") {
            tempflag = false;
            FK_PresentersDB = All_Future_Webinars_ds[i].FK_Presenters;
            //split the presenters being searched for into an array
            var parts = selectedPresenters.split('|');
            $.each(parts, function (i) {
                // Loop the split array to test if matches the webinar being outer looped
                presentertest = "|" + parts[i] + "|";
                if (FK_PresentersDB.indexOf(presentertest) >= 0) {
                    //tempflag is false by default, but if found, set it to true
                    tempflag = true;
                }
            });
            if (tempflag === false) {
                // if the entire search presenters has been looped and not found, this webinar needs set to false
                NeedsToDisplay = false;
            }
        }*/

        //check if series was searched for and if doesn't match, if searched
        /*if ((selectedSeries !== "|") && (selectedSeries.indexOf(All_Future_Webinars_ds[i].FK_Series) === -1)) {
            NeedsToDisplay = false;
        }*/

        if (NeedsToDisplay === true) {

            //contentString = '';
            //PresenterString = '';

            //contentString += "<div class='FutureDiv'>";
            //contentString += "<p><a href='/implementationscience/archive.aspx?ID=" + All_Future_Webinars_ds[i].PK_webinar + "'>" + All_Future_Webinars_ds[i].topic + "</a></p>";
            //contentString += "<p>" + All_Future_Webinars_ds[i].MonthDisplay + " " + All_Future_Webinars_ds[i].YearDisplay + "<br/>";

            //if (All_Future_Webinars_ds[i].Presenters !== null) {
            //    PresenterString = All_Future_Webinars_ds[i].Presenters
            //    // remove the last character "|"
            //    PresenterString = PresenterString.substring(0, PresenterString.length - 1);
            //    // remove the FIRST character "|"
            //    PresenterString = PresenterString.substring(1)
            //    //Replace all Pipes "|" with comma space
            //    PresenterString = PresenterString.replaceAll("|", ", ")
            //    contentString += "features: " + PresenterString;
            //}

            //contentString += "</p>";
            //contentString += "</div>";

            //$("#dv_FutureWebinars").append(contentString);

            DISPLAY_FutureWebinars_ds.push(All_Future_Webinars_ds[i]);

            $('#intro_text').addClass('col-md-6').removeClass('col-md-12');
        }
    }

    //^^^^^^^^^^^^^^^^^ FUTURE ^^^^^^^^^^^^^^^^^^^^^^
    //^^^^^^^^^^^^^^^^^ FUTURE ^^^^^^^^^^^^^^^^^^^^^^

    //VVVVVVVVV ARCHIVE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV
    //VVVVVVVVV ARCHIVE VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV

    // loop the archives and put in div
    for (var i = 0; i < AllArchivedWebinars_ds.length; i++) {

        NeedsToDisplay = true;

        //check if years was searched for and if doesn't match, if searched
        if ((selectedYears !== "|") && (selectedYears.indexOf(AllArchivedWebinars_ds[i].YearDisplay) === -1)) {
            NeedsToDisplay = false;
        }
        //check if categories was searched for and if doesn't match, if searched
        if ((selectedCategories !== "|") && (selectedCategories.indexOf(AllArchivedWebinars_ds[i].FK_Category) === -1)) {
            NeedsToDisplay = false;
        }

        if (selectedPresenters !== "|") {
            tempflag = false;
            FK_PresentersDB = AllArchivedWebinars_ds[i].FK_Presenters;
            //split the presenters being searched for into an array
            var parts = selectedPresenters.split('|');
            $.each(parts, function (i) {
                // Loop the split array to test if matches the webinar being outer looped
                presentertest = "|" + parts[i] + "|";
                if (FK_PresentersDB.indexOf(presentertest) >= 0) {
                    //tempflag is false by default, but if found, set it to true
                    tempflag = true;
                }
            });
            if (tempflag === false) {
                // if the entire search presenters has been looped and not found, this webinar needs set to false
                NeedsToDisplay = false;
            }
        }

        //check if series was searched for and if doesn't match, if searched
        if ((selectedSeries !== "|") && (selectedSeries.indexOf(AllArchivedWebinars_ds[i].FK_Series) === -1)) {
            NeedsToDisplay = false;
        }

        if (NeedsToDisplay === true) {

            //contentString = '';
            //PresenterString = '';

            //contentString += "<div class='ArchiveDiv'>";
            //contentString += "<p><a href='/implementationscience/archive.aspx?ID=" + AllArchivedWebinars_ds[i].PK_webinar + "'>" + AllArchivedWebinars_ds[i].topic + "</a></p>";
            //contentString += "<p>" + AllArchivedWebinars_ds[i].MonthDisplay + " " + AllArchivedWebinars_ds[i].YearDisplay + "<br/>";

            //if (AllArchivedWebinars_ds[i].Presenters !== null) {
            //    PresenterString = AllArchivedWebinars_ds[i].Presenters
            //    // remove the last character "|"
            //    PresenterString = PresenterString.substring(0, PresenterString.length - 1);
            //    // remove the FIRST character "|"
            //    PresenterString = PresenterString.substring(1)
            //    //Replace all Pipes "|" with comma space
            //    PresenterString = PresenterString.replaceAll("|", ", ")
            //    contentString += "features: " + PresenterString;
            //}

            //contentString += "</p>";
            //contentString += "</div>";

            ////$("#dv_ArchiveWebinars").append(contentString);
            ////console.log('appending ' + AllArchivedWebinars_ds[i].topic);
            //$("#dv_ArchiveWebinars").append('<h3>' + AllArchivedWebinars_ds[i].topic + '</h3>');

            //console.log("pushing--" + AllArchivedWebinars_ds[i].topic);
            DISPLAY_ArchivedWebinars_ds.push(AllArchivedWebinars_ds[i]);
        }
    }

    //^^^^^^^^^^^^^^^^^ ARCHIVE ^^^^^^^^^^^^^^^^^^^^^^
    //^^^^^^^^^^^^^^^^^ ARCHIVE ^^^^^^^^^^^^^^^^^^^^^^

    $('#pager').paging({
        data: DISPLAY_ArchivedWebinars_ds,
        contentHolder: 'dv_ArchiveWebinars',
        template: 'contentTemplate',
        errorTemplate: 'contentErrorTemplate',
        perPage: 5,
        pageLengths: [3, 5, 10, 20],
        informationToShow: ['PK_webinar', 'topic', 'YearDisplay', 'MonthDisplay', 'Presenters', 'ImageHTML', 'categoryHTML'],
        informationToRefineBy: ['topic', 'YearDisplay'],
        showOptions: true,    //Show the per page options.
        showSearch: false
    });

    $("#contentTemplate_Future").tmpl(DISPLAY_FutureWebinars_ds).appendTo("#dv_FutureWebinars");
    $("#contentTemplate_Current").tmpl(DISPLAY_CurrentWebinars_ds).appendTo("#dv_CurrentWebinars");

    //$('#pager').on('pagingChange', function () {
    //    alert("do something when page is changed...");
    //});

}

String.prototype.replaceAll = function (str1, str2, ignore) {
    return this.replace(new RegExp(str1.replace(/([\/\,\!\\\^\$\{\}\[\]\(\)\.\*\+\?\|\<\>\-\&])/g, "\\$&"), (ignore ? "gi" : "g")), (typeof (str2) == "string") ? str2.replace(/\$/g, "$$$$") : str2);
}