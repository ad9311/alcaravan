class QuestionsController < ApplicationController
  before_action :get_question, only: %i[show]

  def index
    @course = current_user.my_course
    @question_answered = current_user.last_answered

    if @question_answered.nil?
      @level = Level.find_by(code: "L1C#{@course.number}")
      @question = @level.questions.order(:code).first
    else
      @question = Question.next(@question_answered.question)
      if @question.nil?
      else
        @level = @question.level
      end
    end
  end

  def show
    @next_question = Question.next(@question)
  end

  def next; end

  private

  def get_question
    @question = Question.find_by(id: params[:id])
  end
end
