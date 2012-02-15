class Blog < ActiveRecord::Base
  
  validates_presence_of :user_id , :activity_id , :content
  belongs_to :user
  belongs_to :activity
end
