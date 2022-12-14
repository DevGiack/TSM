module OrdersHelper
    def addresses_count
        UserAddress.where(user_id: current_user.id).count
    end

    def ref
        puts "bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb"
        ref = {}
        products = Product.all
        product_categories = ProductCategory.all
        products.each do |enr|
          ref[enr.id] = {:name => products.where(id: enr.id)[0].name, :category_name => product_categories.where(id: enr.product_category_id)[0].name}
        end
        return ref
    end
end
