// preloader
$(window).on('load', function(){
    $("body").css("overflow","auto");
    $(".preloader").fadeOut(200,function(){
        $(this).remove();
    });
});

// show question 2 if clicked on 2 persoonsmatras | homepage
$(".home-question-2").hide()
$(".show-home-question-2").on('click', function() {
    $(".home-question-1").hide();
    $(".home-question-2").show();
})
;
