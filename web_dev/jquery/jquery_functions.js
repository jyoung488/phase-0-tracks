$(document).ready(function() {
  $("button").click(function() {
    $("li").slideToggle(1000);
  });

  $("h1").addClass("header");

  $("button").addClass("button");

  $("body").dblclick(function() {
    $(this).css("background-color", "#FFFFE5")
  });
});