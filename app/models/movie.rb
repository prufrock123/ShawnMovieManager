class MyLengthValidator < ActiveModel::Validator
  def validate(record)
    unless record.length.strftime("%H") <= "08" 
      record.errors[:base] << "Testing error"
    end
  end
end

class Movie < ActiveRecord::Base
#   include ActiveModel::Validations
  validates_with MyLengthValidator
  validates :title, presence: true, length: { in: 1..50 }
  validates :format, presence: true
  validates :length, presence: true
  validates :release, presence: true, numericality: { only_integer: true }
  include RankedModel
  
  ranks :row_order
  
  
end
