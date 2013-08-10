class RenameTypeColumn < ActiveRecord::Migration
  def change
    rename_column :foods, :type, :genre
  end
end
