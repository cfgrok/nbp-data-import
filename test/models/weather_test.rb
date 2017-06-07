require 'test_helper'

class WeatherTest < ActiveSupport::TestCase
  should have_many :stations
end
