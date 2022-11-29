class UpdateToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :is_admin
    add_column(:users, :is_admin, :boolean, default: false)
  end
end
