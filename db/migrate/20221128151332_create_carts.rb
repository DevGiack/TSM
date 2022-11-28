class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :ID_product
      t.integer :Quantity

      t.timestamps
    end
  end
end
