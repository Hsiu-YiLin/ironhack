class ProjectsController < ApplicationController
  def index
    @projects = Project.limit(10)
    render 'index'
  end

  def show
    @project = Project.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render 'project_not_found'
  end
end

