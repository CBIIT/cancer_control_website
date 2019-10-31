$(document).ready(function () {
  "use strict";
// Smooth scroll back to top
	$('.scrollToTop').click(function(){
		$('body,html,document').animate({scrollTop:0}, 'slow');
		return false;
	});
// sticky notransform
	var distance = $('.navbar').offset().top,
		$window = $(window);

	$window.scroll(function() {
		if ( $window.scrollTop() >= distance ) {
			$("body").addClass("notransform");
		} else {
			$("body").removeClass("notransform");
		}
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
	var images = ['heroimagebanner1.jpg', 'heroimagebanner2.jpg'];
 	$('#hero-image').css({'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'});
// Lightbox
	$('.magnify').click(function() {
		$(this).next('.modal').css({'display':'block'});
		$('body').css({ transform:'inherit'});
	});
	$('.close').click(function() {
		$(this).parent('.modal').css({'display':'none'});
		$("body").removeAttr("style").attr({transform:'inherit'});
	});
// Accordion +/- toggle	
	$('.accordion-toggle').click(function() {
		$(this).find('.glyphicon').toggleClass('glyphicon-minus');
	});
});