// CUSTOM BOXSPRINGSPOT SAMENSTELLEN JAVASCRIPT //
// *** BY KHEYBAR QAYOUMI *** //

// SHOW NAME PERSON 1 BASED ON VALUE .NAME_PERSON_1
$('.name_person_1').change(function() {
   $('.show_name_person_1').text( $('.name_person_1').val() );
});