class CartsController < ApplicationController
    before_action :extract_shopping_cart
    before_action :authenticate_user!, only: [:index, :create, :new, :edit]
  
    def index
      @total = @shopping_cart.total
      @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
      @ref = ref
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