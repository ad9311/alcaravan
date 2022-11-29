class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show]

  def index
    @course = current_user.my_course
    @last = current_user.last_answered

    if @last.nil?
      @level = Level.find_by(code: "L1C#{@course.number}")
      @question = @level.questions.order(:code).first
    else
      @question = Question.next(@last.question)
      @level = @question.level unless @question.nil?
    end
  end

  def show
    redirect_to(questions_path) and return if @question.nil?

    @level = @question.level
    @selected = current_user.question_answers.find_by(question: @question)
    return unless @selected&.question&.id == @question.id

    @answer = @selected.answer
  end

  def next
    @question = Question.find_by(id: question_params[:id])
    unless @question.nil?
      @next_question = Question.next(@question)
      @error = 'Hubo un error' unless create_question_answer
    end

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def create_question_answer
    QuestionAnswer.new(user: current_user, question: @question, answer: question_params[:answer]).save
  end

  def set_question
    @question = Question.find_by(id: params[:id])
  end

  def question_params
    params.require(:question).permit(:id, :answer)
  end
end
