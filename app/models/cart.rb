class Cart < ActiveRecord::Base
    acts_as_shopping_cart_using :cart_item
    def tax_pct
      19.6
    end
end
