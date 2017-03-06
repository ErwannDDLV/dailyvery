function outputUpdate(vol) {
  var output = document.querySelector("#volume");
  output.value = vol;
  output.style.left = vol + 'px';
}
