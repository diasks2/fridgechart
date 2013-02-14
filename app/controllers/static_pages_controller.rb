class StaticPagesController < ApplicationController
  def home
  	@stocks = Stock.order("id").all
  end
end
