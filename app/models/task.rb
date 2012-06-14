class Task < ActiveRecord::Base
  attr_accessible :body, :site_id, :title, :status_id
  # relationships
  belongs_to :site
  belongs_to :status
  has_many :comments



  def row_color
    case status.status
    when "defined"
      "#F2DEDE"
    when "in-progress"
      "#D9EDF7"
    when "completed"
      "#FCF8E3"
    when "approved"
      "#DFF0D8"
    end
  end


end
