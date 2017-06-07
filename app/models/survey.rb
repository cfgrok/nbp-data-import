class Survey < ActiveRecord::Base
  belongs_to :loop
  has_many :stations
  has_and_belongs_to_many :observers
end
