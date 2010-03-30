class Item < ActiveRecord::Base
  validates_length_of :title, :maximum => 128
  validates_length_of :title, :minimum => 3
end
