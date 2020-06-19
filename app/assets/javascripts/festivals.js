function preview() {
  var result = URL.createObjectURL(event.target.files[0]);
  $('#img-upload').attr('src', result);
  $('#imagen').removeClass('d-none');
}
