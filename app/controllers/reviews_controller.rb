class ReviewsController < ApplicationController
def create
  @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(params_review)
    # @review.save
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def new
    @review = Review.new
   @restaurant = Restaurant.find(params[:restaurant_id])
  end

  private
  def params_review
   params.require(:review).permit(:rating, :content)
 end

end
