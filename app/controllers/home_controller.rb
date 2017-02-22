class HomeController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'

  def index
    page = Nokogiri::HTML(open("http://www.thegolfcourses.net/golfcourses/NJ/NewJersey.htm"))
    @courses = page.css('li a')
  end
end
