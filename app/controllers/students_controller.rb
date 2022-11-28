class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = User.student
  end

  def show
    @student = User.student.find(params[:id])
  end
end
