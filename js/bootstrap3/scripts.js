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
	var images = ['heroimagebanner1.jpg', 'heroimagebanner2.jpg', 'heroimagebanner3.jpg', 'heroimagebanner4.jpg'];
 	$('#hero-image').css({'background-image': 'url(images/' + images[Math.floor(Math.random() * images.length)] + ')'});
// Lightbox
	$('.magnify').click(function() {
		$('#myModal').css({'display':'block'});
	});
	$('.close').click(function() {
		$('#myModal').css({'display':'none'});
	});
// Homepage What's New Carousel
	$('#myCarousel').carousel({
	  interval: 60000
	});
	$('.carousel .item').each(function(){
	  var next = $(this).next();
	  if (!next.length) {
		next = $(this).siblings(':first');
	  }
	  next.children(':first-child').clone().appendTo($(this));
	  if (next.next().length>0) {
		  next.next().children(':first-child').clone().appendTo($(this)).addClass('rightest');
	  }
	  else {
		  $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
	  }
	});
});