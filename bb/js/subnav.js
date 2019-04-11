// JavaScript Document
$(document).ready(function () {
    "use strict";
    //Smooth scrolling when click to nav
    $('#subnavigation > ul > li > a').click(function (e) {
        e.preventDefault();
        var curLink = $(this);
        var scrollPoint = $(curLink.attr('href')).position().top;
        $('html, body').animate({scrollTop: scrollPoint}, 500);
    });
    $(window).scroll(function () {
        onScrollHandle();
    });
    function onScrollHandle() {
        //Get current scroll position
        var currentScrollPos = $(document).scrollTop();
        //Iterate through all node
        $('#subnavigation > ul > li > a').each(function () {
            var curLink = $(this);
            var refElem = $(curLink.attr('href'));
            //Compare the value of current position and the every section position in each scroll
            if (refElem.position().top <= currentScrollPos && refElem.position().top + refElem.height() > currentScrollPos) {
                //Remove class active in all nav
                $('#subnavigation > ul > li').removeClass("active");
                //Add class active
                curLink.parent().addClass("active");
            }
            else {
                curLink.parent().removeClass("active");
            }
        });
    }
});