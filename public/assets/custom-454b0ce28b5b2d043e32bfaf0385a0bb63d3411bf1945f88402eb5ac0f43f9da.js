// CUSTOM TENZEN SAMENSTELLEN JAVASCRIPT //
// *** BY KHEYBAR QAYOUMI *** //

// SHOW NAME PERSON 1 BASED ON VALUE .NAME_PERSON_1
$('.name_person_1').change(function() {
   $('.show_name_person_1').text( $('.name_person_1').val() );
});

$('.name_person_2').change(function() {
   $('.show_name_person_2').text( $('.name_person_2').val() );
});

// Show diseases on fields on click checkbox && show/display category question
$(".diseases_options").hide();
$('.show_diseases').click(function() {
    if( this.checked ) {
        $(".diseases_options").show();
        // $(".optional_question_category").hide();
    } else {
        $(".diseases_options").hide();
        // $(".optional_question_category").show();
    };

    // if( this.checked || $('.show_diseases_2').checked ) {
    //   $(".optional_question_category").hide();
    // } else {
    //   $(".optional_question_category").show();
    // };

});

// Show diseases2 on fields on click checkbox && show/display category question
$(".diseases_options_2").hide();
$('.show_diseases_2').click(function() {
    if( this.checked ) {
        $(".diseases_options_2").show();
    } else {
        $(".diseases_options_2").hide();
    };

    // if( this.checked || $('.show_diseases').checked ) {
    //   $(".optional_question_category").hide();
    // } else {
    //   $(".optional_question_category").show();
    // };
});

/////// CHECKOUT PAGE ////////

// Show ship to different address fields on click checkbox
$(".ship_to_different_address_fields").hide();
$('.ship_to_different_address').click(function() {
    if( this.checked ) {
      $(".ship_to_different_address_fields").show();
    } else {
      $(".ship_to_different_address_fields").hide();
    }
});

// Allow checkout if Terms of agreement is agreed upon
$('#terms_of_agreement').click(function() {
  if( this.checked ) {
    $("#pay_now_button").prop("disabled", false);
  } else {
    $("#pay_now_button").prop("disabled", true);
  }
});

$("#block_address_information").hide();
$("#last_field_personal_information").keyup(function() {
  if( $(this).val().length === 0 ) {
    $("#block_address_information").hide();
  }else {
    $("#block_address_information").show();
  }
});

$("#block_other_information").hide();
$("#block_payment_information").hide();
$(".last_field_address_information").keyup(function() {
  if( $(this).val().length === 0 ) {
    $("#block_other_information").hide();
    $("#block_payment_information").hide();
  }else {
    $("#block_other_information").show();
    $("#block_payment_information").show();
  }
});

$("#floor_options").hide();
$('#floor_select').click(function() {
    if( !this.checked ) {
      $("#floor_options").show();
    } else {
      $("#floor_options").hide();
    }
});