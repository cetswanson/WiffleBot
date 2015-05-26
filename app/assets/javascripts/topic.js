$(document).ready(function(){
    $("#newTopicButton").on('click', function(event) {
      event.preventDefault();
      if($( '#topic_create' ).is(":visible")){
            $( '#topic_create' ).hide();
       } else{
            $( '#topic_create' ).show();
       }
   });
});