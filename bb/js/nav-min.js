jQuery(document).ready(function(s){function e(){var e=s(window).scrollTop();0<i.length?o(e):n(e),r=e,t=!1}function n(e){
//there's no secondary nav or secondary nav is below primary nav
f<r-e?
//if scrolling up...
d.removeClass("is-hidden"):f<e-r&&u<e&&
//if scrolling down...
d.addClass("is-hidden")}function o(e){
//secondary nav below intro section - sticky secondary nav
var s=i.offset().top-a.height()-d.height();e<=r?
//if scrolling up... 
e<s?(
//secondary nav is not fixed
d.removeClass("is-hidden"),a.removeClass("fixed slide-up"),i.removeClass("secondary-nav-fixed")):f<r-e&&(
//secondary nav is fixed
d.removeClass("is-hidden"),a.removeClass("slide-up").addClass("fixed"),i.addClass("secondary-nav-fixed")):
//if scrolling down...	
s+u<e?(
//hide primary nav
d.addClass("is-hidden"),a.addClass("fixed slide-up"),i.addClass("secondary-nav-fixed")):s<e&&(
//once the secondary nav is fixed, do not hide primary nav if you haven't scrolled more than scrollOffset 
d.removeClass("is-hidden"),a.addClass("fixed").removeClass("slide-up"),i.addClass("secondary-nav-fixed"))}
// Back to Top
var d=s(".auto-hide-header"),a=s(".secondary-nav"),
//this applies only if secondary nav is below intro section
i=s(".sub-nav-hero"),l=d.height(),t=!1,r=0,c=0,f=10,u=150;
//set scrolling variables
d.on("click",".nav-trigger",function(e){
// open primary navigation on mobile
e.preventDefault(),d.toggleClass("nav-open")}),s(window).on("scroll",function(){t||(t=!0,window.requestAnimationFrame?requestAnimationFrame(e):setTimeout(e,250))}),s(window).on("resize",function(){l=d.height()}),s(".btn-backtotop").click(function(){return s("body,html,document").animate({scrollTop:0},"slow"),!1}),s(function(){s(window).scroll(function(){300<s(window).scrollTop()?(s(".btn-backtotop").fadeIn().css("display","inline-flex"),s(".homepage-logo").fadeIn().css("display","block")):(s(".btn-backtotop").fadeOut(),s(".homepage-logo").fadeOut())})})});