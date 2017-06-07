class Weather < ActiveRecord::Base
  has_many :stations
end
