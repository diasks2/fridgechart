class StaticPagesController < ApplicationController
  def home
  	@stocks = Stock.order("expiration").all
  end
end
