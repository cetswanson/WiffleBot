var ready;
ready = function() {

  $(".subforum").on('click', function(event) {

  });

  $(".subforum").on('mouseover', function(event) {
     $(this).css("background-color", "rgba(192,192,192, 0.8)")
  });

  $(".subforum").on('mouseleave', function(event) {
     $(this).css("background-color", "rgba(192,192,192, 0.6)")
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
