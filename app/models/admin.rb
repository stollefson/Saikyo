class Admin < ActiveRecord::Base
  validates :name,  presence: true
  has_secure_password
  validates :password, length: { minimum: 6 }
end
