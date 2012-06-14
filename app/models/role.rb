class Role < ActiveRecord::Base
  attr_accessible :role
  # relationships
  has_many :users

end
