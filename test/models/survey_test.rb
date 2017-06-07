require 'test_helper'

class SurveyTest < ActiveSupport::TestCase
  should belong_to :loop
  should have_many :stations
  should have_and_belong_to_many :observers
end
