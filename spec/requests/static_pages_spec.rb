require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'FridgeChart'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'FridgeChart')
    end

    it "should have the title 'FridgeChart'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "FridgeChart | Home")
    end
  end
end