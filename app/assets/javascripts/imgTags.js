var ready;
ready = function() {

  $("#addImg").on('keypress', function(event) {
    event.preventDefault();
    if (event.keyCode == 13){
      var newField = '<input type="text" name="imgLink"></input>';
      $(".replyImgs").append(newField);
      $(".replyImgs").children().last().focus();
    }
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
