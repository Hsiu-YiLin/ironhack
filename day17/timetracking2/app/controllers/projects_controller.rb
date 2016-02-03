class ProjectsController < ApplicationController
  def index
  	@projects = Project.last_created_projects(10)
  	# render "index"
  	if @projects.empty?
  		render 'no_projects'
  	else
  		render 'index'
  	end
  end

  def show
  	@project = Project.find(params[:id])
  	render "show"
  end
end