class CreateQuestionAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :question_answers do |t|
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :answer, null: false
      t.datetime :answered_at, null:false, default: Time.zone.now

      t.timestamps
    end
  end
end
