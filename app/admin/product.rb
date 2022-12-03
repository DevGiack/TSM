ActiveAdmin.register Product do
    permit_params :name, :price, :description, :is_highlighted, :unity, :product_image
  end