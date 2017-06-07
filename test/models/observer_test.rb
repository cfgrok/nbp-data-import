require 'test_helper'

class ObserverTest < ActiveSupport::TestCase
  should have_and_belong_to_many :surveys
end
