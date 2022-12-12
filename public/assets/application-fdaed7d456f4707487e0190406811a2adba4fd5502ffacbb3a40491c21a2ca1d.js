$(document).ready(function(){

  function qty(qty) {
    console.log("+");
    var quantity = parseInt($('#quantity').val());             
    console.log(qty);
    document.cookie = "quantity=" + $('#quantity').val(quantity + qty);
}});
