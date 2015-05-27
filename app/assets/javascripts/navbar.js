$(document).ready(function(){
    $(".pageTitle").on('click', function(event) {
      event.preventDefault();
      $(".userOptions").show()
   });
});