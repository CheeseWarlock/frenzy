class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.find(params[:id])
	end

	def new
	end

	def create
		@restaurant = Restaurant.new(params.require(:restaurant).permit(:name, :location, :description))

		@restaurant.save
		redirect_to Restaurant
	end
end
