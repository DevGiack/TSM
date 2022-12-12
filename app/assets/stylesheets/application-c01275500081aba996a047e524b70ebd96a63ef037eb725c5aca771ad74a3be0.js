
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
            const output = document.getElementById('show_qty')
            output.textContent = `${f} grammes`
          }
          else {
            const output = document.getElementById('show_qty')
            output.textContent = `>${document.cookie}`
            document.cookie = "0 gramme";
          }
      }
;
