// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function () {
  $('.btn-group-fab').on('click', '.btn', function () {
    console.log('Dentro del jquery transaction');
    $('.btn-group-fab').toggleClass('active');
  });
  $('has-tooltip').tooltip();
});
