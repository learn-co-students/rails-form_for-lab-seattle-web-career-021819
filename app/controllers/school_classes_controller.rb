class SchoolClassesController < ApplicationController 

    def index
        @school_classes=SchoolClass.all
    end

    def new
    end

    def create
        @sc=SchoolClass.create(school_class_params)
        @sc.save
        redirect_to school_class_path(@sc)
    end

    def show
        @school_class=SchoolClass.find(params[:id])
    end

    def edit
        @school_class=SchoolClass.find(params[:id])
    end

    def update
        @sc=SchoolClass.find(params[:id])
        @sc.update(school_class_params)
        redirect_to school_class_path(@sc)
    end

    private

    private

    def school_class_params
        params.require(:school_class).permit(:title, :room_number)
    end

end