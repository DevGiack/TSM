# app/admin/stock.rb
ActiveAdmin.register_page "Stock" do
    content do
      render partial: 'stock'
    end
  end
  