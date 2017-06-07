require 'test_helper'

class StationTest < ActiveSupport::TestCase
  should belong_to :survey
  should belong_to :weather
  should belong_to :wind
  should have_many :observations
end
