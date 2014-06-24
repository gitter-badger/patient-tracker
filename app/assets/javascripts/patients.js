# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

var section;

function setEncounteredOn(){
  var date = $('#date').val();
  console.log(date);

  $('#encountered_on').val(date);
}

function setSection(a){
  console.log(a);
  section = a;
  incrementNumber();
}

function incrementNumber(){
  console.log(section);
  current_value = parseInt( $('#' + section).text() );
  console.log(current_value);
  current_value++;
  console.log(current_value);

  $("#"+section).html(current_value);
  $('#encounter_types_' + section).val(current_value);

  $("#"+section).addClass( "gradient_blue" );
  $("#"+section).removeClass( "gradient_light" );
  calcTotal();
}

function calcTotal(){
  var total =  parseInt($('#encounter_types_adult_medicine').val()) +
               parseInt($('#encounter_types_icu').val()) +
               parseInt($('#encounter_types_long_term_care').val()) +
               parseInt($('#encounter_types_newborn').val()) +
               parseInt($('#encounter_types_pediatric_inpatient').val()) +
               parseInt($('#encounter_types_other').val());
  console.log (total);
  $("#total").html(total);
}
