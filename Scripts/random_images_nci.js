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
theImages[0] = 'images/nci/tile_need.gif'
theImages[1] = 'images/nci/tile_recovery.gif'
theImages[2] = 'images/nci/tile_cancer_bull.gif'

/* Set image alternate text */
theAltTag[0] = 'Need Help? Contact us by phone (1-800-422-6237), Web, or e-mail'
theAltTag[1] = 'Recovery Act at NCI - Learn More'
theAltTag[2] = 'Get the latest cancer research news from NCI'


/* Set image link URLs */
theLink[0] = 'http://www.cancer.gov/help'
theLink[1] = 'http://www.cancer.gov/recovery'
theLink[2] = 'http://www.cancer.gov/ncicancerbulletin/ '



if (document.getElementById && document.createTextNode) {
  //left Navigation
  var the_div = document.getElementById("NCIImage");
  var ran_num = Math.floor(Math.random()*(theImages.length));
  
  var the_HTML = "<a href=\""+theLink[ran_num]+"\">";
  the_HTML += "<img src=\""+theImages[ran_num]+"\" border=\"0\" ";
  the_HTML += "alt=\""+theAltTag[ran_num]+"\" /></a>";
  the_div.innerHTML = the_HTML; 
 }

