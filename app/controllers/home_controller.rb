class HomeController < ApplicationController
  def index
    @highlighted_products = Product.where(is_highlighted: true)
    if current_user && session[:cart_id]
      puts session[:cart]
    else
      session[:cart_id] = Cart.create.id
      puts session[:cart_id]
    end
  end
end
