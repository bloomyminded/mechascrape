$(document).ready(function() {
  $("button").click(function() {
    var url = $("input").val();
    $("#results").load("/fetch" + "?url=" + url);
  });
});
