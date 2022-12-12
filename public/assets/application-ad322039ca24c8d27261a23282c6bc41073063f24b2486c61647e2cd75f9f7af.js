
  function qty(f) {
    document.cookie = "quantity=0";
    if (!document.cookie.split('; ').find((row) => row.startsWith('quantity='))) {
        // Note that we are setting `SameSite=None;` in this example because the example
        // needs to work cross-origin.
        // It is more common not to set the `SameSite` attribute, which results in the default,
        // and more secure, value of `SameSite=Lax;`
        document.cookie = "doSomethingOnlyOnce=true; expires=Fri, 31 Dec 9999 23:59:59 GMT; SameSite=None; Secure";
    
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

