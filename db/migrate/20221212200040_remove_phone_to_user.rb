class RemovePhoneToUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :phone, :string

  end
end
