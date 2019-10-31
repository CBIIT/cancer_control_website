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
	})
});
