class EntriesController < ApplicationController
	def index
		@project = Project.find_by(id: params[:project_id])
		# Entry.where(project_id: params[:id])
	end

	def create
		@project = Project.find params[:project_id]
		@entry = Project.entries.new entry_params
		if @entry.save
			redirect_to action: "index", controller: "entries", project_id: @project.id
		else
			render "new"
		end
	end

	def entry_params
			params.require(:entry).permit(:hours, :minutes, :date)
		end
	end

end
