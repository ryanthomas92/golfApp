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
      city_name = a.text
      @cities_array.push(city_name)
    end
    @cities_array.each do |el|
      puts el
      p "this is ELLLL"
      city = Course.find_or_create_by(city: el)
    end
  end
end
