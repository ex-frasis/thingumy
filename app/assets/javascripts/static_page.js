var aboutPageHeight = function () {
  $("#about-page").css(
    "height",
    window.screen.height - 105
  );
}

var timeoutId = undefined;

function cancelTimeout () {
  window.clearTimeout(timeoutId);
  timeoutId = undefined;
}

function setRefresh () {
  cancelTimeout();
  if ( window.location.pathname === "/" || window.location.pathname === "/home" ) {
    timeoutId = window.setTimeout(function () {
      window.location.reload();
    }, 15000);
  }
}

$(document).ready(aboutPageHeight);
$(document).on('page:load', aboutPageHeight);

$(document).ready(setRefresh);
$(document).on('page:load', setRefresh);
