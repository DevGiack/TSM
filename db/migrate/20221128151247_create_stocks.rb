class CreateStocks < ActiveRecord::Migration[7.0]
  def change
    create_table :stocks do |t|
      t.integer :Quantity_gr

      t.timestamps
    end
  end
end
