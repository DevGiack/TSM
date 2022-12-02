class AddIsHighlightedToProduct < ActiveRecord::Migration[7.0]
  def change
    add_column(:products, :is_highlighted, :boolean, default: false)
  end
end
