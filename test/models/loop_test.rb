require 'test_helper'

class LoopTest < ActiveSupport::TestCase
  should belong_to :site
  should validate_presence_of :site

  should have_many :surveys
end
