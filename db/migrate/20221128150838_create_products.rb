class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.integer :Category_ID
      t.integer :Price_ID
      t.string :Unity
      t.integer :Discount_ID
      t.integer :Stock_ID

      t.timestamps
    end
  end
end
