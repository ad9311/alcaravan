class ChangeDefaultDateQuestionAnswers < ActiveRecord::Migration[7.0]
  def change
    change_column_default :question_answers, :answered_at, nil
  end
end
