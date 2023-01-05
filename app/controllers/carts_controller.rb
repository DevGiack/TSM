class CartsController < ApplicationController
    before_action :extract_shopping_cart
    before_action :authenticate_user!, only: [:index, :create, :new, :edit]
  
    def index
      # récupère les données nécessaires a l'affichage de tous les carts items du user dans le panier + total
      @total = @shopping_cart.total
      @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
      @my_id = session[:shopping_cart_id]
      @ref = ref
    end
  
    def create
      @product = Product.find(params[:product_id])
      @shopping_cart.add(@product, @product.price, 50)
      redirect_to carts_path
    end
  
    def new
      # permet de delete le panier en cours
      ## DEV : devrait se trouver dans une action delete ?
      @cart = CartItem.all.where(owner_id: session[:shopping_cart_id])
      @cart.delete_all
      session[:shopping_cart_id] = nil
      redirect_to carts_path
    end

    def edit
      redirect_to carts_path
    end
  
    private
    def extract_shopping_cart
      # est appelée avant chaque action du controller pour set le panier de l'utilisateur. Si aucun panier > créé un panier vide
      shopping_cart_id = session[:shopping_cart_id]
      @shopping_cart = session[:shopping_cart_id] ? Cart.find(shopping_cart_id) : Cart.create
      session[:shopping_cart_id] = @shopping_cart.id
    end

  end