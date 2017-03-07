// function outputUpdate(vol) {
//   var output = document.querySelector("#volume");
//   output.value = vol;
//   output.style.left = vol + 'px';
// }

$( function() {
  $( "#slider" ).slider({
    value: $( "#search_radius" ).val(),
    min: 1,
    max: 10,
    step: 1,
    slide: function( event, ui ) {
      var valueTest = ui.value;
      $( ".ui-slider-handle" ).text(valueTest + ' km');
      $( "#search_radius" ).val(valueTest);
    },
  });
} );


// "#{@random_quote.quote}"
