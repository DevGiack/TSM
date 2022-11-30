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
      t.timestamps
    end
    add_reference :user_addresses, :user, foreign_key: true
  end
end