class HomeController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  require 'json'

  def index
    @courses = Course.all
    @course = Course.new
  end

  def new
  end
end
