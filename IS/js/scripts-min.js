$(document).ready(function(){"use strict";$('.scrollToTop').click(function(){$('body,html,document').animate({scrollTop:0},'slow');return!1});$('header .navbar-toggle').on('click',function(){$(this).toggleClass('active');if($('header .nav-menu-title').text()==='MENU'){$('header .nav-menu-title').text('CLOSE')}else{$('header .nav-menu-title').text('MENU')}});var images=["IS-homepage-1.jpg","IS-homepage-2.jpg","IS-homepage-3.jpg","IS-homepage-4.jpg"];$('#random-image').css({'background-image':'url(images/'+images[Math.floor(Math.random()*images.length)]+')'});$('.btn-accordion').keypress(function(e){var key=e.which;if(key===13){$(this).click();return!1}});$('.accordion-toggle').click(function(){$(this).find('.glyphicon').toggleClass('glyphicon-minus')});$('.magnify').click(function(){$(this).next('.modal').css({'display':'block'});$('body').css({transform:"inherit"})});$('.close').click(function(){$(this).parent('.modal').css({'display':'none'});$("body").removeAttr("style").attr("transform","inherit")});var h=location.hash.substr(1);if((h==='bbpsb')||(h==='hbrb')||(h==='hcirb')||(h==='tcrb')||(h==='rt')||(h==='pus')||(h==='rmd')||(h==='tcr')||(h==='pub')||(h==='collapse-archive-1')||(h==='collapse-1')||(h==='collapse-2')||(h==='collapse-3')||(h==='collapse-4')||(h==='collapse-5')||(h==='collapse-6')||(h==='collapse-7')||(h==='collapse-8')||(h==='collapse-9')||(h==='collapse-10')){var anchor=window.location.hash;$('.collapse').collapse('hide');$(anchor).collapse('show');$(anchor).prev('.accordion-heading').find('.glyphicon').toggleClass('glyphicon-minus')}})