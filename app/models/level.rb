# == Schema Information
#
# Table name: levels
#
#  id           :bigint           not null, primary key
#  code         :string
#  image_source :text
#  image_url    :text
#  text         :text
#  text_source  :text
#  video_source :text
#  video_url    :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  course_id    :bigint           not null
#
# Indexes
#
#  index_levels_on_code       (code) UNIQUE
#  index_levels_on_course_id  (course_id)
#
# Foreign Keys
#
#  fk_rails_...  (course_id => courses.id)
#
class Level < ApplicationRecord
  validates :code, presence: true

  belongs_to :course

  has_many :questions, dependent: :destroy

  def number
    code.sub(/[A-Z]/, '').chars.first
  end

  def self.next(level)
    new_code = level.code.sub("L#{level.number}", "L#{level.number.to_i + 1}")
    Level.find_by(code: new_code)
  end
end
