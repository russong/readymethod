class Phase < ActiveRecord::Base
  has_many :stages
  validates_presence_of :name
end
