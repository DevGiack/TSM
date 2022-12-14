class RemoveAddressCountryToUserAddresses < ActiveRecord::Migration[7.0]
  def change
    remove_column :user_addresses, :address_state, :string
  end
end
