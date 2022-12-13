class OrdersController < ApplicationController

  def new
    @ref = params[:ref]
    @total = params[:total]
    @cart = CartItem.all.where(owner_id: params[:owner_id])
    @order = Order.new
    @user_addresses = UserAddress.where(user_id: current_user.id)
  end

  def create
    @order = Order.new(order_params)
  end

end
