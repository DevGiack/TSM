document.cookie["quantity"] = 0
  function qty(f) {
    console.log("+");
    console.log(f);
    console.log(quantity);
    var quantity = parseInt(`${document.cookie["quantity"]}`);
    q = quantity + f;
    console.log(q)
    document.cookie = "quantity=" + q;
    };

