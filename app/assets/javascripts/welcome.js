$(document).ready(function(){
    $(".pageTitle").on('click', function(event) {
      event.preventDefault();
      if ($(".pageTitle").html() == "WiffleBot")  {
        $(".pageTitle").html("Welcome, Brother");
        $(".pageTitle").css("font-size", "5em");
        $(".layer").css("height", "25%")
    } else {
      $(".pageTitle").html("WiffleBot");
      $(".pageTitle").css("font-size", "6em");
      $(".layer").css("height", "30%")
    }
   });
});