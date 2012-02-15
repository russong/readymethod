class Deliverable < ActiveRecord::Base
  belongs_to :activity
  has_attached_file :file
  validates_presence_of :activity_id
end
