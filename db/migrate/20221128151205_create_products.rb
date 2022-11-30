class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :unity
      t.timestamps
      t.float :price
    end
     add_reference :products, :product_category, foreign_key: true
  end
end
