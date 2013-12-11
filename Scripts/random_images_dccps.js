// JavaScript Document
<!-- begin with the random images

//Right Navigation
var rightImages = new Array() 
var rightAltTag = new Array() 
var rightImageLink= new Array() 
/* Set image URLs */
rightImages[0] = 'images/dccps/tile_hints.gif'
rightImages[1] = 'images/dccps/tile_planet.gif'
rightImages[2] = 'images/dccps/tile_seer.gif'
rightImages[3] = 'images/dccps/tile_sfw.gif'
rightImages[4] = 'images/dccps/tile_smokefree_gov.gif'

/* Set image alternate text */
rightAltTag[0] = 'Health Information National Trends Survey - Hints - visit site'
rightAltTag[1] = 'Cancer Control P.L.A.N.E.T.'
rightAltTag[2] = 'SEER'
rightAltTag[3] = 'women.smokefree.gov - Quit Smoking TODAY! we can help'
rightAltTag[4] = 'smokefree.gov - Quit smoking today!'

/* Set image link URLs */
rightImageLink[0] = 'http://hints.cancer.gov'
rightImageLink[1] = 'http://ccplanet.cancer.gov'
rightImageLink[2] = 'http://seer.cancer.gov'
rightImageLink[3] = 'http://women.smokefree.gov'
rightImageLink[4] = 'http://www.smokefree.gov'


if (document.getElementById && document.createTextNode) {
  var the_div = document.getElementById("dccps");
  var ran_num_rightNav = Math.floor(Math.random()*(rightImages.length));
   
  var the_HTML_rightNav = "<a href=\""+rightImageLink[ran_num_rightNav]+"\">";
  the_HTML_rightNav += "<img src=\""+rightImages[ran_num_rightNav]+"\"  border=\"0\" ";
  the_HTML_rightNav += "alt=\""+rightAltTag[ran_num_rightNav]+"\" /></a>";
  the_div.innerHTML = the_HTML_rightNav;
  
}

