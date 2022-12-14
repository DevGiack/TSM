class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.timestamps
    end
    add_reference :orders, :user, foreign_key: true
    add_reference :orders, :payment, foreign_key: true
    add_reference :orders, :user_address, foreign_key: true
  end
end
