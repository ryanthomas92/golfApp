class HomeController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  def index
    page = Nokogiri::HTML(open("http://www.thegolfcourses.net/golfcourses/NJ/NewJersey.htm"))
    @courses = page.css('li a')
    course_array = []
    @courses.map do |a|
      course_name = a.text
      course_array.push(course_name)
    end
  end
end
