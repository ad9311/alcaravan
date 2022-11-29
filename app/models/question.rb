# == Schema Information
#
# Table name: questions
#
#  id             :bigint           not null, primary key
#  code           :string           not null
#  correct_answer :string           not null
#  options        :jsonb            not null
#  text           :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  level_id       :bigint           not null
#
# Indexes
#
#  index_questions_on_code      (code) UNIQUE
#  index_questions_on_level_id  (level_id)
#
# Foreign Keys
#
#  fk_rails_...  (level_id => levels.id)
#
class Question < ApplicationRecord
  validates :code, uniqueness: true
  validates :correct_answer, :options, :text, presence: true

  belongs_to :level

  has_many :question_answers, dependent: :destroy
  has_one :course, through: :level, source: :course

  def number
    code.sub(/[A-Z]/, "").split('').first
  end

  def self.next(question)
    return if question.nil?

    if question.number.to_i < 5
      new_code = question.code.sub("Q#{question.number}", "Q#{question.number.to_i + 1}")
      return Question.find_by(code: new_code)
    else
      new_level = Level.next(question.level)
      unless new_level.nil?
        new_code = "Q1L#{new_level.number}C#{question.course.number}"
        return Question.find_by(code: new_code)
      end
    end
  end
end
