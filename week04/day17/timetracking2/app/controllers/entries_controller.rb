class EntriesController < ApplicationController
	def index
		@project = Project.find_by(id: params[:project_id])
		

		# Entry.where(project_id: params[:id])
	end
end
