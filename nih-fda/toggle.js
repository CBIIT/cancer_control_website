// JavaScript Document


function loadjscssfile(filename, filetype){
 if (filetype=="js"){ //if filename is a external JavaScript file
  var fileref=document.createElement('script')
  fileref.setAttribute("type","text/javascript")
  fileref.setAttribute("src", filename)
 }
 else if (filetype=="css"){ //if filename is an external CSS file
  var fileref=document.createElement("link")
  fileref.setAttribute("rel", "stylesheet")
  fileref.setAttribute("type", "text/css")
  fileref.setAttribute("href", filename)
 }
 if (typeof fileref!="undefined")
  document.getElementsByTagName("head")[0].appendChild(fileref)
}

loadjscssfile("toggle.css", "css") ////dynamically load and add this .css file

function toggleVis( elemID )
{    var elem = document.getElementById( elemID );
	if( elem.className == 'toggleHidden' )
        {        elem.className = 'toggleVisible';
		         
        }
        else
        {        elem.className = 'toggleHidden';
        }
}


function toggle_with_image(image, elemID){ 
		var elem = document.getElementById( elemID );
		
		if( elem.className == 'toggleHidden' )
		{       
			elem.className = 'toggleVisible';
			document.getElementById(image).src="images/minus.gif"; 
			document.getElementById(image).alt="Close"; 
		         
        /*} else if( elem.className == 'toggleVisible' ) {        
			elem.className = 'toggleHidden';
			document.getElementById(image).src="images/plus.gif"; 
			document.getElementById(image).alt="Open list"; */
        } else {        
			elem.className = 'toggleHidden';
			document.getElementById(image).src="images/plus.gif"; 
			document.getElementById(image).alt="Open"; 
        }
}


var _features = 'location=yes,statusbar=yes,toolbar=yes,menubar=yes,scrollbars=yes,resizable=yes,width=800,height=625';
var _target = '_blank';
function window_popup(url) {
    var theWindow = window.open(url, _target, _features);
    theWindow.focus();
    return theWindow;
}

//function MM_openBrWindow(theURL,winName,features) { //v2.0
     //       window.open(theURL,winName,features);
//}  

