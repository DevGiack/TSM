class HomeController < ApplicationController
  def index
    @highlighted_products = Product.where(is_highlighted: true)
  end

  def account
    @user_addresses = UserAddress.where(user_id: current_user.id)
  end
end
