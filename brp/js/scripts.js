$(document).ready(function () {
	"use strict";
	$(".scrollToTop").click(function () {
		return $("body,html,document").animate({
			scrollTop: 0
		}, "slow"), !1
	}), $("header .navbar-toggle").on("click", function () {
		$(this).toggleClass("active"), "MENU" === $("header .nav-menu-title").text() ? $("header .nav-menu-title").text("CLOSE") : $("header .nav-menu-title").text("MENU")
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
// 	
	var e = ["brp-homepage-1.png", "brp-homepage-2.png", "brp-homepage-3.png", "brp-homepage-4.png"];
	$("#random-image").css({
		"background-image": "url(images/" + e[Math.floor(Math.random() * e.length)] + ")"
	}), $(".btn-accordion").keypress(function (e) {
		if (13 === e.which) return $(this).click(), !1
	}), $(".accordion-toggle").click(function () {
		$(this).find(".glyphicon").toggleClass("glyphicon-minus")
	}), $(".applyfunding-trigger").click(function () {
		$("#applyfunding-icon").find(".glyphicon").toggleClass("glyphicon-minus")
	}), $(".magnify").click(function () {
		$(this).next(".modal").css({
			display: "block"
		}), $("body").css({
			transform: "inherit"
		})
	}), $(".close").click(function () {
		$(this).parent(".modal").css({
			display: "none"
		}), $("body").removeAttr("style").attr({
			transform: "inherit"
		})
	});
	var a = location.hash.substr(1);
	if ("bbpsb" === a || "hbrb" === a || "hcirb" === a || "tcrb" === a || "rt" === a || "pus" === a || "rmd" === a || "tcr" === a || "pub" === a || "collapse-archive-1" === a || "collapse-1" === a || "collapse-2" === a || "collapse-3" === a || "collapse-4" === a || "collapse-5" === a || "collapse-6" === a || "collapse-7" === a || "collapse-8" === a || "collapse-9" === a || "collapse-10" === a) {
		var c = window.location.hash;
		$(".collapse").collapse("hide"), $(c).collapse("show"), $(c).prev(".accordion-heading").find(".glyphicon").toggleClass("glyphicon-minus")
	}
	$("#heading-prevention a").click(function () {
		$("img#framework").attr("src", "images/BRP-1.png")
	}), $("#heading-detection a.collapsed").click(function () {
		$("img#framework").attr("src", "images/BRP-2.png")
	}), $("#heading-diagnosis a.collapsed").click(function () {
		$("img#framework").attr("src", "images/BRP-3.png")
	}), $("#heading-survivorship a.collapsed").click(function () {
		$("img#framework").attr("src", "images/BRP-4.png")
	}), $(".carousel").carousel({
		interval: 9e3
	});
	
	$("#skipNav").after('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p><p>Resources for applicants and recipients of NIH funding: <a href="https://sbir.cancer.gov/funding/notices">https://sbir.cancer.gov/funding/notices</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true"></button></div></div></div>')
	
	
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
