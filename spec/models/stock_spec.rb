require 'spec_helper'

describe Stock do

  before do
  	@stock = Stock.new(food_id: 1, expiration: "2013-02-13 07:21:40.423921", quantity: 5)
  end	

  subject { @stock }

  it { should respond_to(:food_id) }
  it { should respond_to(:expiration) }
  it { should respond_to(:quantity) }

  it { should be_valid }

  describe "when food_id is not present" do
    before { @stock.food_id = nil }
    it { should_not be_valid }
  end

  describe "when expiration is not present" do
    before { @stock.expiration = " " }
    it { should_not be_valid }
  end

  describe "when quantity is not present" do
    before { @stock.quantity = " " }
    it { should_not be_valid }
  end
end