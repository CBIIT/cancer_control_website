$(document).ready(function () {
  "use strict";
// Smooth scroll back to top
	$('.scrollToTop').click(function(){
		$('body,html,document').animate({scrollTop:0}, 'slow');
		return false;
	});
// Hamburger menu to X and Menu text change to Close
	$('header .navbar-toggle').on('click', function () {
		$(this).toggleClass('active');
		if ($('header .nav-menu-title').text() === 'MENU') {
			$('header .nav-menu-title').text('CLOSE'); 
		} else { 
			$('header .nav-menu-title').text('MENU');
		}
	});
// Random homepage hero image	
	var images = ["IS-homepage-1.png","IS-homepage-2.png","IS-homepage-3.png"];
	$('#random-image').css({'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'});
// Accordion enter key and +/- toggle	
	$('.btn-accordion').keypress(function (e) {
	 	var key = e.which;
	 	if (key === 13) {  // the enter key code
			$(this).click();
		return false;  
	  	}
	});
	$('.accordion-toggle').click(function() {
		$(this).find('.glyphicon').toggleClass('glyphicon-minus');
	});
// Lightbox
	$('.magnify').click(function() {
		$(this).next('.modal').css({'display':'block'});
		$('body').css({ transform: "inherit" });
	});
	$('.close').click(function() {
		$(this).parent('.modal').css({'display':'none'});
		$("body").removeAttr("style").attr("transform","inherit");
	});
// Data and Tools landing page accordion and open collapseTwo anchor on funding-opportunities.html
	var h = location.hash.substr(1);
	if ((h === 'bbpsb')||
		(h === 'hbrb')||
		(h === 'hcirb')||
		(h === 'tcrb')||
		(h === 'rt')||
		(h === 'pus')||
		(h === 'rmd')||
		(h === 'tcr')||
		(h === 'pub')||
		(h === 'collapse-archive-1')||
		(h === 'collapse-1')||
		(h === 'collapse-2')||
		(h === 'collapse-3')||
		(h === 'collapse-4')||
		(h === 'collapse-5')||
		(h === 'collapse-6')||
		(h === 'collapse-7')||
		(h === 'collapse-8')||
		(h === 'collapse-9')||
		(h === 'collapse-10')) {
		//alert(h);
		var anchor = window.location.hash;
		$('.collapse').collapse('hide');
    	$(anchor).collapse('show');
		$(anchor).prev('.accordion-heading').find('.glyphicon').toggleClass('glyphicon-minus');
	}
});