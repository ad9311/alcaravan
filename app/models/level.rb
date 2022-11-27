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
  validates :code, :image_source, :image_url, :text, :text_source, presence: true
  validates :video_url, :video_source, presence: true

  belongs_to :course
end
