var ready;
ready = function() {

  $(".subforum").on('click', function(event) {

  });

  $(".subforum").on('mouseover', function(event) {
     $(this).css("background-color", "rgba(192,192,192, 0.8)")
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
