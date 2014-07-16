class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @project = current_user.projects.build
      3.times { @project.assignments.build }
    end
  end
end