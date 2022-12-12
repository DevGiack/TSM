class HomeController < ApplicationController
  def index
    @highlighted_products = Product.where(is_highlighted: true)
  end

  def add
    @product = Product.find(params[:product_id])
    shopping_cart_id = session[:shopping_cart_id]
    @shopping_cart = session[:shopping_cart_id] ? Cart.find(shopping_cart_id) : Cart.create
    session[:shopping_cart_id] = @shopping_cart.id
    @shopping_cart.add(@product, @product.price, 50)
    redirect_to root_path
  end

  def account
    @user_addresses = UserAddress.where(user_id: current_user.id)
  end
end
