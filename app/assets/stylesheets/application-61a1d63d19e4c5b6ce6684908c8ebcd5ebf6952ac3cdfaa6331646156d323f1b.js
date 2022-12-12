$(document).ready(function(){
var quantitiy = 0
  function qty(f) {
    console.log("+");
    var quantity = parseInt($('#quantity').val());
    q = quantity + f;
    document.cookie = "quantity=" + q.toString();
    }
});
