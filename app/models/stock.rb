class Stock < ActiveRecord::Base
  attr_accessible :expiration, :food_id, :quantity
  belongs_to :food

  validates :food_id, presence: true
  validates :expiration, presence: true
  validates :quantity, presence: true
end
