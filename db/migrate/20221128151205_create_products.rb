class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :unity
      t.float :price
      t.integer :product_category_id
      t.timestamps
    end
    add_foreign_key :products, :product_categories, on_delete: :cascade
  end
end
