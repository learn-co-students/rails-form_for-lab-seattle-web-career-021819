class StudentsController < ApplicationController

  #create
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  #show (new/index)
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  #update
  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

end
