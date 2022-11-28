# == Schema Information
#
# Table name: question_answers
#
#  id          :bigint           not null, primary key
#  answer      :string           not null
#  answered_at :datetime         default(Mon, 28 Nov 2022 00:17:01.839987000 UTC +00:00), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_question_answers_on_question_id  (question_id)
#  index_question_answers_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#  fk_rails_...  (user_id => users.id)
#
class QuestionAnswer < ApplicationRecord
  validates :answer, presence: true

  belongs_to :question
  belongs_to :user
end
