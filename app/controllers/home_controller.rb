class HomeController < ApplicationController
  require 'rubygems'
  require 'nokogiri'
  require 'open-uri'
  require 'json'

  def index
    @courses = Course.all
  end
end
