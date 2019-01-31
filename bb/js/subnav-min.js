// JavaScript Document
$(document).ready(function(){"use strict";
//Smooth scrolling when click to nav
function t(){
//Get current scroll position
var o=$(document).scrollTop();
//Iterate through all node
$("#subnavigation > ul > li > a").each(function(){var t=$(this),i=$(t.attr("href"));
//Compare the value of current position and the every section position in each scroll
i.position().top<=o&&i.position().top+i.height()>o?(
//Remove class active in all nav
$("#subnavigation > ul > li").removeClass("active"),
//Add class active
t.parent().addClass("active")):t.parent().removeClass("active")})}$("#subnavigation > ul > li > a").click(function(t){t.preventDefault();var i=$(this),o=$(i.attr("href")).position().top;$("html, body").animate({scrollTop:o},500)}),$(window).scroll(function(){t()})});