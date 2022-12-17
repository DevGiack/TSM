# configuration de la page "Stocks" dans le panel admin
ActiveAdmin.register Stock do
  permit_params :quantity_gr, :product_id
  
    index do
      selectable_column
      id_column
      column :quantity_gr
      column :product_id
      actions
    end
  
    filter :product_id
  
    form do |f|
      f.inputs do
        f.input :product_id
        f.input :quantity_gr
      end
      f.actions
    end
  
  end