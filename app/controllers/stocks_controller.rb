class StocksController < ApplicationController
  def new
    @stock = Stock.new
  end

  def create
    @stock = Stock.new(params[:stock])
    if @stock.save
      redirect_to @stock, notice: "Created New Stock!"
    else
      render :new
    end
  end

 def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id])
    if @stock.update_attributes(params[:stock])
      redirect_to @stock, notice: "Updated Stock!"
    else
      render 'edit'
    end
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def index
    @stocks = Stock.order("id").all
  end

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy
      redirect_to stocks_path, notice: "Deleted Stock!"
  end

end
