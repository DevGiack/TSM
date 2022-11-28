class CreateAdminTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_types do |t|

      t.timestamps
    end
    add_reference :admin_types, :user, foreign_key: true
  end
end
