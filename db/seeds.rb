# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

StudentLesson.destroy_all
Student.destroy_all
Lesson.destroy_all

ben = Student.create(name: "Ben", grade: 10)
steve = Student.create(name: "Steve", grade: 11)
dave = Student.create(name: "Dave", grade: 12)

history = Lesson.create(name: "History", level: 101)
english = Lesson.create(name: "English", level: 203)
calculus = Lesson.create(name: "Calculus", level: 304)
art = Lesson.create(name: "Arts", level: 102)
econ = Lesson.create(name: "Economics", level: 217)
chemistry = Lesson.create(name: "Chemistry", level: 324)

StudentLesson.create(student: ben, lesson: history)
StudentLesson.create(student: ben, lesson: english)
StudentLesson.create(student: steve, lesson: english)
StudentLesson.create(student: steve, lesson: calculus)
StudentLesson.create(student: dave, lesson: calculus)
StudentLesson.create(student: dave, lesson: history)