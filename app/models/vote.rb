class Vote < ActiveRecord::Base
  belongs_to :topic
  validates_presence_of :topic
end
