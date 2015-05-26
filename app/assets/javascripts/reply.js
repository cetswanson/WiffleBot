$(document).ready(function(){
    $("#replyButton").on('click', function(event) {
      event.preventDefault();
      $("#reply").toggle()
   });
});