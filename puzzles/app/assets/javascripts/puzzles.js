// // alert("hi");
//
// $(document).ready(function() {
//   console.log("ready");
//
//   var onSuccess = function(response) {
//     var todolist = $(".todo-list");
//     todolist.html("");
//     var html = "";
//
//     for (var i = 0; i < response.length;  i++){
//       html += "<li><a href='/finish/" + i + "'>" + response[i] + "</a></li>";
//     }
//     todolist.html(html);
//
//     $("#todo").val("");
//   };
//
//   var doAjax = function(data) {
//     $.ajax({
//       type: data ? "POST": "GET",
//       url: "/",
//       data: data ? data : null,
//       dataType: 'json',
//       success: onSuccess
//     });
//   };
//
//   $(".todo-form").on("submit", function(event) {
//     event.preventDefault();
//
//     var form = $(this);
//     var data = form.serialize();
//     doAjax(data);
// 
//   });
//
//   doAjax();
//
// });
