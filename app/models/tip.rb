class Tip < ActiveRecord::Base
  validates_presence_of :activity_id , :content
  belongs_to :activity
end
