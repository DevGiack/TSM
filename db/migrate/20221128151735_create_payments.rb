class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :User_ID
      t.string :Payment_type
      t.boolean :Status
      t.float :Amount
      t.integer :Order_ID

      t.timestamps
    end
  end
end
