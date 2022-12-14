class CreateAdminTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :admin_types do |t|

      t.timestamps
    end
  end
end
