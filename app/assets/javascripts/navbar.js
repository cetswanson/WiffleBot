$(document).ready(function(){
   $(".pageTitle").on('mouseover', function(event) {
     event.preventDefault();
     $(".pageTitle").css("color", "black");
  });
    $(".pageTitle").on('click', function(event) {
      event.preventDefault();
      $(".pageTitle").css("color", "black");
      $(".userOptions").show();
      $(".layer").css("height", "30%");
   });
});