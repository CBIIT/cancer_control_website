// JavaScript Document
$(document).ready(function () {
  "use strict";
// continuum graphic
	var f = $('.focus-container').height();
	var g = $('.continuum-wrapper').height();
	$('.divider-white-line').height(g);
	$('.crosscutting-container').height(f);
	// init arrows
	var bottom_of_arrow = $('#arrow').offset().top + $('#arrow').outerHeight();
	var bottom_of_screen = $(window).scrollTop() + $(window).height();
	if(bottom_of_screen > bottom_of_arrow){
		$('#arrow').toggleClass('absolute affix');
	}
	
	$(window).scroll( function(){
		// arrow on continuum
		var top_of_container = $('.continuum-focus').offset().top + 200;
		var bottom_of_container = $('.continuum-focus').offset().top + $('.continuum-focus').outerHeight();
		var bottom_of_screen = $(window).scrollTop() + $(window).height();
		
		if ((bottom_of_screen <= top_of_container) && ($('#arrow').hasClass('affix'))) {
			$('#arrow').toggleClass('absolute affix');
		}
		if((bottom_of_screen >= bottom_of_container) && ($('#arrow').hasClass('affix'))){
			$('#arrow').toggleClass('absolute affix');
			$('#arrow').addClass('bottomZero');
		}
		if((bottom_of_screen < bottom_of_container) && (top_of_container <= bottom_of_screen) && ($('#arrow').hasClass('absolute'))){
			$('#arrow').toggleClass('absolute affix');
			$('#arrow').removeClass('bottomZero');
		}
		// Check the location of each focus element
		$('.focus-box').each( function(){ 
			var bottom_of_object = $(this).offset().top + $(this).outerHeight();
			var bottom_of_window = $(window).scrollTop() + $(window).height();
			// If the object is completely visible in the window, fade it it 
			if( bottom_of_window > bottom_of_object ){
				$(this).animate({'opacity':'1'},200); 
				$(this).animate({'top':'0'},200);
			}
		}); 
    });
	$(window).on('resize', function(){
		var top_of_container = $('.continuum-focus').offset().top + 200;
		var bottom_of_container = $('.continuum-focus').offset().top + $('.continuum-focus').outerHeight();
		var bottom_of_screen = $(window).scrollTop() + $(window).height();
		
		if ((bottom_of_screen <= top_of_container) && ($('#arrow').hasClass('affix'))) {
			$('#arrow').toggleClass('absolute affix');
		}
		if((bottom_of_screen >= bottom_of_container) && ($('#arrow').hasClass('affix'))){
			$('#arrow').toggleClass('absolute affix');
			$('#arrow').addClass('bottomZero');
		}
		if((bottom_of_screen < bottom_of_container) && (top_of_container <= bottom_of_screen) && ($('#arrow').hasClass('absolute'))){
			$('#arrow').toggleClass('absolute affix');
			$('#arrow').removeClass('bottomZero');
		}
	});
});