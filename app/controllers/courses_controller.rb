class CoursesController < ApplicationController

  def index
    @course = Course.all
  end

  def components
    @courses = Course.all
  end

  def practices

  end

  def packages

  end

  def templates

  end

  def plus_developer

  end

  def show
    @course = Course.find(params[:id])
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    @course.user = current_user
    if @course.save!
      redirect_to course_path(@course)
    else
      render :new
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def course_params
    params.require(:course).permit(:name, :description, :summary)
  end

end
