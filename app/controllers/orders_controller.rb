class OrdersController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def new
    @ref = ref
    puts "ref :"
    puts @ref
    @total = params[:total]
    @cart = CartItem.all.where(owner_id: params[:owner_id])
    @user_addresses = UserAddress.where(user_id: current_user.id)
    @user_addresses_count = addresses_count
  end

  def create
    @order = Order.new(order_params)
  end

end
