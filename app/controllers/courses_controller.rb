class CoursesController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  require 'json'

  def index
    @courses = Course.all
    @course = Course.new
  end

  def new
    @course = Course.new
  end

  def search
    @courses = Course.all
    if params[:city]
      @courses = Course.search(params[:city])
    else
      @courses = Course.all
    end
    puts params
  end

  def create
    @course = Course.create(course_params)
    if @course.save
      redirect_to @course
    else
      redirect_to '/'
    end
  end

  def show
    @course = Course.find_by_id(params[:id])
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to '/'
  end

  private

  def course_params
    params.require(:course).permit(:name, :city)
  end

end
