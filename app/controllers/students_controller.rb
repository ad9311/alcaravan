class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = current_user.course_teacher.course.students
  end

  def show
    @student = User.student.find(params[:id])
    @level = Level.find(params[:level_id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Invoice No. #{@student.id}",
        page_size: 'letter',
        template: "students/show",
        layout: "pdf",
        formats: [:html],
        orientation: "portrait",
        lowquality: true,
        zoom: 1,
        dpi: 75,
        lowquality: true,
        encoding: 'utf8'
      end
  end
  end
end
