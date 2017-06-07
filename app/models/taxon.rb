class Taxon < ActiveRecord::Base
  has_many :observations
end
