module Users
  class RegistrationsController < Devise::RegistrationsController
    before_action :sign_up_params, only: [:create]
    respond_to :html, :js

    def create
      super
      course = Course.find(params[:course_id])
      if resource.teacher?
        resource.create_course_teacher(course:)
      else
        resource.create_course_student(course:)
      end
    end

    protected

    def after_sign_up_path_for(resource)
      root_path
    end

    private

    def sign_up_params
      params.require(:user).permit(
        :first_name,
        :last_name,
        :username,
        :email,
        :role,
        :password,
        :password_confirmation
      )
    end
  end
end
