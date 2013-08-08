class AddTokenToSiteadmins < ActiveRecord::Migration
  def change
    def self.up
      add_column :siteadmins, :authentication_token, :string
    end

    def self.down
      remove_column :siteadmins, :authentication_token
    end
  end
end
