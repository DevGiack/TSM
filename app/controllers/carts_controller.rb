class CartsController < ApplicationController
    before_action :extract_shopping_cart
  
    def index
      @ref = {}
      @total = @shopping_cart.total
      @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
      @products = Product.all
      @product_categories = ProductCategory.all
      @products.each do |enr|
        puts "enr id = " + enr.id.to_s
        @ref[enr.id] = {:name => @products.where(id: enr.id)[0].name, :category_name => @product_categories.where(id: enr.product_category_id)[0].name}
        puts @ref
      end
    end
  
    def create
      @product = Product.find(params[:product_id])
      @shopping_cart.add(@product, @product.price, 50)
      redirect_to carts_path
    end
  
    def new
      session[:shopping_cart_id] = nil
      redirect_to carts_path
    end

    def edit
      redirect_to carts_path
    end
  
    private
    def extract_shopping_cart
      shopping_cart_id = session[:shopping_cart_id]
      @shopping_cart = session[:shopping_cart_id] ? Cart.find(shopping_cart_id) : Cart.create
      session[:shopping_cart_id] = @shopping_cart.id
    end
  end