class RestaurantsController < ApplicationController
	def index
		@locations = {}
		Restaurant.all.each do |r|
			if @locations[r.location]
				@locations[r.location].push r
			else
				@locations[r.location] = [r]
			end
		end
	end

	def show
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
