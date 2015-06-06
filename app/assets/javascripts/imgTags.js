var ready;
ready = function() {

  $("#addImg").on('keypress', function(event) {
    if (event.keyCode == 13){
      var newField = '<input type="text" name="imgLink"></input>';
      $(".replyImgs").append(newField);
      $(".replyImgs").children().last().focus();
    };
  });
  $("#imgsSubmit").on('click', function(event) {
    event.preventDefault();
    console.log("Test")
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
