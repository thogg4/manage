class Site < ActiveRecord::Base
  attr_accessible :title
  # relationships
  has_many :users
  has_many :tasks


  def complete_tasks
    ta = []
    tasks.each do |t|
      if t.status.status === "approved"
        ta << t
      end
    end
    ta
  end
  def incomplete_tasks
    ta = []
    tasks.each do |t|
      if t.status.status != "approved"
        ta << t
      end
    end
    ta
  end
end
