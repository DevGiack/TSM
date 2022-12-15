
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
            const quantity = parseInt(document.cookie
            .split('; ')
            .find((row) => row.startsWith('quantity='))
            ?.split('=')[1]);
            myP = document.getElementById("show_qty");
            console.log("coockie ok");
            myP.innerHTML = `<b><I>${quantity} grammes</I></b>`;2
          }
      }
      function showAddress(id) {
        showElementDiv = document.getElementById("show_address");
        showElementDiv.innerHTML = `<b><I>address_id: ${id}</I></b>`;
      };
