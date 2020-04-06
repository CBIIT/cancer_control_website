$(document).ready(function(){"use strict";$(".nav-trigger").on("click",function(){"MENU"===$(".hamburger-text").text()?$(".hamburger-text").text("CLOSE"):$(".hamburger-text").text("MENU")}),$("#main-content").prepend('<div class="alert-drawer-wrapper" role="alertdialog"><div class="alert-drawer"><div class="alert-drawer__heading"><p><span class="alert-drawer-title">COVID-19 is an emerging, rapidly evolving situation.</span></p></div><div class="alert-drawer__body" tabindex="0"><p>What people with cancer should know: <a href="https://www.cancer.gov/coronavirus">https://www.cancer.gov/coronavirus</a></p><p>Guidance for cancer researchers: <a href="https://www.cancer.gov/coronavirus-researchers">https://www.cancer.gov/coronavirus-researchers</a></p><p>Get the latest public health information from CDC: <a href="https://www.coronavirus.gov">https://www.coronavirus.gov</a></p><p>Get the latest research information from NIH: <a href="https://www.nih.gov/coronavirus">https://www.nih.gov/coronavirus</a></p></div><div class="alert-drawer__toggle"><button type="button" id="alert-toggle-btn"><img id="alert-toggle-img" src="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png" alt="" aria-hidden="true" /></button></div></div></div>'),document.getElementById("alert-toggle-btn").addEventListener("click",function(){var n=document.querySelector(".alert-drawer__body"),o="";n.classList.toggle("active"),n.className.match("active")?(n.focus(),o="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-x.png"):o="https://www.cancer.gov/sites/g/files/xnrzdm211/files/cgov_contextual_image/2020-03/white-down-arrow.png",document.getElementById("alert-toggle-img").setAttribute("src",o)})});