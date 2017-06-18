class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path, notice: 'Project was successfully created'
    else
      render action: 'new', notice: 'Something went wrong, try again'
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: 'edit', notice: 'Something went wrong, please try again'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

    def project_params
      params.require(:project).permit(:title, :description)
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
