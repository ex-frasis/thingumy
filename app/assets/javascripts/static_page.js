var aboutPageHeight = function () {
  $("#about-page").css(
    "height",
    window.screen.height - 105
  );
}

var reload = function () {
  window.location.reload();
}

var refreshHomePage = function () {
  if ( window.location.pathname === "/" || window.location.pathname === "/home" ) {
    window.setTimeout(reload, 15000);
  }
}

$(document).ready(aboutPageHeight);
$(document).on('page:load', aboutPageHeight);

$(document).ready(refreshHomePage);
$(document).on('page:load', refreshHomePage);
