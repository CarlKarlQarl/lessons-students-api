class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students, include: :lessons
    end

    def show
        student = Student.find(params[:id])
        render json: student, include: :lessons
    end

    def create
        student = Student.create(
            name: params[:name],
            grade: params[:grade]
        )
        render json: student
    end

    def update
        student = Student.find(params[:id])
        student.update(
            name: params[:name],
            grade: params[:grade]
        )
        render json: student
    end

    def destroy
        student = Student.find(params[:id])
        student.destroy
        render json: {message: "Removed student"}
    end
end
