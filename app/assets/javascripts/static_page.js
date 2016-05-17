var aboutPageHeight = function () {
  $("#about-page").css(
    "height",
    window.screen.height - 105
  );
}

$(document).ready(aboutPageHeight);
$(document).on('page:load', aboutPageHeight);
