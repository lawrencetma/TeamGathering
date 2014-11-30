class ProjectsController < ApplicationController

  def show
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project
    else
      redirect_to root_path
    end
  end

  private

  def project_params
    params.require(:project).permit(:first_name, :last_name, :about, :rating, :current_project, :email, :password)
  end

end