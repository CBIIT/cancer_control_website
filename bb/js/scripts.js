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
	$("#skipNav").after('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true"></button></div></div></div>');
	
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

;
});