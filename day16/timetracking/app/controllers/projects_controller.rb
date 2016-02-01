class ProjectsController < ApplicationController
  def index
  	@projects = Project.limit(10)
  	puts @projects
  	render "index"
  end
end