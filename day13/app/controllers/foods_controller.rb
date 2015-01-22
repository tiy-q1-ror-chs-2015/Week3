class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @restaurant = Restaurant.find params[:restaurant_id]
    @food = @restaurant.foods.new
  end

  def create
    @restaurant = Restaurant.find params[:restaurant_id]
    @food = @restaurant.foods.create food_params
    redirect_to restaurant_path(@restaurant)
  end

  def edit
    @food = Food.find params[:id]
  end

  def update
    @food = Food.find params[:id]
    @food.update_attributes food_params
    redirect_to foods_path
  end

  def destroy
    @food = Food.find params[:id]
    @food.delete
    redirect_to foods_path
  end

  private 

  def food_params
    params.require(:food).permit(
      :name,
      :description,
      :flavor,
      :expired,
      :texture,
      :cost
    )
  end
end
