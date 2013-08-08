class Siteadmin < ActiveRecord::Base
  attr_accessible :username, :password, :password_confirmation
  attr_accessor :password, :authentication_token
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :username, :on => :create
  validates_uniqueness_of :username

  def self.authenticate_by_username(username, password)
  siteadmin = find_by_username(username)
  if siteadmin && siteadmin.password_hash == BCrypt::Engine.hash_secret(password, siteadmin.password_salt)
    siteadmin
  else
    nil
  end
end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
end
