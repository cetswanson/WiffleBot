var ready;
ready = function() {
   $("#replyButton").on('click', function(event) {
     event.preventDefault();
     $("#reply").toggle()
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
