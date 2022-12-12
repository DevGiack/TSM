
  function qty(f) {
    if (!document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
        const quantity = parseInt(document.cookie
        .split('; ')
        .find((row) => row.startsWith('quantity='))
        ?.split('=')[1]);
        console.log("f:");
        console.log(f);
        q = quantity + f;
        console.log("quantity:");
        console.log(quantity);
        console.log("q:");
        console.log(q)
      }
      else {
        document.cookie = "quantity=" + f;
      }
    }
    // document.cookie = "quantity=0";
    // quantity = parseInt(`${document.cookie["quantity"]}`)
    // console.log(`${document.cookie.quantity}`);
    // console.log(f);
    // console.log(quantity);
    // var quantity = parseInt(`${document.cookie["quantity"]}`);
    // q = quantity + f;
    // document.cookie = "quantity=" + q;
    // };

