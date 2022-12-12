$(document).ready(function(){

  var quantitiy=0;
     $('.quantity-right-plus').click(function(e){
          console.log("+");
          // Stop acting like a button
          e.preventDefault();
          // Get the field name
          var quantity = parseInt($('#quantity').val());
          
          // If is not undefined
              
              $('#quantity').val(quantity + 1);
  
            
              // Increment
          document.cookie = "quantity=" + $('#quantity').val();
      });
  
       $('.quantity-left-minus').click(function(e){
        console.log("-");
          // Stop acting like a button
          e.preventDefault();
          // Get the field name
          var quantity = parseInt($('#quantity').val());
          
          // If is not undefined
        
              // Increment
              if(quantity>0){
              $('#quantity').val(quantity - 1);
              }
          document.cookie = "quantity=" + $('#quantity').val();
      });
      
  });

  function qty(f) {
      document.cookie = "factor=" + f.toString();
      $('#quantity').val(quantity + f);
      document.cookie = "quantity=" + $('#quantity').val();
      };
