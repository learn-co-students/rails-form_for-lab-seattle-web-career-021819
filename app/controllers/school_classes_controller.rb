class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @new_sc = SchoolClass.create(title: params[:school_class][:title], room_number: params[:school_class][:room_number].to_i)

    redirect_to @new_sc
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number].to_i)

    redirect_to @school_class
  end

end
