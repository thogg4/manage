class Status < ActiveRecord::Base
  attr_accessible :status
  # relationships
  has_many :tasks

end
