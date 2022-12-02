class DropAdminTypes < ActiveRecord::Migration[7.0]
  def change
    drop_table :admin_types
  end
end
