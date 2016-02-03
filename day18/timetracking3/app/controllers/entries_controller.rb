class EntriesController < ApplicationController
	def index
		@project = Project.find_by(id: params[:project_id])
		# Entry.where(project_id: params[:id])
	end

	def create
		@project = Project.find params[:project_id]
		@entry = @project.entries.new(entry_params)
		if @entry.save
			redirect_to action: "index", controller: "entries", project_id: @project.id
		else
			render "new"
		end
	end

	def entry_params
			params.requ	ire(:entry).permit(:hours, :minutes, :date)
		end
	end

	def edit
		@project= project.find(params[:params_id])
		@entry= @project.entries.find(id: params[:id])
	end

	def update
		@project= Project.find(params[:params_id])
		@entry= @project.entries.find(params[:id])
		@entry.update.attributes(entry_params)
		redirect_to project_entries_path(@project)

	end

end
