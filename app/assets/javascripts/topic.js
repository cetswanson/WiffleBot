var ready;
ready = function() {

  $("#newTopicButton").on('click', function(event) {
    event.preventDefault();
    if($( '#topic_create' ).is(":visible")){
          $( '#topic_create' ).hide();
     } else{
          $( '#topic_create' ).show();
     }
  });

  $(".topic").on('mouseover', function(event) {
     $(this).css("background-color", "rgba(192,192,192, 0.8)")
  });

  $(".topic").on('mouseleave', function(event) {
     $(this).css("background-color", "rgba(192,192,192, 0.6)")
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
