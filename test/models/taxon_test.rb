require 'test_helper'

class TaxonTest < ActiveSupport::TestCase
  should have_many :observations
end
