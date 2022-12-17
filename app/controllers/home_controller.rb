class HomeController < ApplicationController
  def index
    # récupère la liste des produits dont le champs "is_highlighted" prend la valeur "true"
    @highlighted_products = Product.where(is_highlighted: true)
  end

  def account
    # permet de récupérer le nombre d'adresses rattachées a l'utilisateur et leur contenu
    @user_addresses = UserAddress.where(user_id: current_user.id)
    @user_addresses_count = addresses_count
  end
end
