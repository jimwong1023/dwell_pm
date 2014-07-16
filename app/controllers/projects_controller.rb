class ProjectsController < ApplicationController
  before_filter :admin_user, only: [:edit, :update, :index, :destroy, :new]
  
  def create
    @project = Project.new(project_params)
    binding.pry
    current_user.projects << @project
  end
  
  private

    def project_params
      params.require(:project).permit(:client_name, :email, :initial_payment, :final_payment, :winning_designer, :scope, :moodboard_payment, :full_payment, :dropbox, :completed )
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end