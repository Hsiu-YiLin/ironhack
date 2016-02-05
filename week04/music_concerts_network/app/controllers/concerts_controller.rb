class ConcertsController < ApplicationController

	def index
		@concerts = Concert.all
	end

	def edit
		@concert = Concert.find_by(id: params[:id])

	end
	
end
