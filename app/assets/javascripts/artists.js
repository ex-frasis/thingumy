var artistListHeight = function () {
  $(".artist-list").css("height",
    window.screen.height - 180
  );
}

$(document).ready(artistListHeight);
$(document).on('page:load', artistListHeight);
