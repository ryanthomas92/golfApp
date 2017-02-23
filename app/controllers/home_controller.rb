class HomeController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  require 'json'

  def index
    page = Nokogiri::HTML(open("http://www.thegolfcourses.net/golfcourses/NJ/NewJersey.htm"))
    cities = page.css('ol a')
    @cities_array = []
    cities.map do |a|
      course_name = a.text
      @cities_array.push(course_name)
    end
  end
end
