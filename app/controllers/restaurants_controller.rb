class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    reviews = Review.all
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    @restaurant.save
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  private
  def params_restaurant
   params.require(:restaurant).permit(:name, :address, :phone_number, :category)
 end

end
