class Student < ApplicationRecord
    has_many :student_lessons, dependent: :destroy
    has_many :lessons, through: :student_lessons
end
