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
end
