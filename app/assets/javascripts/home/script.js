/*global $, window, document, setTimeout, WOW, jQuery*/
$(document).ready(function () {

    'use strict';
    // Defining used variables
    var skill            =   $('.skill');


    // Smooth scrolling using jQuery easing
    $('a.js-scroll-trigger[href*="#"]:not([href="#"])').on('click', function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
          var target = $(this.hash);
          target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
          if (target.length) {
            $('html, body').animate({
              scrollTop: (target.offset().top - 48)
            }, 1000, "easeInOutExpo");
            return false;
            }
        }
    });



    // animating progress values on scroll
    $(window).on('scroll', function () {
        var wScroll = $(window).scrollTop();

        if (wScroll > (skill.offset().top - 400)) {
            skill.each(function (i) {
                setTimeout(function () {
                    skill.eq(i).find('.progress-bar').attr('style', 'width: ' + skill.eq(i).find('li.strength').text() + '');
                }, 200 + (200 * i));
            });
        }

    });


    //Fact Counter + Text Count
    $('.counter').counterUp({
        delay: 10,
        time: 3000
    });


    //Screenshoot slider
    $(".owl-carousel").owlCarousel({
        responsive: {
            0: {
                items: 1
            },
            991: {
                items: 3
            }
        },
        loop: true,
        center: true,
        dots: true,
        nav: true,
        navText: ["<i class='fa fa-angle-left'></i>", "<i class='fa fa-angle-right'></i>"],
        autoplay: false
    });

});


//preloader
$(window).on('load', function(){
    $("body").css("overflow","auto");
    $(".preloader").fadeOut(1000,function(){
        $(this).remove();
    });
});