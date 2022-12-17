class AddImgNameToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column(:products, :product_image, :string, default: "")
    add_column(:products, :image_alt, :string, default: "Une photo de truffe")
  end
end
