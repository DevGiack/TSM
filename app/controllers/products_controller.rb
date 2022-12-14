class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  # GET /products or /products.json
  def index
    @products = Product.all
  end

  # GET /products/1 or /products/1.json
  def show
    @product = Product.find(params[:id])
    @stock_id = Stock.where(product_id: @product.id).ids[0]
    @stock = Stock.find(@stock_id)
    @stock_quantity = @stock.quantity_gr
    cookies.delete :quantity
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to product_url(@product), notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to product_url(@product), notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def add
    @product = Product.find(params[:id])
    shopping_cart_id = session[:shopping_cart_id]
    quantity = cookies[:quantity].to_i
    @shopping_cart = session[:shopping_cart_id] ? Cart.find(shopping_cart_id) : Cart.create
    session[:shopping_cart_id] = @shopping_cart.id
    @shopping_cart.add(@product, @product.price, quantity)
#    redirect_back(fallback_location: :back)
    redirect_to carts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :product_category_id, :price, :unity, :discount_id, :is_highlighted, :product_image)
    end
end
