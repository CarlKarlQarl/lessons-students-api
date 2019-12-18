class Lesson < ApplicationRecord
    has_many :student_lessons, dependent: :destroy
    has_many :students, through: :student_lessons
end
