class StudentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @students = User.student
  end

  def show
    @student = User.student.find(params[:id])

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
