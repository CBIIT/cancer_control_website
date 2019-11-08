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
		$('body').removeAttr('style').attr('transform','inherit');
	});
// accordion and open 
    $('.psc-anchor').on('click', function(){
        $('#psc-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.pc-anchor').on('click', function(){
        $('#pc-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.hql-anchor').on('click', function(){
        $('#hql-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.hb-anchor').on('click', function(){
        $('#hb-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.dprs-anchor').on('click', function(){
        $('#dprs-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.rtp-anchor').on('click', function(){
        $('#rtp-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.sp-anchor').on('click', function(){
        $('#sp-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.eic-anchor').on('click', function(){
        $('#eic-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });
    $('.pqc-anchor').on('click', function(){
        $('#pqc-open').next('.accordion-heading').find('a.btn-accordion').trigger( 'click' );
    });	
	var h = location.hash.substr(1);
	if ((h === 'definition-survivorship')) {
		// alert(h);
		var anchor = window.location.hash;
		$('.collapse').collapse('hide');
    	$(anchor).collapse('show');
		$(anchor).prev('.accordion-heading').find('.glyphicon').toggleClass('glyphicon-minus');
	}
});