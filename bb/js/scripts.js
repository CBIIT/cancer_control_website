$(document).ready(function () {
  "use strict";
    // Hide/show animation hamburger function
    
    $('.nav-trigger').on('click', function () {   
        if ($('.hamburger-text').text() === 'MENU') {
			$('.hamburger-text').text('CLOSE'); 
		} else {
            $('.hamburger-text').text('MENU');
        }
    });
});