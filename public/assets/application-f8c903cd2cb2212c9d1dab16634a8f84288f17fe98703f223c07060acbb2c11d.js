var quantity = 0
  function qty(f) {
    console.log("+");
    var quantity = parseInt(`${document.cookie["quantity"]}`);
    q = quantity + f;
    console.log(`${document.cookie}`)
    document.cookie = "quantity=" + q;
    };

