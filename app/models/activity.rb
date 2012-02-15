class Activity < ActiveRecord::Base
  has_many :deliverables
  has_many :tips
  has_many :blogs
  belongs_to :stage
  validates_presence_of :name , :stage_id
end
