class QuestionsController < ApplicationController
  include ActionView::RecordIdentifier

  before_action :authenticateStudent
  before_action :set_question, only: %i[show back]
  before_action :question_params, only: %i[submit resubmit]
  before_action :set_level, only: %i[partial_results reset_level discover]

  def index
    @course = current_user.my_course
    @last = current_user.last_answered
    if @last.nil?
      @level = Level.find_by(code: "L1C#{@course.number}")
      @question = @level.questions.order(:code).first
    else
      @question = Question.next(@last.question)
      redirect_to(results_path) and return if @question.nil?

      @level = @question.level unless @question.nil?
    end
  end

  def show
    @question = nil if all_questions_answered
    redirect_to(results_path) and return if @question.nil?

    @level = @question.level
    @count = current_user.answers(@level)
    @next_question = Question.next(@question)
    redirect_to(partial_results_path(id: @level)) and return if @count == 5
  end

  def submit
    @question = Question.find(question_params[:id])
    if !@question.nil? && !create_question_answer
      redirect_to(error_path) and return
    else
      @level = @question.level
      @count = current_user.answers(@level)

      if @count == 5
        redirect_to(partial_results_path(id: @level)) and return
      else
        @next_question = Question.next(@question)
        redirect_to(question_path(@next_question))
      end
    end
  end

  def back
    @prev_question = Question.back(@question)
    redirect_to(question_path(@prev_question))
  end

  def resubmit
    @question = Question.find(question_params[:id])
    if !@question.nil? && !patch_question_answer
      redirect_to(error_path) and return
    else
      @level = @question.level
      @count = current_user.answers(@level)
      @next_question = Question.next(@question)
      redirect_to(question_path(@next_question))
    end
  end

  def partial_results
    @course = @level.course
    @correct_answers = current_user.correct_answers(@level)
    redirect_to(questions_path) and return if @course.id != current_user.my_course.id
  end

  def reset_level
    current_user.destroy_question_answers(@level)
    @question = @level.questions.order(:code).first

    redirect_to(question_path(@question))
  end

  def discover
    @next_level = Level.next(@level)
    @next_question = @next_level.questions.order(:code).first unless @next_level.nil?
  end

  def results
    redirect_to(questions_path) and return unless all_questions_answered
  end

  def error; end

  private

  def set_question
    @question = Question.find_by(id: params[:id])
    find_answer(@question)
  end

  def find_answer(question)
    return if question.nil?

    @selected = current_user.question_answers.find_by(question:)
    @answer = @selected.answer if @selected&.question&.id == question.id
  end

  def set_level
    @level = Level.find_by(id: params[:id])
  end

  def create_question_answer
    return if QuestionAnswer.find_by(question: @question, user: current_user)

    QuestionAnswer.new(user: current_user, question: @question, answer: question_params[:answer]).save
  end

  def patch_question_answer
    @question_answer = QuestionAnswer.find_by(question: @question, user: current_user)
    @question_answer&.update(answer: question_params[:answer])
  end

  def question_params
    params.require(:question).permit(:id, :answer)
  end

  def all_questions_answered
    current_user.question_answers.count == 20
  end

  def authenticateStudent
    redirect_to root_path if current_user.teacher?
  end
end
