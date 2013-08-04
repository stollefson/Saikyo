class AddIndexToAdminName < ActiveRecord::Migration
  def change
      add_index :admins, :name, unique: true
      remove_column :admins, :password
  end
end
