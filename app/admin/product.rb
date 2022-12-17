# configuration de la page "Products" dans le panel admin
ActiveAdmin.register Product do
    permit_params :name, :price, :description, :is_highlighted, :unity, :product_image, :product_category_id
    
      index do
        selectable_column
        id_column
        column :name
        column :price
        column :description
        column :is_highlighted
        column :product_image
        column :unity
        column :product_category_id
        actions
      end
    
      filter :name
      filter :is_highlighted
      filter :product_category_id
    
      form do |f|
        f.inputs do
          f.input :name
          f.input :price
          f.input :description
          f.input :is_highlighted
          f.input :product_image
          f.input :unity
          f.input :product_category_id
        end
        f.actions
      end
    
    end