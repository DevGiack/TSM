class CreateDiscounts < ActiveRecord::Migration[7.0]
  def change
    create_table :discounts do |t|
      t.string :Name
      t.integer :Discount_percent
      t.boolean :Active

      t.timestamps
    end
  end
end
