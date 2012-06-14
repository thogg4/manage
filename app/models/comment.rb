class Comment < ActiveRecord::Base
  attr_accessible :body, :task_id
  # relationships
  belongs_to :task
end
