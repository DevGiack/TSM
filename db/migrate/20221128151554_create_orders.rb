class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :Cart_ID
      t.integer :User_ID
      t.integer :User_adress_ID

      t.timestamps
    end
  end
end
