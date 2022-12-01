class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :payment_type
      t.boolean :status
      t.float :amount
      t.timestamps
    end
    add_reference :payments, :user, foreign_key: true
    add_reference :payments, :order, foreign_key: true
  end
end
