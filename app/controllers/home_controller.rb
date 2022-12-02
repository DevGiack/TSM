class HomeController < ApplicationController
  def index
    @highlighted_products = Product.where(is_highlighted: true)
  end
end
