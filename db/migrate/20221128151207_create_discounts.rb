class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :name
      t.integer :discount_percent
      t.boolean :active

      t.timestamps
    end
    add_reference :discounts, :product, foreign_key: true    
  end
end
