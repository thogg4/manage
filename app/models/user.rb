class User < ActiveRecord::Base
  attr_accessible :email, :password_digest, :password, :role_id, :site_id

  # relationships
  belongs_to :role
  belongs_to :site

  # authentication
  has_secure_password

  # validations
  validates_presence_of :email, :on => :create
  validates_presence_of :password, :on => :create
end
