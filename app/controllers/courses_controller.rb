class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :show, :update, :destroy]

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
    @course.user = current_user
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
    @course.update(course_params)
    redirect_to course_path(@course)
  end

  def destroy

  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :summary)
  end

end
