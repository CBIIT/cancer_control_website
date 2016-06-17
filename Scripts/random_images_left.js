// JavaScript Document
<!-- begin with the random images

//Left Navigation
var theImages = new Array() 
var theAltTag = new Array() 
var theLink = new Array() 
// do not change this
// To add more image files, continue with the
// pattern below, adding to the array.

/* Set image URLs */
theImages[0] = 'images/images-needhelp/1800cancer.jpg'
theImages[1] = 'images/images-needhelp/seer-tile.jpg'
theImages[2] = 'images/images-needhelp/smkfremp_tile.jpg'
theImages[3] = 'images/images-needhelp/smokefree_tile.gif'

/* Set image alternate text */
theAltTag[0] = 'This is test 1'
theAltTag[1] = 'This is test 2'
theAltTag[2] = 'This is test 3'
theAltTag[3] = 'This is test 4'

/* Set image link URLs */
theLink[0] = 'http://www.cancer.gov/help'
theLink[1] = 'http://www.yahoo.com'
theLink[2] = 'http://www.google.com'
theLink[3] = 'https://smokefree.gov/'




//Right Navigation
var rightImages = new Array() 
var rightAltTag = new Array() 
var rightImageLink= new Array() 
/* Set image URLs */
rightImages[0] = 'images/images-recoveryact/recovery_act_tile_159.jpg'
rightImages[1] = 'images/images-recoveryact/button-mono19.gif'

/* Set image alternate text */
rightAltTag[0] = 'This is test 1 for right navigation'
rightAltTag[1] = 'This is test 2 for right navigation'

/* Set image link URLs */
rightImageLink[0] = 'http://www.cancer.gov/help'
rightImageLink[1] = 'http://www.yahoo.com'



if (document.getElementById && document.createTextNode) {
  //left Navigation
  var the_div = document.getElementById("CISImage");
  var ran_num = Math.floor(Math.random()*(theImages.length));
  
  var the_HTML = "<a href=\""+theLink[ran_num]+"\">";
  the_HTML += "<img src=\""+theImages[ran_num]+"\" border=\"0\" ";
  the_HTML += "alt=\""+theAltTag[ran_num]+"\" /></a>";
  the_div.innerHTML = the_HTML; 
 }

// do not edit anything below this line
//var j = 0
/*var p = theImages.length;
var preBuffer = new Array()

var linkTo;
var alText ;
var source;
for (i = 0; i < p; i++){
   preBuffer[i] = new Image()
   preBuffer[i].src = theImages[i]
}

var whichImage = Math.round(Math.random()*(p-1));
function showImage(){
	source = theImages[whichImage];

	alText = theAltTag[whichImage];
	 linkTo = theLink[whichImage];
	//source = "<a href=" + linkTo +">" + source + "</a>";
	//document.write('<img src="'+theImages[whichImage]+'">');
	//document.images['CISImage'].src = "<a href=" + linkTo +">" + source + "</a>";
		//document.images['CISImage'].src = source;
	//document.images['CISImage'].alt = alText;
	//document.write('<a href="' + linkTo + '"><img src="'+theImages[whichImage]+'" border="0"></a>');
	  var the_HTML = "<a href=\""+linkTo[whichImage]+"\">";
  the_HTML += "<img src=\""+source[whichImage]+"\" class=\"banner_imgs\" ";
  the_HTML += "alt=\""+alText[whichImage]+"\" /></a>";
  the_div.innerHTML = the_HTML;
} 


var rightImages = new Array() 
// do not change this
// To add more image files, continue with the
// pattern below, adding to the array.
rightImages[0] = 'images/images-recoveryact/recovery_act_tile_159.jpg'
rightImages[1] = 'images/images-recoveryact/button-mono19.gif'

// do not edit anything below this line
var rlength = rightImages.length;
var rightPreBuffer = new Array()
for (j = 0; j < rlength; j++){
   rightPreBuffer[j] = new Image()
   rightPreBuffer[j].src = rightImages[j]
}

var rWhichImage = Math.round(Math.random()*(rlength-1));
function showRightTileImage(){
	var source = rightImages[rWhichImage];
	//document.write('<img src="'+theImages[whichImage]+'">');
	document.images['recoveryAct'].src = source;
} */