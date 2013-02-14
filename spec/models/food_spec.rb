require 'spec_helper'

describe Food do

  before do
  	@food = Food.new(name: "Apple", food_type: "Produce", lcd_unit: "Apple")
  end	

  subject { @food }

  it { should respond_to(:name) }
  it { should respond_to(:food_type) }
  it { should respond_to(:lcd_unit) }

  it { should be_valid }

  describe "when name is not present" do
    before { @food.name = " " }
    it { should_not be_valid }
  end

  describe "when food_type is not present" do
    before { @food.food_type = " " }
    it { should_not be_valid }
  end

  describe "when lcd_unit is not present" do
    before { @food.lcd_unit = " " }
    it { should_not be_valid }
  end

  describe "when name is already taken" do
    before do
      food_with_same_name = @food.dup
      food_with_same_name.name = @food.name.upcase
      food_with_same_name.save
    end

    it { should_not be_valid }
  end

end