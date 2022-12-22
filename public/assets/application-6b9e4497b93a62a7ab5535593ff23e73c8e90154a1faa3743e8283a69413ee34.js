
  function qty(f) {
    if (document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
        console.log("cookie found!")
        const quantity = parseInt(document.cookie
        .split('; ')
        .find((row) => row.startsWith('quantity='))
        ?.split('=')[1]);
        q = quantity + f;
        var myDate = new Date();
        myDate.setMonth(myDate.getMonth() + 12)
        document.cookie = "quantity=" + `${q}` + ";expires=" + myDate + ";path=/";
      }
      else {
        console.log("cookie not found!")
        document.cookie = `quantity=${f}` + ";expires=" + myDate + ";path=/";
      }
      showQuantity(f)
    }
      function showQuantity(f) {
        if (document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
            console.log("cookie found!")

            const price = parseInt(document.cookie
              .split('; ')
              .find((row) => row.startsWith('price='))
              ?.split('=')[1]);

            const quantity = parseInt(document.cookie
            .split('; ')
            .find((row) => row.startsWith('quantity='))
            ?.split('=')[1]);

            myP = document.getElementById("show_qty");
            console.log("cookie ok");
            result = price * quantity
            myP.innerHTML = `<table><tr><td><b><I>${quantity} grammes</I></b></td><td><b><I>  soit  ${result} €</I></b></td></tr></table>`;
          }
      }
      function showAddress(id) {
        showElementDiv = document.getElementById("show_address");
        showElementDiv.innerHTML = `<b><I>address_id: ${id}</I></b>`;
      }
      function userConsent() {
        var myDate = new Date();
        myDate.setMonth(myDate.getMonth() + 12)
        console.log("user consent!")
        document.cookie = `user_consent=true` + ";expires=" + myDate + ";path=/";
      }
;
