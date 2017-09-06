class StaticPagesController < ApplicationController
  def fulltime
  end

  def home
    @projects = Project.all
  end
end
