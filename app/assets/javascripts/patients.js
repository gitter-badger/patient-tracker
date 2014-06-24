// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

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
  encounter_types = ['adult_inpatient_and_ed', 'adult_icu', 'pediatric_inpatient',
  'pediatric_newborn', 'pediatric_ed', 'continuity_inpatient', 'continuity_external']
  var total =  parseInt($('#encounter_types_' + encounter_types[0]).val()) +
               parseInt($('#encounter_types_' + encounter_types[1]).val()) +
               parseInt($('#encounter_types_' + encounter_types[2]).val()) +
               parseInt($('#encounter_types_' + encounter_types[3]).val()) +
               parseInt($('#encounter_types_' + encounter_types[4]).val()) +
               parseInt($('#encounter_types_' + encounter_types[5]).val()) +
               parseInt($('#encounter_types_' + encounter_types[6]).val());
  console.log (total);
  $("#total").html(total);
}
