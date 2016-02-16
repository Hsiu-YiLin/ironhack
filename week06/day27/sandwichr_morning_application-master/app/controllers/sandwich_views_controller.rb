class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@sandwich_ingredients = @sandwich.ingredients.all
		@throwaway = "asdfasdfsdf"
	end
end