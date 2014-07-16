class ProjectsController < ApplicationController
  before_filter :admin_user, only: [:edit, :update, :index, :destroy, :new]
  
  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:success] = "Project Created!"
      params[:project][:assignments_attributes].each do |key, value|
        next if value["user_id"] == ""
        assignment = @project.assignments.new(user_id: value["user_id"], project_id: @project.id)
        if assignment.save == false
          flash[:error] = "Assignment Error"
        end
      end
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end
  
  private

    def project_params
      params.require(:project).permit(:client_name, :email, :initial_payment, :final_payment, :winning_designer, :scope, :moodboard_payment, :full_payment, :dropbox, :completed )
    end

    def admin_user
      redirect_to(root_url) unless current_user.admin?
    end
end