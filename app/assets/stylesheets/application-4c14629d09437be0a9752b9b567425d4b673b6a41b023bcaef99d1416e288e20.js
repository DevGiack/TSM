
  function qty(f) {
    document.cookie = "quantity=" + 0;
    quantity = parseInt(`${document.cookie["quantity"]}`)
    console.log(`${document.cookie["quantity"]}`);
    console.log(f);
    console.log(quantity);
    var quantity = parseInt(`${document.cookie["quantity"]}`);
    q = quantity + f;
    document.cookie = "quantity=" + q;
    };

