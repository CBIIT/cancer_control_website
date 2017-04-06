$(document).ready(function () {
  "use strict";
	// What's New Boxes the same height
	var heights = $('.whatsnew-container-content a.box .whatsnew-content').map(function ()
    {
        return $(this).height();
    }).get(), maxHeight = Math.max.apply(null, heights);
	$('.whatsnew-container-content a.box .whatsnew-content').height(maxHeight);
	
	var h = $('.whatsnew-container-content').height();
	$('.whatsnew-boxes').height(h);
	$('.previous-arrow').height(h);
	$('.next-arrow').height(h);
	// Homepage What's New Carousel
	var sliderLocation = parseInt($('.whatsnew-container-content').position().left);
	$('.previous-arrow').on('click', function () {
		if (sliderLocation !== 10) {
			sliderLocation = sliderLocation + 390;
			$('.whatsnew-container-content').animate({ left: sliderLocation });
		}
	});
	$('.next-arrow').on('click', function () {
		if ($(window).width() >= 1200) {
			if (sliderLocation !== -1160) {
				sliderLocation = sliderLocation - 390;
				$('.whatsnew-container-content').animate({ left: sliderLocation });
			}
		}
		if ($(window).width() < 1159 && $(window).width() >= 768) {
			if (sliderLocation !== -1550) {
				sliderLocation = sliderLocation - 390;
				$('.whatsnew-container-content').animate({ left: sliderLocation });
			}
		}
		if ($(window).width() < 768) {
			if (sliderLocation !== -1940) {
				sliderLocation = sliderLocation - 390;
				$('.whatsnew-container-content').animate({ left: sliderLocation });
			}
		}
	});	
});