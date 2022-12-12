$(document).ready(function(){

  function qty(qty) {
    console.log("+");
    var quantity = parseInt($('#quantity').val());             
    document.cookie = "quantity=" + $('#quantity').val(quantity + qty);
}});
