class Stage < ActiveRecord::Base
  belongs_to :phase
  has_many :activities
  validates_presence_of :name , :phase_id
end
