require 'test_helper'

class ObservationTest < ActiveSupport::TestCase
  should belong_to :station
  should belong_to :taxon
  should belong_to :nest_code
end
