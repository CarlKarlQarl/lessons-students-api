class StudentLessonsController < ApplicationController
    def index
        student_lessons = StudentLesson.all
        render json: student_lessons, include: [:lesson, :student]
    end

    def show
        student_lesson = StudentLesson.find(params[:id])
        render json: student_lesson, include: [:lesson, :student]
    end

    def create
        student_lesson = StudentLesson.create(
            student: Student.find(params[:student]),
            lesson: Lesson.find(params[:lesson])
        )
        render json: student_lesson
    end

    def update
        student_lesson = StudentLesson.find(params[:id])
        student_lesson.update(
            student: Student.find(params[:student]),
            lesson: Lesson.find(params[:lesson])
        )
        render json: student_lesson
    end

    def destroy
        student_lesson = StudentLesson.find(params[:id])
        student_lesson.destroy
        render json: {message: "Removed relationship"}
    end
end
