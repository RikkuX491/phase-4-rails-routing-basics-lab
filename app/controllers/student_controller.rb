class StudentController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        studentsByGrades = Student.all.order('grade DESC')
        render json: studentsByGrades
    end

    def highest_grade
        studentHighestGrade = Student.all.order('grade DESC').first
        render json: studentHighestGrade
    end
end
