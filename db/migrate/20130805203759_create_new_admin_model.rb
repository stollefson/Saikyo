class CreateNewAdminModel < ActiveRecord::Migration
  def self.up
    create_table :siteadmins do |t|
      t.column :username, :string
      t.column :password_hash, :string
      t.column :password_salt, :string
    end
  end

  def self.down
    drop_table :siteadmins
  end
end
