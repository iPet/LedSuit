class LedEvent < ActiveRecord::Base
  belongs_to :scenario
  belongs_to :part
end
