class ReviewsController < ApplicationController
	def index
		@reviews = Review.all
	end
	def new
		@review = Review.new
		@review.user = current_user
	end
	def create
		@review = Review.new(params.require(:review).permit(:stars, :summary, :body))
		@review.user = current_user
		@review.restaurant = Restaurant.last
		@review.save

		redirect_to Restaurant
	end
end
