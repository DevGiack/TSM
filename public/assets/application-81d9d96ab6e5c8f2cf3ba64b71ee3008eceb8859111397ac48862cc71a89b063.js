$(document).ready(function(){
    var quantitiy=0;
    $('.qty').click(function(qty){
    var quantity = parseInt($('#quantity').val());             
    $('#quantity').val(quantity + qty);
    console.log(qty);
    document.cookie = "quantity=" + $('#quantity').val();
    });
});
