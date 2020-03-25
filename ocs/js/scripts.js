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
	
	$("#skipNav").after('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true" /></button></div></div></div>')

document
    .getElementById("alert-toggle-btn")
    .addEventListener("click", function() {
      var alertBody = document.querySelector(".alert-drawer__body");
      var alertImg = "";
      alertBody.classList.toggle("active");
      if (alertBody.className.match("active")) {
        alertBody.focus();
        alertImg =
          "https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-x.png";
      } else {
        alertImg =
          "https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png";
      }
      document.getElementById("alert-toggle-img").setAttribute("src", alertImg);
    });
});