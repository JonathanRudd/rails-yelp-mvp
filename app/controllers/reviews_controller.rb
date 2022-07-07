class ReviewsController < ApplicationController

  # def new
  #  @restaurant = Restaurant.new
  # end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restarant)
    else
      render 'restaurants/show'
    end
  end
end
