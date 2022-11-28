class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :Name
      t.text :Description
      t.string :Unity
      t.timestamps
      t.float :Price
    end
     add_reference :products, :product_category, foreign_key: true
  end
end
