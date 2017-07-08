class StaticPagesController < ApplicationController
  def resume
  end

  def home
    @projects = Project.all
  end
end
