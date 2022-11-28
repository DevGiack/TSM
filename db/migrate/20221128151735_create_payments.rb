class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :Payment_type
      t.boolean :Status
      t.float :Amount
      t.timestamps
    end
    add_reference :payments, :user, foreign_key: true
    add_reference :payments, :order, foreign_key: true
  end
end
