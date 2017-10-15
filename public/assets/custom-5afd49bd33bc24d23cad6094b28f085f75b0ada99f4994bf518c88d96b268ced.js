// CUSTOM BOXSPRINGSPOT SAMENSTELLEN JAVASCRIPT //
// *** BY KHEYBAR QAYOUMI *** //
// SHOW NAME PERSON 1 BASED ON VALUE .NAME_PERSON_1
$('.name_person_1').change(function() {
   $('.show_name_person_1').text( $('.name_person_1').val() );
});

$('.name_person_2').change(function() {
   $('.show_name_person_2').text( $('.name_person_2').val() );
});

// Show ship to different address fields on click checkbox
$(".ship_to_different_address_fields").hide();
$('.ship_to_different_address').click(function() {
    if( $(this).is(':checked')) {
        $(".ship_to_different_address_fields").show();
    } else {
        $(".ship_to_different_address_fields").hide();
    }
});

// Show diseases on fields on click checkbox
$(".diseases_options").hide();
$('.show_diseases').click(function() {
    if( $(this).is(':checked')) {
        $(".diseases_options").show();
    } else {
        $(".diseases_options").hide();
    }
});

// Show diseases2 on fields on click checkbox
$(".diseases_options_2").hide();
$('.show_diseases_2').click(function() {
    if( $(this).is(':checked')) {
        $(".diseases_options_2").show();
    } else {
        $(".diseases_options_2").hide();
    }
});
