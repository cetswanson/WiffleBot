var ready;
ready = function() {

  $("#addImg").on('keypress', function(event) {
    if (event.keyCode == 13){
      var newField = '<input type="text" name="imgLink" id="imgLink"></input>';
      $(".replyImgs").append(newField);
      $(".replyImgs").children().last().focus();
    };
  });
  $("#imgsSubmit").on('click', function(event) {
    event.preventDefault();
    var inputVal = $(':focus').val();
    console.log(inputVal)
    // $("#reply_body").append($focused);
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
