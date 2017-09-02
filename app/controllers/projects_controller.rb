class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:new, :create, :edit, :update, :destroy]

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
      render action: 'new', alert: 'Something went wrong, try again'
    end
  end

  def update
    if @project.update(project_params)
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render action: 'edit', alert: 'Something went wrong, please try again'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path
  end

  private

    def project_params
      params.require(:project).permit(:title, :description, :url, :github_repo, :homepage_image, :index_image, :image_3, :image_4)
    end

    def set_project
      @project = Project.find(params[:id])
    end

    def require_login
      redirect_to root_path, alert: 'You need to be logged in to do that' unless logged_in?
    end
end
