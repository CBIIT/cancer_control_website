$(document).ready(function(){"use strict";$(".scrollToTop").click(function(){return $("body,html,document").animate({scrollTop:0},"slow"),!1}),$("header .navbar-toggle").on("click",function(){$(this).toggleClass("active"),"MENU"===$("header .nav-menu-title").text()?$("header .nav-menu-title").text("CLOSE"):$("header .nav-menu-title").text("MENU")});var e=$(".navbar").offset().top,a=$(window);a.scroll(function(){a.scrollTop()>=e?$("body").addClass("notransform"):$("body").removeClass("notransform")});var t=["brp-homepage-1.png","brp-homepage-2.png","brp-homepage-3.png","brp-homepage-4.png"];$("#random-image").css({"background-image":"url(images/"+t[Math.floor(Math.random()*t.length)]+")"}),$(".btn-accordion").keypress(function(e){if(13===e.which)return $(this).click(),!1}),$(".accordion-toggle").click(function(){$(this).find(".glyphicon").toggleClass("glyphicon-minus")}),$(".applyfunding-trigger").click(function(){$("#applyfunding-icon").find(".glyphicon").toggleClass("glyphicon-minus")}),$(".magnify").click(function(){$(this).next(".modal").css({display:"block"}),$("body").css({transform:"inherit"})}),$(".close").click(function(){$(this).parent(".modal").css({display:"none"}),$("body").removeAttr("style").attr({transform:"inherit"})});var o=location.hash.substr(1);if("bbpsb"===o||"hbrb"===o||"hcirb"===o||"tcrb"===o||"rt"===o||"pus"===o||"rmd"===o||"tcr"===o||"pub"===o||"collapse-archive-1"===o||"collapse-1"===o||"collapse-2"===o||"collapse-3"===o||"collapse-4"===o||"collapse-5"===o||"collapse-6"===o||"collapse-7"===o||"collapse-8"===o||"collapse-9"===o||"collapse-10"===o){var i=window.location.hash;$(".collapse").collapse("hide"),$(i).collapse("show"),$(i).prev(".accordion-heading").find(".glyphicon").toggleClass("glyphicon-minus")}$("#heading-prevention a").click(function(){$("img#framework").attr("src","images/BRP-1.png")}),$("#heading-detection a.collapsed").click(function(){$("img#framework").attr("src","images/BRP-2.png")}),$("#heading-diagnosis a.collapsed").click(function(){$("img#framework").attr("src","images/BRP-3.png")}),$("#heading-survivorship a.collapsed").click(function(){$("img#framework").attr("src","images/BRP-4.png")}),$(".carousel").carousel({interval:9e3}),$("#skipNav").after('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true" /></button></div></div></div>'),document.getElementById("alert-toggle-btn").addEventListener("click",function(){var e=document.querySelector(".alert-drawer__body"),a="";e.classList.toggle("active"),e.className.match("active")?(e.focus(),a="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-x.png"):a="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png",document.getElementById("alert-toggle-img").setAttribute("src",a)})});