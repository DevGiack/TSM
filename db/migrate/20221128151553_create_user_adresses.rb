class CreateUserAdresses < ActiveRecord::Migration[7.0]
  def change
    create_table :user_adresses do |t|
      t.integer :test
      t.timestamps
    end
    add_reference :user_adresses, :user, foreign_key: true
  end
end
