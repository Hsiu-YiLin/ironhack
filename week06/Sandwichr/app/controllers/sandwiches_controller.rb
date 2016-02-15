class SandwichesController < ApplicationController
	def index
		sandwiches = Sandwich.all
		render json: sandwiches
	end

	def create
		sandwich = Sandwich.create(sandwich_params)
		render json: sandwich
	end

	private

	def sandwich_params
		params.require(:sandwich).permit(:name, :bread_type)
		
	end
end
