class ReviewsController < ApplicationController
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = Review.where(restaurant: @restaurant)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render template: 'restaurants/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
