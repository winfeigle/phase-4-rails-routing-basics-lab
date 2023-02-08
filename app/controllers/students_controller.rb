class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def grades
        render json: order_grades
    end

    def highest_grade
        render json: order_grades.first
    end

    private

    def order_grades
        students_grades = Student.all.order("grade").reverse()
    end

end
