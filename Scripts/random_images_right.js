// JavaScript Document
<!-- begin with the random images

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
  var the_div = document.getElementById("recoveryAct");
  var ran_num_rightNav = Math.floor(Math.random()*(rightImages.length));
   
  var the_HTML_rightNav = "<a href=\""+rightImageLink[ran_num_rightNav]+"\">";
  the_HTML_rightNav += "<img src=\""+rightImages[ran_num_rightNav]+"\"  border=\"0\" ";
  the_HTML_rightNav += "alt=\""+rightAltTag[ran_num_rightNav]+"\" /></a>";
  the_div.innerHTML = the_HTML_rightNav;
  
}

