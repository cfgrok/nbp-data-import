class Station < ActiveRecord::Base
  belongs_to :survey
  belongs_to :weather
  belongs_to :wind
  has_many :observations
end
