class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :desc
      t.string :price

      t.timestamps
    end
  end
end
