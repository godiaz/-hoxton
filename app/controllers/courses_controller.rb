class CoursesController < ApplicationController
  before_action :set_course, only: [:edit, :show, :update, :destroy]

  def index
    @course = Course.all
  end

  def components
    @courses = Course.joins(:category).where("categories.name = 'Components'")
  end

  def practices
    @courses = Course.joins(:category).where("categories.name = 'Practices'")
  end

  def packages
    @courses = Course.joins(:category).where("categories.name = 'Packages'")
  end

  def templates
    @courses = Course.joins(:category).where("categories.name = 'Templates'")
  end

  def plus_developer
    @courses = Course.joins(:category).where("categories.name = 'Plus Developer'")
  end

  def show
    @course.user = current_user
  end

  def new
    @course = Course.new
    @course.build_category
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
    @course.destroy
    redirect_to courses_path
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :description, :summary, category_attributes: [:name, :main_programming_language, :secondary_programming_language])
  end

end
