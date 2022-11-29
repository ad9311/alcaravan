class QuestionsController < ApplicationController
  before_action :set_question, only: %i[show]
  before_action :question_answered, only: %i[submit fix]
  before_action :set_level, only: %i[reset_level]

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
    @count = current_user.answers(@level)
  end

  def reset_level
    current_user.destroy_question_answers(@level)
    @question = @level.questions.order(:code).first
    redirect_to(question_path(@question))
  end

  def next_level; end

  def submit
    if !@question.nil? && !create_question_answer
      @error = 'Hubo un error'
    else
      @count = current_user.answers(@level)
    end

    respond_to do |format|
      format.turbo_stream
    end
  end

  def fix
    if !@question.nil? && !patch_question_answer
      @error = 'Hubo un error'
    else
      @count = current_user.answers(@level)
    end

    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def find_answer(question)
    return if question.nil?

    @selected = current_user.question_answers.find_by(question:)
    @answer = @selected.answer if @selected&.question&.id == question.id
  end

  def set_question
    @question = Question.find_by(id: params[:id])
    find_answer(@question)
  end

  def set_level
    @level = Level.find_by(id: params[:id])
  end

  def question_answered
    @question = Question.find_by(id: question_params[:id])
    @next_question = Question.next(@question)
    @level = @question&.level
    @next_level = @next_question&.level
    find_answer(@next_question)
  end

  def create_question_answer
    QuestionAnswer.new(user: current_user, question: @question, answer: question_params[:answer]).save
  end

  def patch_question_answer
    @question_answer = QuestionAnswer.find_by(question: @question, user: current_user)
    @question_answer&.update(answer: question_params[:answer])
  end

  def question_params
    params.require(:question).permit(:id, :answer)
  end
end
