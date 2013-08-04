class Admin < ActiveRecord::Base
  attr_accessible :name, :password, :password_confirmation

  validates :name,  presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end
