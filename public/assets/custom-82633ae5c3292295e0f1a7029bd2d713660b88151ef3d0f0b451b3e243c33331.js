// CUSTOM TENZEN SAMENSTELLEN JAVASCRIPT //
// *** BY KHEYBAR QAYOUMI *** //

// - Possible events radio buttons.
// ifClicked - user clicked on a customized input or an assigned label
// ifChanged - input's checked, disabled or indeterminate state is changed
// ifChecked - input's state is changed to checked
// ifUnchecked - checked state is removed
// ifToggled - input's checked state is changed
// ifDisabled -input's state is changed to disabled
// ifEnabled - disabled state is removed
// ifIndeterminate - input's state is changed to indeterminate
// ifDeterminate - indeterminate state is removed
// ifCreatedinput - is just customized
// ifDestroyed - customization is just removed

// SHOW NAME PERSON 1 BASED ON VALUE .NAME_PERSON_1
$('.name_person_1').change(function() {
   $('.show_name_person_1').text( $('.name_person_1').val() );
});

$('.name_person_2').change(function() {
   $('.show_name_person_2').text( $('.name_person_2').val() );
});

// // Show diseases on fields on click checkbox && show/display category question
// $(".diseases_options").hide();
// $('.show_diseases').click(function() {
//     if( this.checked ) {
//         $(".diseases_options").show();
//     } else {
//         $(".diseases_options").hide();
//     };
//     // Hide and disable budget and comfort categories on diseases
//     // if( this.checked || $('.show_diseases_2').checked ) {
//     //   $(".disable_on_diseases").prop("disabled", true);
//     //   $(".disable_on_diseases").hide();
//     // } else {
//     //   $(".disable_on_diseases").prop("disabled", false);
//     //   $(".disable_on_diseases").show();
//     // }
// });

// // Show diseases2 on fields on click checkbox && show/display category question
// $(".diseases_options_2").hide();
// $('.show_diseases_2').click(function() {
//     if( this.checked ) {
//         $(".diseases_options_2").show();
//     } else {
//         $(".diseases_options_2").hide();
//     };
//     // Hide and disable budget and comfort categories on diseases
//     // if( this.checked || $('.show_diseases').checked ) {
//     //   $(".disable_on_diseases").prop("disabled", true);
//     //   $(".disable_on_diseases").hide();
//     // } else {
//     //   $(".disable_on_diseases").prop("disabled", false);
//     //   $(".disable_on_diseases").show();
//     // }
// });

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

// show alert text if specific answer is chosen
$("#chassis_chosen").hide();
$(".show_chassis_chosen_warning").on('ifChanged', function() {
  if (this.checked) {
    $("#chassis_chosen").show();
  } else {
    $("#chassis_chosen").hide();
  }
});

// INITIALIZE TOOLTIPS
$(document).ready(function(){
  $('[data-toggle="popover"]').popover();
});
