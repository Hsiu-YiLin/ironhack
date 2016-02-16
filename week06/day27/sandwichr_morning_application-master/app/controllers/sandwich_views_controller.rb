class SandwichViewsController < ApplicationController
	def index
		@sandwiches = Sandwich.all
		
	end

	def show
	end
end