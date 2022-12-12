
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
    }
    function showQuantity() {
        if (document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
            console.log("cookie found!")
            const quantity = parseInt(document.cookie
            .split('; ')
            .find((row) => row.startsWith('quantity='))
            ?.split('=')[1]);
            q = quantity + f;
            document.cookie = `quantity=${q}`;
            myP = document.getElementById("show_qty");
            console.log("coockie ok");
            myP.innerHTML = `${q} grammes`;
          }
          else {
            myP = document.getElementById("show_qty");
            console.log("pas de coockie");
            myP.innerHTML = "0 grammes";
          }
      }
;
