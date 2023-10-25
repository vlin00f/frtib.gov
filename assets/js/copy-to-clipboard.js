
function copyToClipboard(element) {
  var theText = document.getElementById(element);
  theText.select();
  theText.setSelectionRange(0,99999); /* mobile issue */
  navigator.clipboard.writeText(theText.value);
  console.log('copied "'+theText.value+'" to the clipboard')
}
