class AddPhonerToUserAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :user_addresses, :phone, :string
  end
end
