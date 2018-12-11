$(document).on("turbolinks:load", function(){
$('.datepicker').datepicker();
// form select
$('select').formSelect();

// form open wizard
  $('.tap-target').tapTarget();
 $('.tap-target').tapTarget('open');
 $('.btn-fechar').tapTarget('open');

});
