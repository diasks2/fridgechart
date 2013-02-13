class Food < ActiveRecord::Base
  attr_accessible :food_type, :lcd_unit, :name

  before_save { |food| food.name = name.downcase }
  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :food_type, presence: true
  validates :lcd_unit, presence: true
end
