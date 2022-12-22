class OrderItemsController < ApplicationController
    def index
        @order_items = OrderItems.all
    end

    def show
        @order_item = OrderItems.find(params[:id])
    end

    def new
        @order_item = OrderItems.new
    end

    def edit
        @order_item = OrderItems.find(params[:id])
    end

    def create
        @order_item = OrderItems.new(order_items_params_require)
        @order_item.user = current_user
      
        respond_to do |format|
          if @order_item.save
            format.html { redirect_to home_account_url }
            format.json { render :show, status: :created, location: @order_item }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @order_item.errors, status: :unprocessable_entity }
          end
        end
    end

    private
    def set_order_item
      @user_address = UserAddress.find(params[:id])
    end

    def order_item_params
      params.fetch(:order_item, {})
    end

    def order_item_params_require
      params.require(:order_item).permit(:owner_id, :owner_type, :quantity, :item_id, :item_type, :price_cents, :price_currency)
    end
end