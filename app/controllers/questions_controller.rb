class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show]

  def index
    @course = current_user.my_course
    @question_answered = current_user.last_answered

    if @question_answered.nil?
      @level = Level.find_by(code: "L1C#{@course.number}")
      @question = @level.questions.order(:code).first
    else
      @question = Question.next(@question_answered.question)
      @level = @question.level unless @question.nil?
    end
  end

  def show
    redirect_to(questions_path) and return if @question.nil?

    @question_answer = QuestionAnswer.new
    @level = @question.level
  end

  def next
    @question = Question.find_by(id: question_params[:id])
    @next_question = Question.next(@question)

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def set_question
    @question = Question.find_by(id: params[:id])
  end

  def question_params
    params.require(:question).permit(:id, :options)
  end
end
