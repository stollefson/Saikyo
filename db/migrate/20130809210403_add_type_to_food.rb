class AddTypeToFood < ActiveRecord::Migration
  def change
    add_column :foods, :type, :string
  end
end
