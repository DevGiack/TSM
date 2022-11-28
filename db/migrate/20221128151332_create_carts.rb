class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      t.integer :Quantity
      t.timestamps
    end
    add_reference :carts, :product, foreign_key: true
  end
end
