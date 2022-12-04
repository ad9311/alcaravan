# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           not null
#  last_name              :string           not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("student"), not null
#  username               :string           not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, :first_name, :last_name, presence: true

  has_one :course_student, dependent: :destroy
  has_one :my_course, through: :course_student, source: :course
  has_many :course_teachers, dependent: :destroy
  has_many :courses, through: :course_teachers, source: :course
  has_many :question_answers, dependent: :destroy
  has_one :course_teacher, dependent: :destroy
  has_one :course, through: :course_teacher, source: :course
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  enum role: {
    student: 0,
    teacher: 1
  }

  def levels
    course_teacher.course.levels
  end

  def answers(level)
    question_answers.select do |q|
      q.question.level.id == level.id
    end.count
  end

  def correct_answers(level)
    question_answers.select do |q|
      q.question.level.id == level.id && q.answer == q.question.correct_answer
    end.count
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def my_answer(question)
    question_answers.find_by(question_id: question).answer
  end

  def last_answered
    question_answers.order(:answered_at).last
  end

  def destroy_question_answers(level)
    level.questions.each do |question|
      question.question_answers.where(user_id: id).destroy_all
    end
  end

  def user_course
    if teacher?
      course_teacher.course.name
    else
      course_student.course.name
    end
  end

  def comment_liked?(comment)
    comment.likes.find_by(user_id: id)
  end
end
