var sliderize = function () {
  $('#slider').slideReveal({
    trigger: $('#trigger')
  });
}

$(document).ready(sliderize);
$(document).on('page:load', sliderize);
