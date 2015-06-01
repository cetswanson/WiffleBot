var ready;
ready = function() {

   $(".pageTitle").on('click', function(event) {
     event.preventDefault();
     if ($(".pageTitle").html() == "WiffleBot")  {
       $(".pageTitle").html("Welcome, Brother");
       $(".pageTitle").css("font-size", "5em");
       $(".layer").css("height", "14em")
   } else {
       $(".pageTitle").html("WiffleBot");
       $(".pageTitle").css("font-size", "6em");
       $(".layer").css("height", "15em")
   }
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
