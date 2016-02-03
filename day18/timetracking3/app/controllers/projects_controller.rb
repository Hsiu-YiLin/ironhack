class ProjectsController < ApplicationController
  def index
  	@projects = Project.last_created_projects(10)
  	# render "index"
  end

  def show
  	@project = Project.find(params[:id])
  	render "show"
  end
end