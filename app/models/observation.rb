class Observation < ActiveRecord::Base
  belongs_to :station
  belongs_to :taxon
  belongs_to :nest_code
end
