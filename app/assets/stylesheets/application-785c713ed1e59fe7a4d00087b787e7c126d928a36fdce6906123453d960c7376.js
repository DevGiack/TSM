$(document).ready(function(){

  var quantitiy=0;
     $('.qty').click(function(qty, e){
          console.log(qty);
          // Stop acting like a button
          e.preventDefault();
          // Get the field name
          var quantity = parseInt($('#quantity').val());
          
          // If is not undefined
              
              $('#quantity').val(quantity + qty);
  
            
              // Increment
          document.cookie = "quantity=" + $('#quantity').val();
      });
    });
