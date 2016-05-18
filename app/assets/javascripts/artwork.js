var sliderize = function () {
  $('#artwork-slider-left').slideReveal({
    trigger: $('#trigger-left')
  });

  $('#artwork-slider-right').slideReveal({
    trigger: $('#trigger-right'),
    position: "right"
  });
}

$(document).ready(sliderize);
$(document).on('page:load', sliderize);
