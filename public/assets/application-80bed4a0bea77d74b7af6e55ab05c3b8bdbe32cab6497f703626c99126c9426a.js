
  function qty(f) {
    if (document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
        console.log("cookie found!")
        const quantity = parseInt(document.cookie
        .split('; ')
        .find((row) => row.startsWith('quantity='))
        ?.split('=')[1]);
        q = quantity + f;
        document.cookie = `quantity=${q}`;
      }
      else {
        console.log("cookie not found!")
        document.cookie = `quantity=${f}`;
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
            myP.innerHTML = `<b><I>${quantity} grammes</I></b>`;
          }
      };
