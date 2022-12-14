class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :quantity_gr
      t.integer :product_id
      t.timestamps
    end
    add_foreign_key :stocks, :products, on_delete: :cascade
  end
end
