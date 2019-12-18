class LessonsController < ApplicationController
    def index
        lessons = Lesson.all
        render json: lessons, include: :students
    end

    def show
        lesson = Lesson.find(params[:id])
        render json: lesson, include: :students
    end

    def create
        lesson = Lesson.create(
            name: params[:name],
            level: params[:level]
        )
        render json: lesson
    end

    def update
        lesson = Lesson.find(params[:id])
        lesson.update(
            name: params[:name],
            level: params[:level]
        )
        render json: lesson
    end

    def destroy
        lesson = Lesson.find(params[:id])
        lesson.destroy
        render json: {message: "Removed lesson"}
    end
end
