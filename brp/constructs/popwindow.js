//creates appropriate pop-up window
function popWindow(theurl)
{
	theurl = theurl.replace(/\s/g, '+');
	window.open(theurl,'construct','toolbar=yes, location=yes, scrollbars=yes, resizable=yes, menubar=1, status=1, width=975, height=500');
//Removed from above line: 
}

//function popWindowBig(theurl)
//{
	//theurl = theurl.replace(/\s/g, '+');
	//window.open(theurl,'','toolbar=yes,location=yes,scrollbars=yes,resizable=no,width=900,height=650,left=62,top=100');
//}

//function popWindow(mypage, myname, w, h, scroll) {
//var winl = (screen.width - w) / 2;
//var wint = (screen.height - h) / 2;
//winprops = 'height='+h+',width='+w+',top='+wint+',left='+winl+',scrollbars='+scroll+',resizable'
//win = window.open(mypage, myname, winprops)
//if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
//}

function popWindowBig(mypage, myname, w, h, scroll, resize) {
var winl = (screen.width - w) / 2;
var wint = (screen.height - h) / 2;
winprops = 'height='+h+', width='+w+', top='+wint+', left='+winl+', scrollbars='+scroll+', resizable='+resize+', toolbar=yes, location=yes, menubar=1, status=1'
win = window.open(mypage, myname, winprops)
//if (parseInt(navigator.appVersion) >= 4) { win.window.focus(); }
}

//* <a href="http://www.cdc.gov/cancer/ncccp/guidelines/index.htm" onclick="javascript:popWindow('http://www.cdc.gov/cancer/ncccp/guidelines/index.htm'); return false;"> *//
