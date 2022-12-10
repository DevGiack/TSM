// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"


/* Button incrementation */

// $(document).ready(function() {
//       const minus = $('.quantity__minus');
//       const plus = $('.quantity__plus');
//       const input = $('.quantity__input');
//       minus.click(function(e) {
//         e.preventDefault();
//         var value = input.val();
//         if (value > 1) {
//           value--;
//         }
//         input.val(value);
//       });
      
//       plus.click(function(e) {
//         e.preventDefault();
//         var value = input.val();
//         value++;
//         input.val(value);
//       })
//     });

$(document).on('turbolinks:load', function() {
    setTimeout(function() {
      $('.alert').fadeOut();
    }, 3000);
  })

  $(document).on('turbolinks:load', function() {
    setTimeout(function() {
      $('.notice').fadeOut();
    }, 3000);
  });
