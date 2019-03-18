class SchoolClassesController < ApplicationController

  def index
    @schoolclasses = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new
    @schoolclass.title = params[:school_class_title]
    @schoolclass.room_number  = params[:school_class_room_number]
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(school_class_params(:title))
    redirect_to school_class_path(@schoolclass)
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end

end
