class CreateProductCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :product_categories do |t|
      t.string :Name
      t.integer :Product_ID

      t.timestamps
    end
  end
end
