// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
var data_withfestival;
$('#modal-window').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget);
  data_withfestival = button.data('withfestival');
  
});

if (!data_withfestival) {
  $('select').addClass('d-none');
}
