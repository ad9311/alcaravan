# == Schema Information
#
# Table name: courses
#
#  id         :bigint           not null, primary key
#  code       :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_courses_on_code  (code) UNIQUE
#
class Course < ApplicationRecord
  validates :code, uniqueness: true
  validates :name, presence: true

  has_many :levels, dependent: :destroy
end
