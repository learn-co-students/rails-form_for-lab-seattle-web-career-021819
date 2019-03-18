class StudentsController < ApplicationController 

    def index
        @students=Student.all
    end

    def new
    end

    def create
        @s=Student.create(student_params)
        @s.save
        redirect_to student_path(@s)
    end

    def show
        @student=Student.find(params[:id])
    end

    def edit
        @student=Student.find(params[:id])
    end

    def update
        @s=Student.find(params[:id])
        @s.update(student_params)
        redirect_to student_path(@s)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end