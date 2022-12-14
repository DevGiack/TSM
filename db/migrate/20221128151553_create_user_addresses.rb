class CreateUserAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_addresses do |t| 
      t.integer :address_number
      t.string :address_street
      t.string :address_city
      t.integer :address_zip
      t.string :address_state
      t.string :address_country
      t.string :address_type
      t.integer :user_id
      t.timestamps
    end
    add_foreign_key :user_addresses, :users, on_delete: :cascade
  end
end