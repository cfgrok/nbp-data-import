class AdditionalObservation < ActiveRecord::Base
  belongs_to :survey
  belongs_to :taxon
end
