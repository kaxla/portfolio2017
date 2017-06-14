class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]
  def index
    @projects = Project.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def project_params
      params.require(:project).permit(:title, :description)
    end

    def set_project
      @project = Project.find(params[:id])
    end
end
