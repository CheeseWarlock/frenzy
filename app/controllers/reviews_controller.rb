class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end
  def new
    @review = Review.new
    @review.user = current_user
  end
  def create
    @review = Review.new(params.require(:review).permit(:stars, :summary, :body, :restaurant_id))
    @review.user = current_user
    @review.save

    redirect_to Restaurant
  end
end
