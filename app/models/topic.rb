class Topic < ActiveRecord::Base
  has_many :votes
  validates_presence_of :title
end
