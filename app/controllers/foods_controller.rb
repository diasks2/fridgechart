class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.new(params[:food])
    if @food.save
      redirect_to @food, notice: "Created New Food!"
    else
      render :new
    end
  end

  def edit
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    if @food.update_attributes(params[:food])
      redirect_to @food, notice: "Updated Food!"
    else
      render 'edit'
    end
  end

  def show
    @food = Food.find(params[:id])
  end

  def index
    @foods = Food.order("id").all
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
      redirect_to foods_path, notice: "Deleted Food!"
  end

end
