class AddIsProToUser < ActiveRecord::Migration[7.0]
  def change
    add_column(:users, :is_pro, :boolean, default: false)
  end
end
