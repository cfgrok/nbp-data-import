class Loop < ActiveRecord::Base
  belongs_to :site, required: true
  has_many :surveys
end
