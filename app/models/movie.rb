class Movie < ActiveRecord::Base
  validates :title, presence: true, length: { in: 1..50 }
  validates :format, presence: true
  validates :length, presence: true
  validates :release, presence: true, numericality: { only_integer: true }
#   validates :rating, presence: true, numericality: { only_integer: true }
  include RankedModel
  
  ranks :row_order
  
  
end
