$(document).ready(function(){"use strict";$(".scrollToTop").click(function(){return $("body,html,document").animate({scrollTop:0},"slow"),!1});var t=$(".navbar").offset().top,e=$(window);e.scroll(function(){e.scrollTop()>=t?$("body").addClass("notransform"):$("body").removeClass("notransform")}),$("header .navbar-toggle").on("click",function(){$(this).toggleClass("active"),"MENU"===$("header .nav-menu-title").text()?$("header .nav-menu-title").text("CLOSE"):$("header .nav-menu-title").text("MENU")});var a=["heroimagebanner1.jpg","heroimagebanner2.jpg"];$("#hero-image").css({"background-image":"url(images/"+a[Math.floor(Math.random()*a.length)]+")"}),$(".magnify").click(function(){$(this).next(".modal").css({display:"block"}),$("body").css({transform:"inherit"})}),$(".close").click(function(){$(this).parent(".modal").css({display:"none"}),$("body").removeAttr("style").attr({transform:"inherit"})}),$(".accordion-toggle").click(function(){$(this).find(".glyphicon").toggleClass("glyphicon-minus")}),$("#skipNav").after('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p><p>Resources for applicants and recipients of NIH funding: <a href="https://sbir.cancer.gov/funding/notices">https://sbir.cancer.gov/funding/notices</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true"></button></div></div></div>'),document.getElementById("alert-toggle-btn").addEventListener("click",function(){var t=document.querySelector(".alert-drawer__body"),e="";t.classList.toggle("active"),t.className.match("active")?(t.focus(),e="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-x.png"):e="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png",document.getElementById("alert-toggle-img").setAttribute("src",e)})});